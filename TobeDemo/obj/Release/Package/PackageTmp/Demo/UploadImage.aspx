<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Uploaad an Image" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="TobeDemo.Demo.UploadImage" %>

<asp:Content ContentPlaceHolderID="Content" ID="ImageContent" runat="server">
    <div style="margin-left:300px; margin-top:50px;">
        <h3>This is a upload/save operation on the IIS server and Oracle database</h3>
        Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="UsernameBox" runat="server"></asp:TextBox>
        <br /><br />
        File Upload:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br /><br />
        <asp:Button ID="SaveButton" CssClass="Button" runat="server" OnClick="SaveButton_Click" Text="Save" Height="40px" Width="120px" />
        <br /><br />
        <asp:Label ID="SaveLabel" ForeColor="Gray" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="InfoLabel" runat="server" Text=""></asp:Label>
        </div><br /><br />
    <!--<asp:UpdatePanel ID="UP1" runat="server"><ContentTemplate>-->
    <div style="margin-left:300px;">
        <h3>This is a download/retieve operation from the IIS server</h3>
        Enter your username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="UsernameBox2" runat="server"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="RetrieveButton" runat="server" CssClass="Button" Text="Display Picture" OnClick="RetrieveButton_Click" Height="40px" Width="120px" />
        <br /><br />
        <asp:Image ID="Image1" Visible="false"  runat="server" Width="200px" Height="200px"/><br /><br />
        <asp:Label ID="InfoLabel2" runat="server" Text=""></asp:Label>
    </div><br /><br />

    <div style="margin-left:300px;">
        <h3>This is a delete operation on the IIS server and Oracle database</h3>
        Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="UsernameBox3" runat="server"></asp:TextBox>
        <br /><br />
        <div style="color:#460404;font-size:small">
            <strong>NOTE: </strong>This action cannot be reversed, execute with caution!<br />
        <asp:CheckBox ID="DeleteCheckBox" runat="server" /><i>Tick to enforce deletion.</i>
            </div><br /><br />
        <asp:Button ID="DeleteButton" CssClass="Button" runat="server" Text="Delete" OnClick="DeleteButton_Click" Height="40px" Width="120px"/>
        <br /><br />
        <asp:Label ID="DeleteLabel" ForeColor="Gray" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="InfoLabel3" runat="server" Text=""></asp:Label>
    </div><br /><br />
    <!--</ContentTemplate></asp:UpdatePanel>-->

    <div style="margin-left:300px;">
        <h3>This is a download/retieve operation from Oracle Database</h3>
        Enter your username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="UsernameBox4" runat="server"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="RetrieveButton4" runat="server" CssClass="Button" Text="Display Picture" Height="40px" Width="120px" OnClick="RetrieveButton4_Click" />
        <br /><br />
        <asp:Image ID="Image4" Visible="false"  runat="server" Width="200px" Height="200px"/><br /><br />
        <asp:Label ID="InfoLabel4" runat="server" Text=""></asp:Label>
    </div><br /><br />

    <script type="text/javascript">
        //not used (can be used in an UpdatePanel context)
        function clearInfo(){
            //using their clientId to reference values
            document.getElementById("Content_InfoLabel").innerHTML = "jsInfolabel";
            document.getElementById("Content_InfoLabel2").innerHTML = "jsInfolabel2";
            document.getElementById("Content_InfoLabel3").innerHTML = "jsInfolabel3";
            document.getElementById("Content_SaveLabel").innerHTML = "jsSavelabel";
            document.getElementById("Content_DeleteLabel").innerHTML = "jsDeletelabel";
            document.getElementById("Content_Image1").src = "../Images/Penguins.jpg";
        }
    </script>
</asp:Content>