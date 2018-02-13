using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TobeDemo.TobeServices;
using TobeDemo.Services;

namespace TobeDemo.Demo
{
    public partial class AsmxServiceRedacted : System.Web.UI.Page
    {
        int outInteger;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMult_Click(object sender, EventArgs e)
        {
            if (int.TryParse(tbxMult1.Text, out outInteger) && int.TryParse(tbxMult2.Text, out outInteger))
            {
                TobeService1SoapClient svc = new TobeService1SoapClient();
                lblMultAns.Text = svc.Multiply(int.Parse(tbxMult1.Text), int.Parse(tbxMult2.Text)) + "";
                lblMultAns.Text += ".&nbsp;" + new NameService().HelloWorld("Tobenna");
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Successful Multiplication";
            }
            else errorMult();
        }

        protected void btnSubs_Click(object sender, EventArgs e)
        {
            if (int.TryParse(tbxSubs1.Text, out outInteger) && int.TryParse(tbxSubs2.Text, out outInteger))
            {
                TobeService1SoapClient svc = new TobeService1SoapClient();
                lblSubsAns.Text = svc.SubstractMathAbs(int.Parse(tbxSubs1.Text), int.Parse(tbxSubs2.Text)) + "";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Successful Substraction";
            }
            else errorSub();
        }

        private void errorMult()
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            if (!int.TryParse(tbxMult1.Text, out outInteger)) lblMsg.Text += "<br/>Please enter an integer in the first text box";
            if (!int.TryParse(tbxMult2.Text, out outInteger)) lblMsg.Text += "<br/>Please enter an integer in the second text box";
        }

        private void errorSub()
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            if (!int.TryParse(tbxSubs1.Text, out outInteger)) lblMsg.Text += "<br/>Please enter an integer in the first text box";
            if (!int.TryParse(tbxSubs2.Text, out outInteger)) lblMsg.Text += "<br/>Please enter an integer in the second text box";
        }

    }
}