using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TobeDemo.Controls
{
    public partial class Banner : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (displayDirection)
            {
                case Direction.horizontal:
                    HorizontalPanel.Visible = true;
                    VerticalPanel.Visible = false;
                    HorizontalLink.HRef = NavigateUrl;
                    break;
                case Direction.vertical:
                    HorizontalPanel.Visible = false;
                    VerticalPanel.Visible = true;
                    VerticalLink.HRef = NavigateUrl;
                    break;
                default:
                    HorizontalPanel.Visible = true;
                    VerticalPanel.Visible = true;
                    HorizontalLink.HRef = NavigateUrl;
                    VerticalLink.HRef = NavigateUrl;
                    break;
            }
        }

        public Direction displayDirection
        { 
            get
            {
                object _dir=ViewState["displayDirection"];
                if (_dir != null) return (Direction)_dir;
                else return Direction.horizontal;
            }
            set { ViewState["displayDirection"] = value; this.Page_Load(new object() , new EventArgs()); }
        }

        public string NavigateUrl
        {
            get
            {
                object _nav=ViewState["NavigateUrl"];
                if (_nav != null) return (string)_nav;
                else return "http://www.google.com";
            }
            set { ViewState["NavigateUrl"] = value; this.Page_Load(new object(), new EventArgs()); }
        }
    }
}