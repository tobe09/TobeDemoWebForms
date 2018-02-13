<%@ Page Title="Create New Photo Album" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="NewPhotoAlbum.aspx.vb" Inherits="_NewPhotoAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:DetailsView AutoGenerateRows="false" ID="DetailsView1" DefaultMode="Insert" runat="server" InsertMethod="DetailsView1_InsertItem">
    <Fields>
      <asp:BoundField DataField="Name" HeaderText="Name" />
      <asp:CommandField ShowInsertButton="True" ShowCancelButton="false" />
    </Fields>
  </asp:DetailsView>

</asp:Content>

