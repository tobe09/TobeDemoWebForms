<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MailForm.ascx.cs" Inherits="TobeDemo.Controls.MailForm" %>

<div>
    <table style="width:80%;">
        <tr>
            <td> <asp:Label ID="UsernameLabel" runat="server" Text="Enter Your Username: "></asp:Label></td>
            <td> <asp:TextBox CssClass="TextBox" ID="UsernameBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator CssClass="alert" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Username must be between 2 and 20 characters" Text="*" ControlToValidate="UsernameBox" ValidationExpression="^[\w\W]{2,20}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Username cannot be empty" Text="*" ControlToValidate="UsernameBox"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td> <asp:Label ID="EmailLabel" runat="server" Text="Enter Your Email Address: "></asp:Label></td>
            <td> <asp:TextBox CssClass="TextBox" ID="EmailBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator CssClass="alert" ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter a valid email address" Text="*" ControlToValidate="EmailBox" ValidationExpression="^(\w)+@(\w)+\.(\w)+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email Address cannot be empty" Text="*" ControlToValidate="EmailBox"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td> <asp:Label ID="SubjectLabel" runat="server" Text="Enter the Subject: "></asp:Label></td>
            <td> <asp:TextBox ID="SubjectBox" CssClass="TextBox" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td> <asp:Label ID="MessageLabel" runat="server" Text="Enter the Message: "></asp:Label></td>
            <td> <asp:TextBox CssClass="TextBox" ID="MessageBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RegularExpressionValidator CssClass="alert" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid message" Text="*" ControlToValidate="MessageBox" ValidationExpression="^[\w\W]{2,500}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Message cannot be empty" Text="*" ControlToValidate="MessageBox"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr><td><br />
            <br />
            </td><td>    <asp:Button ID="MessageButton" CssClass="Button" runat="server" Text="Send" Height="26px" Width="108px" OnClick="MessageButton_Click" /></td></tr>
        <tr><td colspan="2"><asp:ValidationSummary style="text-align:center;" ID="ValidationSummary1" runat="server" CssClass="alert" HeaderText="Please correct the following errors: " /></td></tr>
    </table>
        <br />
        Recieve a Copy? Check if yes&nbsp; <asp:CheckBox ID="CheckBox1" runat="server" /><br /><br /><br />
    <asp:Label ID="SentLabel" runat="server" Font-Size="X-Large" Text=""></asp:Label>
    </div>