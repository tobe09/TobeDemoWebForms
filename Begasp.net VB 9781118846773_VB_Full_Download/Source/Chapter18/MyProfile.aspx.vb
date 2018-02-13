Partial Class _MyProfile
  Inherits BasePage

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    If Not Page.IsPostBack Then
      FirstName.Text = Profile.FirstName
      LastName.Text = Profile.LastName
      DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString()
      Bio.Text = Profile.Bio
    End If
  End Sub

  Protected Sub SaveButton_Click(sender As Object, e As EventArgs) Handles SaveButton.Click
    If Page.IsValid Then
      Profile.FirstName = FirstName.Text
      Profile.LastName = LastName.Text
      Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text)
      Profile.Bio = Bio.Text

      ' Clear the existing list
      Profile.FavoriteGenres.Clear()
      ' Now add the selected genres
      For Each myItem As ListItem In PreferredGenres.Items
        If myItem.Selected Then
          Profile.FavoriteGenres.Add(Convert.ToInt32(myItem.Value))
        End If
      Next
    End If
  End Sub

  Public Function PreferredGenres_GetData() As IEnumerable(Of Genre)
    Using myEntities As New PlanetWroxEntities()
      Return (From genre In myEntities.Genres
             Order By genre.Name
             Select genre).ToList()
    End Using
  End Function

  Protected Sub PreferredGenres_DataBound(sender As Object, e As EventArgs) Handles PreferredGenres.DataBound
    For Each myItem As ListItem In PreferredGenres.Items
      Dim currentValue As Integer = Convert.ToInt32(myItem.Value)
      If Profile.FavoriteGenres.Contains(currentValue) Then
        myItem.Selected = True
      End If
    Next
  End Sub
End Class
