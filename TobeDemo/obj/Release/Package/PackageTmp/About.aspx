<%@ Page Language="C#"  Title="About Us" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TobeDemo.About" %>

<asp:Content ID="AboutContent" ContentPlaceHolderID="Content" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
    <uc1:Banner runat="server" ID="Banner1" /><br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="Button" Width="120px" Height="36px" /><br />
    <br /><br /><br /><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
