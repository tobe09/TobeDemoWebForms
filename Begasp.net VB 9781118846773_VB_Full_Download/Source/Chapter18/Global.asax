<%@ Application Language="VB" %>
<%@ Import Namespace="System.Net.Mail" %>
<script RunAt="server">

  Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
    ' Code that runs on application startup
    RouteConfig.RegisterRoutes(System.Web.Routing.RouteTable.Routes)
    ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
      New ScriptResourceDefinition With
          {.Path = "~/Scripts/jquery-2.0.3.min.js"})
  End Sub
    
  Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
    ' Code that runs on application shutdown
  End Sub
        
  Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
    ' Code that runs when an unhandled error occurs
    If HttpContext.Current.Server.GetLastError() IsNot Nothing Then
      Dim myException As Exception = HttpContext.Current.Server.GetLastError().GetBaseException()
      Dim mailSubject As String = "Error in page " & Request.Url.ToString()
      Dim message As String = String.Empty
      message &= "<strong>Message</strong><br />" & myException.Message & "<br />"
      message &= "<strong>Stack Trace</strong><br />" & myException.StackTrace & "<br />"
      message &= "<strong>Query String</strong><br />" & Request.QueryString.ToString() & "<br />"
      Dim myMessage As MailMessage = New MailMessage("you@example.com", "you@example.com", mailSubject, message)
      myMessage.IsBodyHtml = True
      Dim mySmtpClient As SmtpClient = New SmtpClient()
      mySmtpClient.Send(myMessage)
    End If
  End Sub

  Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
    ' Code that runs when a new session is started
  End Sub

  Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
    ' Code that runs when a session ends. 
    ' Note: The Session_End event is raised only when the sessionstate mode
    ' is set to InProc in the Web.config file. If session mode is set to StateServer 
    ' or SQLServer, the event is not raised.
  End Sub
       
</script>
