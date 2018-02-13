<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Operation on Files" AutoEventWireup="true" CodeBehind="Files.aspx.cs" Inherits="TobeDemo.Demo.Files" %>

<asp:Content ID="FileContent" runat="server" ContentPlaceHolderID="Content">
   <br /><br /> <div class="left">
       <asp:Label ID="NameLabel" runat="server" Text="Name: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="NameBox" runat="server"></asp:TextBox><br />
    <asp:Label ID="EmailLabel" runat="server" Text="E-mail Address: "></asp:Label>
    &nbsp;<asp:TextBox ID="EmailBox" runat="server"></asp:TextBox><br />
    <asp:Label ID="PhoneLabel" runat="server" Text="Phone Number: "></asp:Label>
    &nbsp;<asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox><br />
    <asp:Label ID="CommentLabel" runat="server" Text="Comments: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="CommentBox" TextMode="MultiLine" runat="server"></asp:TextBox><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SavedButton" runat="server" Text="Save" Height="24px" Width="112px" OnClick="SavedButton_Click" /><br /><br /><br />
    <asp:Label ID="SavedLabel" CssClass="alert" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>