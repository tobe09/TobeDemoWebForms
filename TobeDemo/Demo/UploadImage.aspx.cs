using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

namespace TobeDemo.Demo
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SaveLabel.Text = "";
            InfoLabel.Text = "";
            InfoLabel2.Text = "";
            InfoLabel3.Text = "";
            InfoLabel4.Text = "";
            DeleteLabel.Text = "";
            Image1.ImageUrl = "";
            Image4.ImageUrl = "";
            //Will wwork using javascript method clearInfo(). Its drawback is that it overrides all changes
            //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "myJsFnKey", "clearInfo();", true);
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            ((Label)Master.FindControl("caller")).Text = "<script>shout();</script>";    //test masterpage behaviour and calling javascript
            try
            {
                if (FileUpload1.HasFile && UsernameBox.Text != "")
                {
                    if (!(FileUpload1.FileName.EndsWith(".gif") || FileUpload1.FileName.EndsWith(".jpg") || FileUpload1.FileName.EndsWith(".bmp") || FileUpload1.FileName.EndsWith(".png")))
                    {
                        throw new Exception("invalid file format. Please select a picture!");
                    }
                    if (FileUpload1.PostedFile.ContentLength > 1048576)
                    {
                        throw new Exception("File size exceeds 1MB!");
                    }
                    string path = @"~\Uploads\";
                    string savedPath = Server.MapPath(path) + FileUpload1.FileName; //better for saving into IIS
                    FileUpload1.SaveAs(savedPath);
                    ////To test image dimensions
                    //System.Drawing.Image i = System.Drawing.Image.FromFile(savedPath);
                    //if (i.PhysicalDimension.Height != 200 || i.PhysicalDimension.Width != 200)
                    //{
                    //    FileUpload1.Dispose();
                    //    i.Dispose();
                    //    File.Delete(savedPath);
                    //    throw new Exception("Incompatible dimensions. <br>Image must be 200px by 200px!");
                    //}
                    string constr = ConfigurationManager.ConnectionStrings["TobeDemoConnectionString"].ConnectionString;
                    using (OracleConnection con = new OracleConnection(constr))
                    {
                        con.Open();
                        string chkQuery = "SELECT username FROM tobedemo.images WHERE username='" + UsernameBox.Text.ToUpper() + "'";
                        OracleCommand chkcmd = new OracleCommand(chkQuery, con);
                        OracleDataReader dr = chkcmd.ExecuteReader();
                        if (dr.HasRows) throw new Exception("Your already have a picture");
                        string query = "INSERT INTO tobedemo.images(username,pic_address,picture) VALUES(:name,:pic_ad,:pic)";
                        OracleCommand cmd = new OracleCommand(query, con);
                        cmd.Parameters.AddWithValue("name", UsernameBox.Text.ToUpper());
                        cmd.Parameters.AddWithValue("pic_ad", path + FileUpload1.FileName);
                        cmd.Parameters.AddWithValue("pic", FileUpload1.FileBytes);
                        cmd.ExecuteNonQuery();
                    }
                    SaveLabel.Text = "File name:" + FileUpload1.FileName + ".<br/>";
                    SaveLabel.Text += "Content length/size: " + (FileUpload1.PostedFile.ContentLength / 1024).ToString("N0") + "kB.<br>";
                    SaveLabel.Text += "Content type: " + FileUpload1.PostedFile.ContentType + ".";
                    InfoLabel.CssClass = "succes";
                    InfoLabel.Text = "Successful";
                }
                else
                {
                    InfoLabel.CssClass = "alert";
                    if (!FileUpload1.HasFile && UsernameBox.Text == "") InfoLabel.Text = "Please enter your username and select a file";
                    else if (!FileUpload1.HasFile) InfoLabel.Text = "Please select a file";
                    else if (InfoLabel.Text == "") InfoLabel.Text = "Please enter your username";
                    else InfoLabel.Text = "Logically Impossible";
                }
            }
            catch (Exception ex)
            {
                InfoLabel.CssClass = "alert";
                InfoLabel.Text = "Error: " + ex.Message;
            }
        }

        protected void RetrieveButton_Click(object sender, EventArgs e)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["TobeDemoConnectionString"].ConnectionString;
                using (OracleConnection con = new OracleConnection(constr))
                {
                    con.Open();
                    string query = "SELECT pic_address FROM tobedemo.images WHERE username='" + UsernameBox2.Text.ToUpper() + "'";
                    OracleCommand cmd = new OracleCommand(query, con);
                    OracleDataReader dr = cmd.ExecuteReader();
                    if (dr.Read() && UsernameBox2.Text != "")
                    {
                        Image1.Visible = true;
                        Image1.ImageUrl = dr.GetString(0).ToString();
                        InfoLabel2.CssClass = "success";
                        InfoLabel2.Text = "Successful";
                    }
                    else
                    {
                        InfoLabel2.CssClass = "alert";
                        if (UsernameBox2.Text == "") InfoLabel2.Text = "Please enter your username";
                        else InfoLabel2.Text = "You do not have a picture on our database";
                    }
                }
            }
            catch (Exception ex)  //not expected
            {
                InfoLabel2.CssClass = "errorBig";
                InfoLabel2.Text = "Error: " + ex.Message;
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["TobeDemoConnectionString"].ConnectionString;
                using (OracleConnection con = new OracleConnection(constr))
                {
                    con.Open();
                    string query = "SELECT pic_address FROM tobedemo.images WHERE username='" + UsernameBox3.Text.ToUpper() + "'";
                    OracleCommand cmd = new OracleCommand(query, con);
                    OracleDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows && UsernameBox3.Text != "" && DeleteCheckBox.Checked==true)
                    {
                        dr.Read();
                        File.Delete(Server.MapPath(dr.GetString(0).ToString()));
                        string delQuery = "DELETE FROM tobedemo.images WHERE username='" + UsernameBox3.Text.ToUpper() + "'";
                        OracleCommand delCmd = new OracleCommand(delQuery, con);
                        delCmd.ExecuteNonQuery();
                        DeleteLabel.Text = "Your picture has been deleted";
                        InfoLabel3.CssClass = "success";
                        InfoLabel3.Text = "Successful";
                    }
                    else
                    {
                        InfoLabel3.CssClass = "alert";
                        if (UsernameBox3.Text == "" && DeleteCheckBox.Checked == false)
                        { InfoLabel3.Text = "Please enter your username and check the validation box"; }
                        else if (UsernameBox3.Text == "") InfoLabel3.Text = "Please enter your username";
                        else if (DeleteCheckBox.Checked == false) InfoLabel3.Text = "Check the validation box to enforce";
                        else InfoLabel3.Text = "You do not have a picture on our database";
                    }
                }
            }
            catch (Exception ex)  //not expected
            {
                InfoLabel3.CssClass = "errorBig";  
                InfoLabel3.Text = "Error: " + ex.Message;
            }
        }

        protected void RetrieveButton4_Click(object sender, EventArgs e)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["TobeDemoConnectionString"].ConnectionString;
                using (OracleConnection con = new OracleConnection(constr))
                {
                    con.Open();
                    string query = "SELECT picture FROM tobedemo.images WHERE username='" + UsernameBox4.Text.ToUpper() + "'";
                    OracleCommand cmd = new OracleCommand(query, con);
                    OracleDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows && UsernameBox4.Text != "")
                    {
                        OracleDataAdapter da = new OracleDataAdapter(query, con);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        byte[] imgByte = (byte[])dt.Rows[0][0];
                        MemoryStream stream = new MemoryStream(imgByte);
                        System.Drawing.Image img = System.Drawing.Image.FromStream(stream);
                        string path = "~/Database Downloads/temp.jpg";
                        img.Save(Server.MapPath(path));
                        Image4.Visible = true;
                        Image4.ImageUrl = path;
                        InfoLabel4.CssClass = "success";
                        InfoLabel4.Text = "Successful";
                    }
                    else
                    {
                        InfoLabel4.CssClass = "alert";
                        if (UsernameBox4.Text == "") InfoLabel4.Text = "Please enter your username";
                        else InfoLabel4.Text = "You do not have a picture on our database"; 
                    }
                }
            }
            catch (Exception ex)  
            {
                InfoLabel4.CssClass = "errorBig";
                InfoLabel4.Text = "Error: " + ex.Message;
            }
        }

        protected void TestDoPostBack(object sender, EventArgs e)
        {
            ((Label)Master.FindControl("caller")).Text = "<script>shoutName('" + nameLblTest.Text + "')</script>";
        }
    }
}