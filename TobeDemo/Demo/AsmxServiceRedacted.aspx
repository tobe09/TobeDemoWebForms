<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="AsmxServiceRedacted.aspx.cs" Inherits="TobeDemo.Demo.AsmxServiceRedacted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <strong>Testing ASMX Web Services</strong>
    <br /><br />
    <asp:Label ID="lblMsg" runat="server" EnableViewState="false"></asp:Label>
    <br /><br />
    <em>Multiply Service</em>
    <br />
    <asp:Button ID="btnMult" runat="server" Text="Invoke" OnClick="btnMult_Click" />
    <span style="margin-left: 50px;"></span>
    <asp:TextBox ID="tbxMult1" runat="server"></asp:TextBox>
    <span style="margin-left: 50px;"></span>
    <asp:TextBox ID="tbxMult2" runat="server"></asp:TextBox>
    <span style="margin-left: 100px;"></span>
    <asp:Label ID="lblMultAns" runat="server"></asp:Label>
    <br /><br />
    <em>Absolute Value Substraction Service</em>
    <br />
    <asp:Button ID="btnSubs" runat="server" Text="Invoke" OnClick="btnSubs_Click" />
    <span style="margin-left: 50px;"></span>
    <asp:TextBox ID="tbxSubs1" runat="server"></asp:TextBox>
    <span style="margin-left: 50px;"></span>
    <asp:TextBox ID="tbxSubs2" runat="server"></asp:TextBox>
    <span style="margin-left: 100px;"></span>
    <asp:Label ID="lblSubsAns" runat="server"></asp:Label>
</asp:Content>
