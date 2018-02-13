<%@ Page Language="C#" Title="Demo" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="TobeDemo.Demo.Demo" %>
 
<asp:Content  ContentPlaceHolderID="Content" ID="DemoContent" runat="server">
    <br /><br /><br />
    <h3><u>These are the Demo Pages, Click to visit:</u></h3>
    <div style="margin-left:50px;">
    <a  href="AjaxTest.aspx">AJAX Functionaity Testing</a><br /><br />
    <a  href="Mailing.aspx">Mailing</a><br /><br />
    <a href="PrimeForm.aspx">Prime Number Generation</a><br /><br />
    <a href="ServiceTest.aspx">Test Services</a><br /><br />
    <a href="Switching.aspx">Test Switch Cases</a><br /><br />
    <a href="Validate.aspx">Validation Form Testing</a><br /><br />    
    </div>
</asp:Content>