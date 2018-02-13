﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _ManagePhotoAlbum : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }

  // The return type can be changed to IEnumerable, however to support
  // paging and sorting, the following parameters must be added:
  //     int maximumRows
  //     int startRowIndex
  //     out int totalRowCount
  //     string sortByExpression
  public IQueryable ListView1_GetData([QueryString("PhotoAlbumId")] int photoAlbumId)
  {
    var myEntities = new PlanetWroxEntities();
    return from p in myEntities.Pictures
           where p.PhotoAlbumId == photoAlbumId
           select p;
  }

  public void ListView1_InsertItem([QueryString("PhotoAlbumId")] int photoAlbumId)
  {
    Picture picture = new Picture();
    TryUpdateModel(picture);
    FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
    if (!FileUpload1.HasFile || !FileUpload1.FileName.ToLower().EndsWith(".jpg"))
    {
      CustomValidator cusValImage = (CustomValidator)ListView1.InsertItem.FindControl("cusValImage");
      cusValImage.IsValid = false;
      ModelState.AddModelError("Invalid", cusValImage.ErrorMessage);
    }
    if (ModelState.IsValid && Page.IsValid)
    {
      using (var myEntities = new PlanetWroxEntities())
      {
        picture.PhotoAlbumId = photoAlbumId;

        string virtualFolder = "~/GigPics/";
        string physicalFolder = Server.MapPath(virtualFolder);
        string fileName = Guid.NewGuid().ToString();
        string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
        picture.ImageUrl = virtualFolder + fileName + extension;

        myEntities.Pictures.Add(picture);
        myEntities.SaveChanges();
      }
    }
  }

  // The id parameter name should match the DataKeyNames value set on the control
  public void ListView1_DeleteItem(int id)
  {
    using (var myEntities = new PlanetWroxEntities())
    {
      var picture = (from p in myEntities.Pictures
                     where p.Id == id
                     select p).Single();
      myEntities.Pictures.Remove(picture);
      myEntities.SaveChanges();
    }
  }

  protected void ListView1_ItemCreated(object sender, ListViewItemEventArgs e)
  {
    switch (e.Item.ItemType)
    {
      case ListViewItemType.DataItem:
        Button deleteButton = (Button)e.Item.FindControl("DeleteButton");
        deleteButton.Visible = Roles.IsUserInRole("Managers");
        break;
    }
  }
}