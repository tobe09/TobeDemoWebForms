<%@ Page Language="C#" Title="About Us" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TobeDemo.About" %>

<asp:Content ID="AboutContent" ContentPlaceHolderID="Content" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <uc1:Banner runat="server" ID="Banner1" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="Button" Width="120px" Height="36px" /><br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>

    <div style="width:500px">
        <img id="owl" src="ChickenWings.jpg" />
    </div>

    <style>
        #owl {
            width: 640px;
            max-width: 100%;
        }
        nav a, button{
            width: 48px;
            height:48px;
            margin:20px;
        }
        @media screen and (min-width: 301px) and (max-width: 600px) {
            .BB {
                display: block;
                background-color: yellow;
            }
        }
    </style>
</asp:Content>
