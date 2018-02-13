Partial Class About_AboutUs
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    If Not Page.IsPostBack Then
      Banner2.NavigateUrl = "http://imar.spaanjaars.com"
    End If
  End Sub
End Class
