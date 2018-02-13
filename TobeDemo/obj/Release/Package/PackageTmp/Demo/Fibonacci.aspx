<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Fibonacci Series Algorithmic Implementation" AutoEventWireup="true" CodeBehind="Fibonacci.aspx.cs" Inherits="TobeDemo.Demo.Fibonacci" %>

<asp:Content ContentPlaceHolderID="Content" ID="FibonacciContent" runat="server">
    <div style="margin:40px">
        <asp:Label ID="Infolabel" runat="server" Text="(This Section uses recursion and execution time slows down for values greater than 33!)"></asp:Label><br />
        <asp:Label ID="HeadLabel" Font-Size="X-Large" runat="server" Text="Enter the length of the fibonacci sequence below"></asp:Label><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Length of Fibonacci Series"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="FibBox" runat="server"></asp:TextBox>&nbsp;<br />
        <br />
        <asp:Button style="background-color: #f8ecae; " ID="Button1" runat="server" Text="Generate" OnClick="Button1_Click" Height="31px" Width="160px" />
        <br /><br /><asp:Label CssClass="pass" ID="SubmitLabel" runat="server" Text=""></asp:Label>
    </div><br />
        <div style="margin:40px">
        <asp:Label ID="InfoLabel2" runat="server" Text="(This Section uses iteration to better implement fibonacci series!)"></asp:Label><br />
        <asp:Label ID="HeadLabel2" Font-Size="X-Large" runat="server" Text="Enter the length of the fibonacci sequence below"></asp:Label><br /><br />
        <asp:Label ID="Label5" runat="server" Text="Length of Fibonacci Series"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="FibBox2" runat="server"></asp:TextBox>&nbsp;<br />
        <br />
        <asp:Button style="background-color: #f8ecae; " ID="Button2" runat="server" Text="Generate" OnClick="Button2_Click" Height="31px" Width="160px" />
        <br /><br />    <asp:Label CssClass="pass" ID="SubmitLabel2" runat="server" Text=""></asp:Label>
    </div><br /><br /><br />
        <style>.error{color: red;} .pass{font-size:large; color:green;}</style>
</asp:Content>