using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo
{
    public partial class TestEncryptDecrypt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void EncryptButton_Click(object sender, EventArgs e)
        {
            string encyptedText = TobeDemoClass.Encrypt(ClearTextBox.Text);
            EncryptLabel.Text = "The encrypted value is: " + encyptedText;
            InfoLabel.CssClass = "success";
            InfoLabel.Text = "Successful";
        }

        protected void DecryptButton_Click(object sender, EventArgs e)
        {
            try
            {
                string encyptedText = TobeDemoClass.Decrypt(EncryptTextBox.Text);
                DecryptLabel.Text = "The Decrypted value is: " + encyptedText;
                InfoLabel.CssClass = "success";
                InfoLabel.Text = "Successful";
            }
            catch (Exception ex)
            {
                InfoLabel.CssClass = "errorBig";
                InfoLabel.Text = "Error: " + ex.Message;
            }
        }
    }
}