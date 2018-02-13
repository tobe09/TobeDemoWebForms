﻿Partial Class Demos_ListControls
  Inherits System.Web.UI.Page

  Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    Label1.Text = "In the DDL you selected " & DropDownList1.SelectedValue & "<br />"
    For Each item As ListItem In CheckBoxList1.Items
      If item.Selected = True Then
        Label1.Text &= "In the CBL you selected " & item.Value & "<br />"
      End If
    Next
  End Sub
End Class
