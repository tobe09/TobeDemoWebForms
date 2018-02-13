<%@ Page Title="My Profile" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="MyProfile.aspx.vb" Inherits="_MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <h1>My Profile</h1>
  <p>The My Profile page allows you to make changes to your personal profile.
      For now, all you can do is change your password below.
  </p>
  <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>

