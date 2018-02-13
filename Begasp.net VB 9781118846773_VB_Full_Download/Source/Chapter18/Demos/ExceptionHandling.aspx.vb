Imports System.Net.Mail

Partial Class Demos_ExceptionHandling
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Dim myMessage As MailMessage = New MailMessage()
    myMessage.Subject = "Exception Handling Test"
    myMessage.Body = "Test message body"
    Try
      myMessage.From = New MailAddress("you@example.com")
      myMessage.To.Add(New MailAddress("you@example.com"))
      Dim mySmtpClient As New SmtpClient()
      mySmtpClient.Send(myMessage)
      Message.Text = "Message sent"
    Catch ex As SmtpException
      Message.Text = "An error occurred while sending your e-mail. Please try again."
    End Try
  End Sub
End Class
