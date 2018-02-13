Partial Class Errors_OtherErrors
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Response.TrySkipIisCustomErrors = True
  End Sub
End Class
