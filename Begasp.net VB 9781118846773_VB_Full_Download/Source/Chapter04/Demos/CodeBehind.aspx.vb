﻿Partial Class Demos_CodeBehind
  Inherits System.Web.UI.Page

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Label1.Text = "Hello World; the time is now " & DateTime.Now.ToString()
  End Sub
End Class
