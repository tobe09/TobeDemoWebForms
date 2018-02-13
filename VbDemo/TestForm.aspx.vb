Public Class TestForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnTest_Click(sender As Object, e As EventArgs) Handles btnTest.Click
        If lblTest.Text = "Empty" Then
            lblTest.Text = "Full"
        Else
            lblTest.Text = "Empty"
        End If
    End Sub

    Private Sub Swap()
        If lblTest.Text = "Empty" Then
            lblTest.Text = "Full"
        Else
            lblTest.Text = "Empty"
        End If
    End Sub
End Class