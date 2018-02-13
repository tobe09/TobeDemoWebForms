Imports System.Runtime.CompilerServices

Partial Class Demos_Events
  Inherits BasePage

  Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    WriteMessage()
  End Sub

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    WriteMessage()
  End Sub

  Protected Sub GridView1_Sorted(sender As Object, e As EventArgs) Handles GridView1.Sorted
    WriteMessage()
  End Sub

  Protected Sub GridView1_Sorting(sender As Object, e As GridViewSortEventArgs) Handles GridView1.Sorting
    WriteMessage()
  End Sub

  Protected Sub GridView1_RowCreated(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowCreated
    WriteMessage()
  End Sub

  Protected Sub GridView1_DataBinding(sender As Object, e As EventArgs) Handles GridView1.DataBinding
    WriteMessage()
  End Sub

  Protected Sub GridView1_DataBound(sender As Object, e As EventArgs) Handles GridView1.DataBound
    WriteMessage()
  End Sub

  Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
    WriteMessage()
  End Sub

  Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting
    WriteMessage()
  End Sub

  Protected Sub Page_PreRenderComplete(sender As Object, e As EventArgs) Handles Me.PreRenderComplete
    WriteMessage("Page_PreRenderComplete<br />------------")
  End Sub

  Private Sub WriteMessage(<CallerMemberName> Optional handlerName As String = "")
    If Page.IsPostBack Then
      PostBack.Text &= handlerName & "<br />"
    Else
      NoPostBack.Text &= handlerName & "<br />"
    End If
  End Sub
End Class
