<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Testing AJAX" AutoEventWireup="true" CodeBehind="AjaxTest.aspx.cs" Inherits="TobeDemo.Demo.AjaxTest" %>

<asp:Content ID="AjaxContent" ContentPlaceHolderID="Content" runat="server">
    <br /><br /><div class="left">
     <asp:DropDownList ID="ListFac" CssClass="List" runat="server" OnSelectedIndexChanged="ListFac_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem >Technology</asp:ListItem>
        <asp:ListItem >Science</asp:ListItem>
        <asp:ListItem >Languages</asp:ListItem>
    </asp:DropDownList><br />
    <asp:DropDownList ID="ListTech" CssClass="List" runat="server">
        <asp:ListItem >Computer Enineering</asp:ListItem>
        <asp:ListItem >Mechanical Engineering</asp:ListItem>
        <asp:ListItem >Chemical Engineering</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ListSci" CssClass="List" runat="server">
        <asp:ListItem >Medicine and Surgery</asp:ListItem>
        <asp:ListItem >Botany</asp:ListItem>
        <asp:ListItem >Zoology</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ListLang" CssClass="List" runat="server">
        <asp:ListItem >English</asp:ListItem>
        <asp:ListItem >French</asp:ListItem>
        <asp:ListItem >German</asp:ListItem>
    </asp:DropDownList><br /><br />
    <asp:Button ID="Display" CssClass="Button" runat="server" Text="Display" OnClick="Display_Click" /><br /><br />
    <asp:Label ID="LabelFacDept" runat="server" Text=""></asp:Label>
       <br /><br /><br /><br />
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           <Triggers><asp:AsyncPostBackTrigger ControlID="TimeButton"/><asp:AsyncPostBackTrigger ControlID="Timer1"/></Triggers>
           <ContentTemplate>
       <h4>AJAX UpdatePanel for anti-flicker is applied here</h4>
       <asp:Label ID="TimeLabel" runat="server" Text="The current date and time will be displayed here"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button CssClass="Button" ID="TimeButton" runat="server" Text="Show Time" OnClick="TimeButton_Click" /><br /><br />
               <asp:Timer ID="Timer1" Interval="2000" runat="server" OnTick="Timer1_Tick"></asp:Timer>
               <asp:Label ID="TimerLabel" runat="server" Text="Current Time"></asp:Label><p>Controlled by AJAX Timer</p>
           </ContentTemplate>
       </asp:UpdatePanel><br />
       <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
           <ProgressTemplate>
               <div class="alert">Please wait...</div>
           </ProgressTemplate>
       </asp:UpdateProgress>
   </div>
</asp:Content>
