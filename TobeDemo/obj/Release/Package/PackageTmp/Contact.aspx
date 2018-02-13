<%@ Page Language="C#" Title="Contact Us" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TobeDemo.Contact" %>

<asp:Content ID="ContactContent" runat="server" ContentPlaceHolderID="Content"><br /><br />
    <div style="margin-left: 100px"><uc1:MailForm runat="server" id="MailForm" /></div>
</asp:Content>