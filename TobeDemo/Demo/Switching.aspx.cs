using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Demo
{
    public partial class Switching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DiscountButton_Click(object sender, EventArgs e)
        {
            string entry = EntryBox.Text;
            string day = "";
            int discount = 0;
            switch (entry)
            {
                case "1":
                    day = "Monday";
                    discount = 10;
                    break;
                case "2":
                    day = "Tuesday";
                    discount = 20;
                    break;
                case "3":
                    day = " Wednesday";
                    discount = 30;
                    break;
                case "4":
                    day = "Thursday";
                    discount = 40;
                    break;
                case "5":
                    day = "Friday";
                    discount = 50;
                    break;
                case "6":
                    day = "Saturday";
                    discount = 60;
                    break;
                case "7":
                    day = "Sunday";
                    discount = 70;
                    break;
                default:
                    day = "Impossible";
                    break;
            }
            if (entry == "1" || entry == "2" || entry == "3" || entry == "4" || entry == "5" || entry == "6" || entry == "7") 
            {
                DiscountLabel.Text = String.Format("Today is {0}<br/>Your discount is {1}%", day, discount);
            }
            else
            {
                DiscountLabel.Text = "Please enter a number from 1 to 7 for Monday to Sunday respectively";
            }
        }

        protected void DropDiscountButton_Click(object sender, EventArgs e)
        {
            int discount = 0;
            switch (DayList.SelectedIndex)
            {
                case 0:
                    discount = 10;
                    break;
                case 1:
                    discount = 20;
                    break;
                case 2:
                    discount = 30;
                    break;
                case 3:
                    discount = 40;
                    break;
                case 4:
                    discount = 50;
                    break;
                case 5:
                    discount = 60;
                    break;
                case 6:
                    discount = 70;
                    break;
                default:
                    discount = 0;
                    break;
            }
            DropDiscountLabel.Text = String.Format("Today is {0}<br/>Your discount is {1}%", DayList.SelectedValue, discount);
        }
    }
}