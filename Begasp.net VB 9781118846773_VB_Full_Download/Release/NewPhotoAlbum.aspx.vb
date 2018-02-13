Partial Class _NewPhotoAlbum
  Inherits BasePage

  Public Sub DetailsView1_InsertItem()
    Dim photoAlbum As New PhotoAlbum()
    TryUpdateModel(photoAlbum)
    If ModelState.IsValid Then
      Using myEntities As New PlanetWroxEntities()
        myEntities.PhotoAlbums.Add(photoAlbum)
        photoAlbum.UserName = User.Identity.Name
        myEntities.SaveChanges()
      End Using
      Response.Redirect(String.Format("ManagePhotoAlbum?PhotoAlbumId={0}", photoAlbum.Id.ToString()))
    End If
  End Sub
End Class
