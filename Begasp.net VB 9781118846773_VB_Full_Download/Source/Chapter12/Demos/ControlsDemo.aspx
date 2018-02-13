<%@ Page Title="Controls Demo" Language="VB" AutoEventWireup="false" CodeFile="ControlsDemo.aspx.vb" Inherits="Demos_ControlsDemo" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      Your name
      <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
      <asp:Button ID="SubmitButton" runat="server" Text="Submit Information" />
      <br />
      <asp:Label ID="Result" runat="server"></asp:Label>
    </div>
  </form>
</body>
</html>
