<%@ Application Language="C#" %>
<%@ Import Namespace="System.Net.Mail" %>
<script RunAt="server">

  void Application_Start(object sender, EventArgs e)
  {
    // Code that runs on application startup
    RouteConfig.RegisterRoutes(System.Web.Routing.RouteTable.Routes);
    ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
      new ScriptResourceDefinition
      {
        Path = "~/Scripts/jquery-2.0.3.min.js"
      }
    );
  }

  void Application_End(object sender, EventArgs e)
  {
    //  Code that runs on application shutdown
  }

  void Application_Error(object sender, EventArgs e)
  {
    // Code that runs when an unhandled error occurs
    if (HttpContext.Current.Server.GetLastError() != null)
    {
      Exception myException = HttpContext.Current.Server.GetLastError().GetBaseException();
      string mailSubject = "Error in page " + Request.Url.ToString();
      string message = string.Empty;
      message += "<strong>Message</strong><br />" + myException.Message + "<br />";
      message += "<strong>Stack Trace</strong><br />" + myException.StackTrace + "<br />";
      message += "<strong>Query String</strong><br />" + Request.QueryString.ToString() + "<br />";
      MailMessage myMessage = new MailMessage("you@example.com", "you@example.com", mailSubject, message);
      myMessage.IsBodyHtml = true;
      SmtpClient mySmtpClient = new SmtpClient();
      mySmtpClient.Send(myMessage);
    }
  }

  void Session_Start(object sender, EventArgs e)
  {
    // Code that runs when a new session is started
  }

  void Session_End(object sender, EventArgs e)
  {
    // Code that runs when a session ends. 
    // Note: The Session_End event is raised only when the sessionstate mode
    // is set to InProc in the Web.config file. If session mode is set to StateServer 
    // or SQLServer, the event is not raised.
  }
</script>
