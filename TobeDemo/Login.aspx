<%@ Page Language="C#" Title="Login" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TobeDemo.Login" %>

<asp:Content ID="LoginContent" ContentPlaceHolderID="Content" runat="server">
    <div style="color:grey;"><asp:Label ID="LastLogin" runat="server"></asp:Label></div>
    <div style="margin-left:340px;" id="LoginDiv" runat="server"><br />
        <table style="width: 350px; background-color:#b9f1c4">
            <tr><td colspan="2" style="text-align:center; font-size:20px; color:#ad24e4;">Enter your login details</td></tr>
        <tr>
            <td style="height: 26px"> <asp:Label ID="UsernameLabel" runat="server" Text="Username/Email Address "></asp:Label> </td>
            <td style="height: 26px"> <asp:TextBox CssClass="TextBox" ID="UsernameBox" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>
            <td style="height: 26px"> <asp:Label ID="PasswordLabel" runat="server" Text="Password "></asp:Label> </td>
            <td style="height: 26px"> <asp:TextBox CssClass="TextBox" ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox> </td>
        </tr>
            <tr><td><br /></td></tr>
        <tr>
            <td><a href="../Register.aspx" style="color:blue; margin-right:5px;">Click to register</a></td>
            <td> <asp:Button CssClass="Button" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" Height="34px" Width="132px" /> 
                <br />
            </td>
        </tr>
        </table><br />
        <asp:Label CssClass="alert" Font-Size="20px" Font-Italic="true" ID="ErrorLabel" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>