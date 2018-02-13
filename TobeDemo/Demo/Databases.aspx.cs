using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Demo
{
    public partial class Databases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = DataClass.table("Select * from "+NameBox.Text);  //App_Code is the sub-folder
                string s = "<div style=\"font-size: 25px; text-align:center; color:blue;\">The Table <strong>" + NameBox.Text;
                s += "</strong> is shown below</div><br/><table style=\"width:960px\"><tr>";
                for (int i = 0; i < dt.Columns.Count;i++ ) { s += "<td><strong>" + dt.Columns[i].ColumnName.ToString() + "<strong></td>"; }
                s += "</tr>";
                foreach (DataRow row in dt.Rows)
                {
                    s += "<tr>";
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        s += "<td>" + row[i] + "</td>";
                    }
                    s += "</tr>";
                }
                s += "</table>";
                TableLabel.Text = s;
                div1.Visible = true;
                InfoLabel.CssClass = "success";
                InfoLabel.Text = "Successful";
            }
            catch (Exception ex) { InfoLabel.CssClass = "alert"; InfoLabel.Text = "Error: " + ex.Message; }
        }
    }
}