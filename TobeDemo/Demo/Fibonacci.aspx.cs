using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Demo
{
    public partial class Fibonacci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string values = ""; string rawValues = "";
                for (int i = 0; i <= int.Parse(FibBox.Text); i++)
                {
                    if (i % 10 == 1) values += i + "st value=" + fibonacciR(i) + ", ";
                    else if (i % 10 == 2) values += i + "nd value=" + fibonacciR(i) + ", ";
                    else if (i % 10 == 3) values += i + "rd value=" + fibonacciR(i) + ", ";
                    else values += i + "th value=" + fibonacciR(i) + ", ";
                    rawValues += fibonacciR(i) + ", ";
                }

                SubmitLabel.CssClass = "pass";
                SubmitLabel.Text = "<u><strong>Raw Values:</strong></u> " + rawValues.Remove(rawValues.Length - 2) + ".<br/><br/><u><strong>Expatiated:</strong></u> " + values.Remove(values.Length - 2) + ".";
            }
            catch (Exception ex)
            {
                SubmitLabel.CssClass = "error";
                SubmitLabel.Text = "Error: " + ex.Message + "<br />Error sub-class: " + ex.GetType();
            }
        }

        //Using recursion to test data structure and alorithm on afibonacci sequence
        //Visually simple but computationally complex
        public int fibonacciR(int a)
        {
            if (a == 0) return 0;
            if (a == 1 || a == 2) return 1;
            return fibonacciR(a - 1) + fibonacciR(a - 2);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string values = ""; string rawValues = "";
                for (int i = 0; i <= int.Parse(FibBox2.Text); i++)
                {
                    if (i % 10 == 1) values += i + "st value=" + fibonacciI(i) + ", ";
                    else if (i % 10 == 2) values += i + "nd value=" + fibonacciI(i) + ", ";
                    else if (i % 10 == 3) values += i + "rd value=" + fibonacciI(i) + ", ";
                    else values += i + "th value=" + fibonacciI(i) + ", ";
                    rawValues += fibonacciI(i) + ", ";
                }

                SubmitLabel2.CssClass = "pass";
                SubmitLabel2.Text = "<u><strong>Raw Values:</strong></u> " + rawValues.Remove(rawValues.Length - 2) + ".<br/><br/><u><strong>Expatiated:</strong></u> " + values.Remove(values.Length - 2) + ".";
            }
            catch (Exception ex)
            {
                SubmitLabel2.CssClass = "error";
                SubmitLabel2.Text = "Error: " + ex.Message + "<br />Error sub-class: " + ex.GetType();
            }
        }

        //Using iteration to test data structures and algorithm on fibonacci sequence
        //visually complex but computatonally simple
        public int fibonacciI(int a)
        {
            if (a == 0) return 0;
            if (a == 1 || a == 2) return 1;
            int fn = 1; int f1 = 1; int f2 = 1;
            for (int i = 3; i <= a; i++)
            {
                fn = f2 + f1;
                f1 = f2;
                f2 = fn;
            }
            return fn;
        }
    }
}