Partial Class Demos_UpdatePanel
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Label1.Text = System.DateTime.Now.ToString()
  End Sub
End Class
