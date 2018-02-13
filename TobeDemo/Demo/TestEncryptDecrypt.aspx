<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Encryption Testing" AutoEventWireup="true" CodeBehind="TestEncryptDecrypt.aspx.cs" Inherits="TobeDemo.TestEncryptDecrypt" %>

<asp:Content ContentPlaceHolderID="Content" ID="EncryptionContent" runat="server">
   <div style="margin-left:100px;">
    <table>
       <tr><td colspan="3"><h3>Encryption</h3></td></tr>
       <tr>
           <td> <p>Enter the clear text</p></td>
           <td><asp:TextBox ID="ClearTextBox" CssClass="TextBox" runat="server"></asp:TextBox></td>
           <td><asp:Button ID="EncryptButton" runat="server" Text="Encrypt" OnClick="EncryptButton_Click" /></td>
       </tr>
       <tr> <td colspan="3"><asp:Label ID="EncryptLabel" runat="server"></asp:Label><br /><br /></td></tr>
       <tr><td colspan="3"><h3>Decryption</h3></td></tr>
       <tr>
           <td> <p>Enter the encrypted text</p></td>
           <td><asp:TextBox ID="EncryptTextBox" CssClass="TextBox" runat="server"></asp:TextBox></td>
           <td><asp:Button ID="DecryptButton" runat="server" Text="Decrypt" OnClick="DecryptButton_Click" /></td>
       </tr>
       <tr><td colspan="3"><asp:Label ID="DecryptLabel" runat="server"></asp:Label></td> </tr>
   </table><br /><br />
    <asp:Label ID="InfoLabel" runat="server"></asp:Label>
</div>
</asp:Content>