<%@ Page Language="C#" Title="Generation of Prime Numbers" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="PrimeForm.aspx.cs" Inherits="TobeDemo.Demo.PrimeRange" %>

<asp:Content ContentPlaceHolderID="Content" ID="PrimeRangeContent" runat="server">
    <br />
    <asp:Label ID="FirstLabel" runat="server" Text="Enter the Start Number: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="FirstBox" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="SecondLabel" runat="server" Text="Enter the End Number: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="SecondBox" runat="server"></asp:TextBox><br /><br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ValuesButton" runat="server" Text="Show Prime Numbers" OnClick="ValuesButton_Click" /><br />
    <br />
    <asp:Label ID="ValuesLabel" runat="server" Text="" CssClass="pass"></asp:Label>
</asp:Content>