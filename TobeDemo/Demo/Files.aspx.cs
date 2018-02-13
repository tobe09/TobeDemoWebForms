using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;

namespace TobeDemo.Demo
{
    public partial class Files : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SavedButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (NameBox.Text != "" && EmailBox.Text != "" && PhoneBox.Text != "" && CommentBox.Text != "")
                {
                    string fileName = Server.MapPath("~/App_Data/TCeeDemoFile.txt");
                    string content = string.Format("Name: {0}\r\nEmail Address: {1}\r\nPhone Number: {2}\r\n\r\nComments: {3}\r\n\r\n\r\n", NameBox.Text, EmailBox.Text, PhoneBox.Text, CommentBox.Text);
                    File.AppendAllText(fileName, content);
                    SavedLabel.Text = "Message saved!";
                }
                else
                {
                    if (NameBox.Text == "") SavedLabel.Text = "Enter a valid name.";
                    else if (EmailBox.Text == "") SavedLabel.Text = "Enter a valid E-mail.";
                    else if (PhoneBox.Text == "") SavedLabel.Text = "Enter a valid Phone Number.";
                    else if (CommentBox.Text == "") SavedLabel.Text = "Enter your comment";
                }
            }
            catch (Exception ex)
            {
                SavedLabel.Text = "Error: " + ex.Message;
            }
        }
    }
}