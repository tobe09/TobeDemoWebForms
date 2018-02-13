﻿Partial Class Reviews_All
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Using myEntities As New PlanetWroxEntities()
      Dim authorizedReviews = From review In myEntities.Reviews
      Where review.Authorized = True
      Order By review.CreateDateTime Descending
      Select review
      Repeater1.DataSource = authorizedReviews.ToList()
      Repeater1.DataBind()
    End Using
  End Sub
End Class
