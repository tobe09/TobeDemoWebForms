<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Resource Page" AutoEventWireup="true" CodeBehind="LoggedIn.aspx.cs" Inherits="TobeDemo.LoginRedirect" %>

<asp:Content ID="ResourceContent" runat="server" ContentPlaceHolderID="Content">
    <div style="margin-left:200px;">
    <div id="div1" runat="server" visible="true" style="overflow:auto; border:2px solid; border-color:grey; width:600px;">
        <asp:Label ID="dataLabel" runat="server"></asp:Label>
        </div><br /><br />
        <asp:Label ID="Infolabel" runat="server"></asp:Label> <br /><br /><br />
        <asp:Button ID="TimeoutButton" CssClass="Button" runat="server" Text="Test session timeout" OnClick="TimeoutButton_Click" />
    </div>
</asp:Content>