<%@ Page Language="C#" Title="Discount Using Switching Values" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="Switching.aspx.cs" Inherits="TobeDemo.Demo.Switching" %>

<asp:Content ContentPlaceHolderID="Content" ID="SwitchingContent" runat="server">
    <br />
    <asp:Label ID="EntryLabel" runat="server" Text="Enter the day's code number"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="EntryBox" CssClass="TextBox" runat="server"></asp:TextBox><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="DiscountButton" runat="server" CssClass="Button" Text="Generate Discount" OnClick="DiscountButton_Click" /><br /><br/><br />
    <asp:Label ID="DiscountLabel" runat="server" Text=""></asp:Label>
    <br /<br /><br /><h3>Now I will use a drop down list to switch</h3>
    <br />
    <asp:Label ID="DayLabel" runat="server" Text="Pick a day"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DayList" runat="server" Style="background-color: #d4efd0;">
        <asp:ListItem>Monday</asp:ListItem>
        <asp:ListItem>Tuesday</asp:ListItem>
        <asp:ListItem>Wednesday</asp:ListItem>
        <asp:ListItem>Thurdsay</asp:ListItem>
        <asp:ListItem>Friday</asp:ListItem>
        <asp:ListItem>Saturday</asp:ListItem>
        <asp:ListItem>Sunday</asp:ListItem>
    </asp:DropDownList><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="DropDiscountButton" runat="server" Text="Generate Discount" CssClass="Button" OnClick="DropDiscountButton_Click" />
    <br />
    <br />
    <br />
    <asp:Label ID="DropDiscountLabel" runat="server" Text=""></asp:Label>
</asp:Content>
