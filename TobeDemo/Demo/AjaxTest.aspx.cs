using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Demo
{
    public partial class AjaxTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListTech.Visible = false;
            ListSci.Visible = false;
            ListLang.Visible = false;
            if (ListFac.SelectedIndex == 0) ListTech.Visible = true;
            if (ListFac.SelectedIndex == 1) ListSci.Visible = true;
            if (ListFac.SelectedIndex == 2) ListLang.Visible = true;
        }

        protected void ListFac_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListFac.SelectedIndex == 0)
            {
                ListTech.Visible = true;
                ListSci.Visible = false;
                ListLang.Visible = false;
            }
            else if (ListFac.SelectedIndex == 1)
            {
                ListTech.Visible = false;
                ListSci.Visible = true;
                ListLang.Visible = false;
            }
            else if (ListFac.SelectedIndex == 2)
            {
                ListTech.Visible =false;
                ListSci.Visible = false;
                ListLang.Visible = true;
            }
            else
            {
                ListTech.Visible = false;
                ListSci.Visible = false;
                ListLang.Visible = false;
            }
        }

        protected void Display_Click(object sender, EventArgs e)
        {
            string dept = "";
            if (ListFac.SelectedIndex == 0) dept = ListTech.SelectedValue;
            else if (ListFac.SelectedIndex == 1) dept = ListSci.SelectedValue;
            else if (ListFac.SelectedIndex == 2) dept = ListLang.SelectedValue;
            else dept = "Impossible";
            LabelFacDept.Text = string.Format("My faculty is: {0}.<br/>My department is: {1}.", ListFac.SelectedValue, dept);
        }

        protected void TimeButton_Click(object sender, EventArgs e)
        {
            TimeLabel.Text = "(After thread slept for 3 seconds)The date and time is: " + System.DateTime.Now.ToString();
            System.Threading.Thread.Sleep(3000); //to see the UpdateProgress message
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            TimerLabel.Text = System.DateTime.Now.ToString();
        }
    }
}