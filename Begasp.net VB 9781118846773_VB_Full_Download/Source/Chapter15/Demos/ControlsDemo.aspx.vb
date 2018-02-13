Partial Class Demos_ControlsDemo
  Inherits BasePage

  Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
    Result.Text = "Your name is " & YourName.Text
  End Sub
End Class
