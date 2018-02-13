<%@ Page Title="All Reviews" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="All.aspx.vb" Inherits="Reviews_All" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:Repeater ID="Repeater1" runat="server" ItemType="Review">
    <ItemTemplate>
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ViewDetails?ReviewId=" + Item.Id.ToString() %>' Text='<%# Item.Title %>'></asp:HyperLink>
    </ItemTemplate>
    <SeparatorTemplate>
      <br />
    </SeparatorTemplate>
  </asp:Repeater>
</asp:Content>

