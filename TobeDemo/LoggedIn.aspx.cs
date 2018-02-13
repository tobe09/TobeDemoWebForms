using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TobeDemo
{
    public partial class LoginRedirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null) Response.Redirect("~/Login.aspx");
            try
            {
                string tableName;
                if (Session["role"].ToString() == "STD") tableName = "Students";
                else if (Session["role"].ToString() == "T_STF") tableName = "Staffs";
                else tableName = "nt_staffs";
                string query = "SELECT * FROM tobedemo." + tableName + " WHERE username='" + Session["username"].ToString()+"'";
                DataTable dt = DataClass.table(query);
                string s = "<div style=\"font-size: 20px; text-align:center; color:blue;\">Welcome <strong>";
                s += Session["username"].ToString().ToUpper() + "</strong></div><br/><br/><br/>";
                s += "<table>";
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (i == 1) continue;
                    s += "<tr><td style=\"width:300px;\">" + dt.Columns[i].ColumnName + "</td><td>" + dt.Rows[0][i] + "</td></tr>";
                }
                s += "</table>";
                dataLabel.Text = s;
                Infolabel.CssClass = "success";
                Infolabel.Text = "You have successfully logged in";
            }
            catch (Exception ex)
            {
                Infolabel.CssClass = "errorBig";
                Infolabel.Text = "Error: " + ex.Message;
            }
        }

        protected void TimeoutButton_Click(object sender, EventArgs e)
        {
        }
    }
}