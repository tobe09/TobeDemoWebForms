using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Demo
{
    public partial class PrimeRange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValuesButton_Click(object sender, EventArgs e)
        {
            try
            {
                Primes prime = new Primes();
                ValuesLabel.Text = prime.primeNumbers(int.Parse(FirstBox.Text), int.Parse(SecondBox.Text));
            }
            catch (Exception ex)
            {
                ValuesLabel.Text = "Error: " + ex.Message + "<br/>Please enter only integers i.e. whole number";
                ValuesLabel.Text += "<br/>ValuesLabel at Server became <em><i>" + ValuesLabel.ClientID.ToString() + "</i></em> at Client(Browser).";
            }
        }
    }
}