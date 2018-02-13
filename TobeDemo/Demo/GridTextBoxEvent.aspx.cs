using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TobeDemo.Demo
{
    public partial class GridTextBoxEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "select descrptn \"DESCRIPTION\", SCORE from tobedemo.testgrid";
                DataTable dt = DataClass.table(query);
                dgShowRecord.DataSource = dt;
                dgShowRecord.PageSize = 5;
                dgShowRecord.DataBind();
                if (dgShowRecord.PageCount == 1) dgShowRecord.PagerStyle.Visible = false;
            }
        }

        public bool CheckValues()
        {
            bool status = true;
            if (dgShowRecord.Items.Count > 0)
            {
                for (int i = 0; i < dgShowRecord.Items.Count; i++)
                {
                    int outInteger;
                    status = status && int.TryParse(((TextBox)dgShowRecord.Items[i].FindControl("txtScore")).Text, out outInteger);
                }
            }
            if (!status)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Enter only Numeric Values";
            }
            return status;
        }

        protected void txtScoreTextChanged()
        {
            if (dgShowRecord.Items.Count > 0 && CheckValues())
            {
                int total = 0;
                for (int i = 0; i < dgShowRecord.Items.Count; i++)
                {
                    total += int.Parse(((TextBox)dgShowRecord.Items[i].FindControl("txtScore")).Text);
                }

                if (total == 100)
                {
                    lblMsg.ForeColor = Color.Green;
                    lblMsg.Text = "Total Percentage is Complete -  (" + total + "%)";
                }
                else if (total < 100)
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Total Percentage is Less Than 100% -  (" + total + "%)";
                }
                else
                {
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    lblMsg.Text = "Total Percentage is Greater Than 100 -  (" + total + "%)";
                }
            }
            else if (dgShowRecord.Items.Count <= 0)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "No value found";
            }
        }

        protected void dgShowRecord_ItemCommand(object source, DataGridCommandEventArgs e)  //called for an onClick Event
        {
        }

        protected void txtScore_TextChanged(object sender, EventArgs e)
        {
            txtScoreTextChanged();
        }

        protected void btnNoMethod_Click(object sender, EventArgs e)
        {

        }
    }
}