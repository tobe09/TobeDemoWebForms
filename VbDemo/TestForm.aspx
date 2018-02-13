<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestForm.aspx.vb" Inherits="VbDemo.TestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblTest" runat="server"></asp:Label>
        <br /><br />
        <asp:Button ID="btnTest" runat="server" Text="Click Me" OnClick="btnTest_Click" />
    </div>
    </form>
</body>
</html>
