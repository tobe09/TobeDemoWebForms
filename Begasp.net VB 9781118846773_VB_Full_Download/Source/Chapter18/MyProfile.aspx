<%@ Page Title="My Profile" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="MyProfile.aspx.vb" Inherits="_MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <style type="text/css">
    .auto-style1
    {
      width: 100%;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <h1>My Profile</h1>
  <p>
    The My Profile page allows you to make changes to your personal profile. Besides changing your password, you can also tell us a bit about yourself. 
  </p>
  <table class="auto-style1">
    <tr>
      <td>
        <asp:Label ID="Label1" runat="server" Text="First name" AssociatedControlID="FirstName"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
      </td>
      <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="First name is required." ControlToValidate="FirstName"></asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label2" runat="server" Text="Last name" AssociatedControlID="LastName"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
      </td>
      <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Last name is required." ControlToValidate="LastName"></asp:RequiredFieldValidator>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label3" runat="server" Text="Date of birth" AssociatedControlID="DateOfBirth"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>
      </td>
      <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Date of birth is required." ControlToValidate="DateOfBirth"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Please enter a valid date." Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label4" runat="server" Text="Biography" AssociatedControlID="Bio"></asp:Label>
      </td>
      <td>
        <asp:TextBox ID="Bio" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="Label5" runat="server" AssociatedControlID="PreferredGenres" Text="Favorite genres"></asp:Label>
      </td>
      <td>
        <asp:CheckBoxList ID="PreferredGenres" runat="server" SelectMethod="PreferredGenres_GetData" DataTextField="Name" DataValueField="Id">
        </asp:CheckBoxList>
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
        <asp:Button ID="SaveButton" runat="server" Text="Save profile" />
      </td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>

