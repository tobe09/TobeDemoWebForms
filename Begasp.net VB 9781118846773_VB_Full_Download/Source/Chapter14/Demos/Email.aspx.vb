Imports System.Net.Mail

Partial Class Demos_Email
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Dim myMessage As MailMessage = New MailMessage()
    myMessage.Subject = "Test Message"
    myMessage.Body = "Hello world, from Planet Wrox"
    myMessage.From = New MailAddress("you@example.com", "Sender Name")
    myMessage.To.Add(New MailAddress("you@example.com", "Receiver Name"))

    Dim mySmtpClient As SmtpClient = New SmtpClient()
    mySmtpClient.Send(myMessage)
  End Sub
End Class
