<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="Mailing.aspx.cs" Inherits="TobeDemo.Demo.Mailing" %>

<asp:Content ContentPlaceHolderID="Content" ID="MailingContent" runat="server"><br /><br />
    <div style="margin-left: 100px"><uc1:MailForm runat="server" id="MailForm" /></div>
</asp:Content>