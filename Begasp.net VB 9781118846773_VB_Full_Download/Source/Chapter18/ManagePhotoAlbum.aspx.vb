Imports System.Web.ModelBinding

Partial Class _ManagePhotoAlbum
  Inherits BasePage

  ' The return type can be changed to IEnumerable, however to support
  ' paging and sorting, the following parameters must be added:
  '     ByVal maximumRows as Integer
  '     ByVal startRowIndex as Integer
  '     ByRef totalRowCount as Integer
  '     ByVal sortByExpression as String

  Public Function ListView1_GetData(<QueryString("PhotoAlbumId")> photoAlbumId As Integer) As IQueryable
    Dim myEntities As New PlanetWroxEntities()
    Return From p In myEntities.Pictures
           Where p.PhotoAlbumId = photoAlbumId
           Select p
  End Function

  Public Sub ListView1_InsertItem(<QueryString("PhotoAlbumId")> photoAlbumId As Integer)
    Dim picture As New Picture()
    TryUpdateModel(picture)
    Dim FileUpload1 As FileUpload = CType(ListView1.InsertItem.FindControl("FileUpload1"), FileUpload)
    If Not FileUpload1.HasFile OrElse Not FileUpload1.FileName.ToLower().EndsWith(".jpg") Then
      Dim cusValImage As CustomValidator = CType(ListView1.InsertItem.FindControl("cusValImage"), CustomValidator)
      cusValImage.IsValid = False
      ModelState.AddModelError("Invalid", cusValImage.ErrorMessage)
    End If
    If ModelState.IsValid AndAlso Page.IsValid Then
      Using myEntities As New PlanetWroxEntities()
        picture.PhotoAlbumId = photoAlbumId

        Dim virtualFolder As String = "~/GigPics/"
        Dim physicalFolder As String = Server.MapPath(virtualFolder)
        Dim fileName As String = Guid.NewGuid().ToString()
        Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName)
        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension))
        picture.ImageUrl = virtualFolder + fileName + extension

        myEntities.Pictures.Add(picture)
        myEntities.SaveChanges()
      End Using
    End If
  End Sub

  ' The id parameter name should match the DataKeyNames value set on the control
  Public Sub ListView1_DeleteItem(ByVal id As Integer)
    Using myEntities As New PlanetWroxEntities()
      Dim picture = (From p In myEntities.Pictures
                    Where p.Id = id
                    Select p).Single()
      myEntities.Pictures.Remove(picture)
      myEntities.SaveChanges()
    End Using
  End Sub

  Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    Dim photoAlbumId As Integer = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"))
    Using myEntities As PlanetWroxEntities = New PlanetWroxEntities()
      Dim photoAlbumOwner As String = (From p In myEntities.PhotoAlbums
                                      Where p.Id = photoAlbumId
                                      Select p.UserName).Single()
      If User.Identity.Name <> photoAlbumOwner And Not User.IsInRole("Managers") Then
        Response.Redirect("~/")
      End If
    End Using
  End Sub
End Class
