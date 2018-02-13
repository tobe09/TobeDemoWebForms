<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="TobeDemo.Controls.Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
    <a href="http://www.google.com" target="_blank" id="VerticalLink" runat="server">
        <asp:Image ID="Image1" style="width: 120px; height: 300px;" ImageUrl="~/Images/Penguins.jpg" runat="server" AlternateText="This is a banner" />
    </a>
</asp:Panel>
<asp:Panel ID="HorizontalPanel" runat="server">
    <a href="http://www.google.com" target="_blank" id="HorizontalLink" runat="server">
        <asp:Image ID="Image2" style="width: 300px; height: 120px;" ImageUrl="~/Images/Penguins.jpg" runat="server" AlternateText="This is a banner" />
    </a>
</asp:Panel>

