Partial Class Errors_Error404
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Response.Status = "404 Not Found"
    Response.StatusCode = 404
    Response.TrySkipIisCustomErrors = True
  End Sub
End Class
