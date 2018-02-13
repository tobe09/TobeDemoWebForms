Imports Microsoft.VisualBasic
Imports System.Web.Configuration

Public Class AppConfiguration
  Public Shared ReadOnly Property FromAddress() As String
    Get
      Dim result As String = WebConfigurationManager.AppSettings.Get("FromAddress")
      If Not String.IsNullOrEmpty(result) Then
        Return result
      End If
      Throw New Exception("AppSetting FromAddress not found in web.config file.")
    End Get
  End Property

  Public Shared ReadOnly Property FromName() As String
    Get
      Dim result As String = WebConfigurationManager.AppSettings.Get("FromName")
      If Not String.IsNullOrEmpty(result) Then
        Return result
      End If
      Throw New Exception("AppSetting FromName not found in web.config file.")
    End Get
  End Property

  Public Shared ReadOnly Property ToAddress() As String
    Get
      Dim result As String = WebConfigurationManager.AppSettings.Get("ToAddress")
      If Not String.IsNullOrEmpty(result) Then
        Return result
      End If
      Throw New Exception("AppSetting ToAddress not found in web.config file.")
    End Get
  End Property

  Public Shared ReadOnly Property ToName() As String
    Get
      Dim result As String = WebConfigurationManager.AppSettings.Get("ToName")
      If Not String.IsNullOrEmpty(result) Then
        Return result
      End If
      Throw New Exception("AppSetting ToName not found in web.config file.")
    End Get
  End Property

  Public Shared ReadOnly Property SendMailOnError() As Boolean
    Get
      Dim result As String = WebConfigurationManager.AppSettings.Get("SendMailOnError")
      If Not String.IsNullOrEmpty(result) Then
        Return Convert.ToBoolean(result)
      End If
      Throw New Exception( "AppSetting SendMailOnError not found in web.config file.")
    End Get
  End Property
End Class
