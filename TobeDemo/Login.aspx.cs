using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

namespace TobeDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie loginCookie = Request.Cookies["lastLogin"];
            if (loginCookie != null) LastLogin.Text = loginCookie.Value.ToString();
            else LastLogin.Text = "The last login from this system has not been recorded";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (UsernameBox.Text == "" && PasswordBox.Text == "")
                { throw new Exception("Please enter your username and password"); }
                if (UsernameBox.Text == "") throw new Exception("Please enter your username");
                if (PasswordBox.Text == "") throw new Exception("Please enter your password");
                string dataSource = ConfigurationManager.ConnectionStrings["TobeDemoConnectionString"].ConnectionString;
                using (OracleConnection con = new OracleConnection(dataSource))
                {
                    con.Open();
                    //check information against database
                    string passwordQuery = string.Format("SELECT password, role_id FROM tobedemo.users WHERE username='{0}' OR email='{1}'", UsernameBox.Text.ToUpper(), UsernameBox.Text.ToUpper());
                    OracleCommand passwordCmd = new OracleCommand(passwordQuery, con);
                    passwordCmd.CommandType = CommandType.Text;
                    OracleDataReader dr = passwordCmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        string password = TobeDemoClass.Decrypt(dr.GetString(0).ToString());
                        if (password == PasswordBox.Text)
                        {
                            Response.Cookies["lastLogin"].Value = "Your last successful login from this device was on: " + DateTime.Now.ToString();
                            Response.Cookies["lastLogin"].Expires = DateTime.Now.AddDays(1);  //HttpCookie loginCookie = new HttpCookie("lastLogin"); //same
                            Session["username"] = UsernameBox.Text.ToUpper();
                            Session["role"] = dr.GetString(1).ToString();
                            Response.Redirect("~/LoggedIn.aspx");  //Server.TransferRequest("/LoginRedirect.aspx");  //same
                        }
                        else ErrorLabel.Text = "Check your password";
                    }
                    else ErrorLabel.Text = "User does not exist";
                }
            }
            catch (Exception ex)
            {
                ErrorLabel.Text = "" + ex.Message;
            }
        }
    }
}