<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="TobeDemo.Controls.WebUserControl1" %>

<table>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>Fill the form below appropriately</u></strong></td>
    </tr>
</table><br />
<table class="align">
    <tr>
        <td>Name</td>
        <td> <asp:TextBox ID="NameBox" runat="server"></asp:TextBox> </td>
        <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name!" ControlToValidate="NameBox" CssClass="error">Invalid Name</asp:RequiredFieldValidator>  </td>
    </tr>
    <tr>
        <td>1 - 10</td>
        <td> <asp:TextBox ID="RangeBox" runat="server"></asp:TextBox> </td>
        <td> <asp:RangeValidator ControlToValidate="RangeBox" CssClass="error" ID="RangeValidator1" runat="server" ErrorMessage="Enter the acceptable range" MaximumValue="10" MinimumValue="1" Type="Integer">Between 1 and 10</asp:RangeValidator></td>
    </tr>
    <tr>
        <td>Email Adress</td>
        <td> <asp:TextBox ID="MailBox" runat="server" TextMode="Email"></asp:TextBox> </td>
        <td> <asp:RegularExpressionValidator ControlToValidate="MailBox" ID="RegularExpressionValidator1" runat="server" CssClass="error" ErrorMessage="Wrong email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Input Valid Email</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td>Phone Number</td>
        <td> <asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox> </td>
        <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="error" ControlToValidate="PhoneBox" runat="server" ErrorMessage="Enter a phone number">Enter number</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>Business Number</td>
        <td> <asp:TextBox ID="BusinessBox" runat="server"></asp:TextBox></td>
        <td> <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter either phone or business number" ClientValidationFunction="valPhoneNo" CssClass="error" OnServerValidate="CustomValidator1_ServerValidate">Enter one of the numbers</asp:CustomValidator> </td>
    </tr>
    <tr>
        <td>Password</td>
        <td >
            <asp:TextBox ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td >
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Weak Password" ClientValidationFunction="valPassword" CssClass="error" OnServerValidate="CustomValidator2_ServerValidate">Weak</asp:CustomValidator> </td>
    </tr>
    <tr>
        <td>Re-enter Password</td>
        <td>  
            <asp:TextBox ID="RePasswordBox" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="PasswordBox" ControlToValidate="RePasswordBox" CssClass=error runat="server" ErrorMessage="Mismatched Passwords">Not Matching</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td> Comments</td>
        <td> <asp:TextBox ID="CommentBox" runat="server" TextMode="MultiLine"></asp:TextBox> </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a comment" ControlToValidate="CommentBox" CssClass="error">Enter a value</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td></td>
        <td> <asp:Button ID="SendButton" runat="server" Text="Send" /> </td>
        <td></td>
    </tr>
    <tr>
        <td>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="3"><asp:ValidationSummary CssClass="error" ID="ValidationSummary1" runat="server" HeaderText="Please Correct the Following Errors!" />
        </td>
    </tr>
</table>

<style>
    .align
    {
        width:100%;
        text-align:center;
        align-items:center;
    }
.error{color: red;}
</style>

<script>
    function valPhoneNo(source, args)
    {
        var phoneNo = document.getElementById("<%=PhoneBox.ClientID%>");
        var businessNo = document.getElementById("<%=BusinessBox.ClientID%>");
        if ((phoneNo.value == "" || null) && (businessNo.value == "" || null))
        { args.IsValid = false; }
        else args.IsValid = true;
    }
    function valPassword(source, args)
    {
        var password = document.getElementById("<%=PasswordBox.ClientID%>");
        if (password.value.length <= 3) { args.IsValid = false; }
        else args.IsValid = true;
    }
</script>

