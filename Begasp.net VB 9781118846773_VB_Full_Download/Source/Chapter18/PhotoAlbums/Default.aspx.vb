Partial Class PhotoAlbums_Default
  Inherits BasePage

  Dim entities As New PlanetWroxEntities()

  Public Function PhotoAlbumList_GetData() As IEnumerable(Of PhotoAlbum)
    Return From p In entities.PhotoAlbums
    Order By p.Id
    Select p
  End Function

  Public Function ListView1_GetData() As IQueryable(Of Picture)
    Dim photoAlbumId As Integer = Convert.ToInt32(PhotoAlbumList.SelectedValue)
    Return From p In entities.Pictures
          Where p.PhotoAlbumId = photoAlbumId
          Order By p.Id
          Select p
  End Function

  Protected Sub PhotoAlbumList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles PhotoAlbumList.SelectedIndexChanged
    ListView1.DataBind()
  End Sub

  Protected Sub ListView1_DataBound(sender As Object, e As EventArgs) Handles ListView1.DataBound
    If Not String.IsNullOrEmpty(PhotoAlbumList.SelectedValue) Then
      Dim photoAlbumId As Integer = Convert.ToInt32(PhotoAlbumList.SelectedValue)
      Using myEntities As PlanetWroxEntities = New PlanetWroxEntities()
        Dim photoAlbumOwner As String = (From p In myEntities.PhotoAlbums
        Where p.Id = photoAlbumId
        Select p.UserName).Single()
        If User.Identity.IsAuthenticated And (User.Identity.Name = photoAlbumOwner Or User.IsInRole("Managers")) Then
          EditLink.NavigateUrl = String.Format("~/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", PhotoAlbumList.SelectedValue)
          EditLink.Visible = True
        Else
          EditLink.Visible = False
        End If

        If Not String.IsNullOrEmpty(photoAlbumOwner) Then
          Dim ownerProfile As ProfileCommon = Profile.GetProfile(photoAlbumOwner)
          UserNameLabel.Text = photoAlbumOwner
          BioLabel.Text = ownerProfile.Bio
          PhotoAlbumDetails.Visible = True
        Else
          PhotoAlbumDetails.Visible = False
        End If
      End Using
    Else
      EditLink.Visible = False
    End If
  End Sub
End Class
