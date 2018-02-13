using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) Banner1.displayDirection = Direction.vertical;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Banner1.displayDirection == Direction.vertical)
            {
                Banner1.displayDirection = Direction.horizontal;
                Label1.CssClass = "success";
                Label1.Text = "Direction is horizontal";
            }
            else
            {
                Banner1.displayDirection = Direction.vertical;
                Label1.CssClass = "success";
                Label1.Text = "Direction is vertical";
            } 
        }
    }
}