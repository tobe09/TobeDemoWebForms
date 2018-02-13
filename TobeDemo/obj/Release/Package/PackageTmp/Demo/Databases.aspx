<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Database Operations" AutoEventWireup="true" CodeBehind="Databases.aspx.cs" Inherits="TobeDemo.Demo.Databases" %>


<asp:Content ContentPlaceHolderID="Content" ID="DatabaseContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter Table Name: "></asp:Label>&nbsp
    <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>&nbsp
    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
    <asp:Button ID="Button1" runat="server" Text="Display" Height="35px" Width="125px" CssClass="Button" OnClick="Button1_Click" /><br /><br />
   <br />
    <div id="div1" runat="server" visible="false" style="overflow:auto; border:2px solid; border-color:black; width:960px;">
        <asp:Label ID="TableLabel" runat="server"></asp:Label>
        </div>
    <br /><br />
    <asp:Label ID="InfoLabel" runat="server" CssClass="errorBig" Text=""></asp:Label>
</asp:Content>