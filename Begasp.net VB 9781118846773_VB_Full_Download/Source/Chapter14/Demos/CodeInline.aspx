<%@ Page Title="Code Inline Demo" Language="VB" %>
<!DOCTYPE html>
<script runat="server">
  Protected Sub Page_Load(sender As Object, e As EventArgs)
    Label1.Text = "Hello World; the time is now " & DateTime.Now.ToString()
  End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
  </form>
</body>
</html>
