using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions; //for regex
using System.Net.Mail; //important import

namespace TobeDemo.Controls
{
    public partial class MailForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MessageButton_Click(object sender, EventArgs e)
        {

            try
            {
                string info = string.Format("Username: {0}.\t\tEmail Address: {1}\r\nSubject: {2}\r\n\r\n", UsernameBox.Text, EmailBox.Text, SubjectBox.Text);
                MailMessage myMessage = new MailMessage();
                myMessage.Body = info + MessageBox.Text;
                //myMessage.From = new MailAddress(EmailBox.Text, UsernameBox.Text); !Unneccesary
                myMessage.To.Add(new MailAddress("Philipbradley09@gmail.com", "Phil"));
                if (CheckBox1.Checked == true) myMessage.To.Add(new MailAddress(EmailBox.Text, UsernameBox.Text));
                SmtpClient mySender = new SmtpClient();
                mySender.Send(myMessage);
                SentLabel.CssClass = "pass";
                SentLabel.Text = "Message Sent";
            }
            catch (Exception ex)
            {
                SentLabel.CssClass = "alert";
                SentLabel.Text = "Error: " + ex.Message;
            }
        }
    }
}