<%@ Page Title="Contact Us" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="About_Contact" %>
<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Wrox" TagName="ContactForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <Wrox:ContactForm runat="server" ID="ContactForm" />
</asp:Content>

