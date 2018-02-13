Partial Class Controls_Banner
  Inherits System.Web.UI.UserControl

  Public Property DisplayDirection As Direction

  Public Property NavigateUrl() As String
    Get
      Dim _navigateUrl As Object = ViewState("NavigateUrl")
      If _navigateUrl IsNot Nothing Then
        Return CType(_navigateUrl, String)
      Else
        Return "http://p2p.wrox.com" ' Return a default value
      End If
    End Get
    Set(Value As String)
      ViewState("NavigateUrl") = Value
    End Set
  End Property

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Select Case DisplayDirection
      Case Direction.Horizontal
        HorizontalPanel.Visible = True
        VerticalPanel.Visible = False
        HorizontalLink.HRef = NavigateUrl
      Case Direction.Vertical
        VerticalPanel.Visible = True
        HorizontalPanel.Visible = False
        VerticalLink.HRef = NavigateUrl
    End Select
  End Sub
End Class
