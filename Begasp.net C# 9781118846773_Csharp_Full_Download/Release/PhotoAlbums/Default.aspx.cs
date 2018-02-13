using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhotoAlbums_Default : BasePage
{
  PlanetWroxEntities entities = new PlanetWroxEntities();

  protected void Page_Load(object sender, EventArgs e)
  {

  }

  public IEnumerable<PhotoAlbum> PhotoAlbumList_GetData()
  {
    return from p in entities.PhotoAlbums
           orderby p.Id
           select p;
  }

  public IQueryable<Picture> ListView1_GetData()
  {
    int photoAlbumId = Convert.ToInt32(PhotoAlbumList.SelectedValue);
    return from p in entities.Pictures
           where p.PhotoAlbumId == photoAlbumId
           orderby p.Id
           select p;
  }

  protected void PhotoAlbumList_SelectedIndexChanged(object sender, EventArgs e)
  {
    ListView1.DataBind();
  }

  protected void ListView1_DataBound(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty(PhotoAlbumList.SelectedValue))
    {
      int photoAlbumId = Convert.ToInt32(PhotoAlbumList.SelectedValue);
      using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
      {
        string photoAlbumOwner = (from p in myEntities.PhotoAlbums
                                  where p.Id == photoAlbumId
                                  select p.UserName).Single();
        if (User.Identity.IsAuthenticated && (User.Identity.Name == photoAlbumOwner || User.IsInRole("Managers")))
        {
          EditLink.NavigateUrl = string.Format("~/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", PhotoAlbumList.SelectedValue);
          EditLink.Visible = true;
        }
        else
        {
          EditLink.Visible = false;
        }

        if (!string.IsNullOrEmpty(photoAlbumOwner))
        {
          ProfileCommon ownerProfile = Profile.GetProfile(photoAlbumOwner);
          UserNameLabel.Text = photoAlbumOwner;
          BioLabel.Text = ownerProfile.Bio;
          PhotoAlbumDetails.Visible = true;
        }
        else
        {
          PhotoAlbumDetails.Visible = false;
        }
      }
    }
    else
    {
      EditLink.Visible = false;
    }
  }
}