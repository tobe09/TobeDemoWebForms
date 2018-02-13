using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Controls
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (string.IsNullOrEmpty(PhoneBox.Text) && string.IsNullOrEmpty(BusinessBox.Text))
            { args.IsValid = false; }
            else args.IsValid = true;
        }
    }
}