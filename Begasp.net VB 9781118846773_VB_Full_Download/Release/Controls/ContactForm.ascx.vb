﻿Imports System.IO ' Provides access to the File class for reading the file
Imports System.Net.Mail ' Provides access to the various mail related classes

Partial Class Controls_ContactForm
  Inherits System.Web.UI.UserControl

  Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
    If Not String.IsNullOrEmpty(PhoneHome.Text) OrElse Not String.IsNullOrEmpty(PhoneBusiness.Text) Then
      args.IsValid = True
    Else
      args.IsValid = False
    End If
  End Sub

  Protected Sub SendButton_Click(sender As Object, e As EventArgs) Handles SendButton.Click
    If Page.IsValid Then
      Dim fileName As String = Server.MapPath("~/App_Data/ContactForm.txt")
      Dim mailBody As String = File.ReadAllText(fileName)

      mailBody = mailBody.Replace("##Name##", Name.Text)
      mailBody = mailBody.Replace("##Email##", EmailAddress.Text)
      mailBody = mailBody.Replace("##HomePhone##", PhoneHome.Text)
      mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusiness.Text)
      mailBody = mailBody.Replace("##Comments##", Comments.Text)

      Try
        Dim myMessage As MailMessage = New MailMessage()
        myMessage.Subject = "Response from web site"
        myMessage.Body = mailBody

        myMessage.From = New MailAddress(AppConfiguration.FromAddress, AppConfiguration.FromName)
        myMessage.To.Add(New MailAddress(AppConfiguration.ToAddress, AppConfiguration.ToName))
        myMessage.ReplyToList.Add(New MailAddress(EmailAddress.Text))

        Dim mySmtpClient As SmtpClient = New SmtpClient()
        mySmtpClient.Send(myMessage)

        MessageSentPara.Visible = True
        FormTable.Visible = False
      Catch ex As SmtpException
        Message.Text = "An error occurred while sending your e-mail. Please try again."
      Finally
        Message.Visible = True
      End Try

    End If
  End Sub
End Class
