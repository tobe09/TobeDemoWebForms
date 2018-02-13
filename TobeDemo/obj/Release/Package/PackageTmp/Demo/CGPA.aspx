<%@ Page Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" Title="Calculate CGPA" AutoEventWireup="true" CodeBehind="CGPA.aspx.cs" Inherits="TobeDemo.Demo.CGPA" %>

<asp:Content ID="CgpaContent" runat="server" ContentPlaceHolderID="Content">
    <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate>
    <div style="margin-left:150px;margin-right:100px;">
        <div style="margin-left:130px;">
        <table style="width:650px; align-items:center;">
            <tr><td colspan="3"><div style="margin-left:100px;"><h3>Enter your course details</h3></div></td></tr>
            <tr>
                <td style="width: 250px; height: 30px;"> <asp:Label ID="Label1" runat="server" Text="Enter the course code"></asp:Label></td>
                <td style="height: 30px"> <asp:TextBox ID="CodeBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 250px; height: 26px;"> <asp:Label ID="Label4" runat="server" Text="Enter the course title"></asp:Label></td>
                <td style="height: 26px"> <asp:TextBox ID="TitleBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 250px"> <asp:Label ID="Label2" runat="server" Text="Enter unit allocated"></asp:Label></td>
                <td> <asp:TextBox ID="UnitBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 250px"> <asp:Label ID="Label3" runat="server" Text="Choose your grade"></asp:Label></td>
                <td> <asp:DropDownList ID="GradeList" runat="server" CssClass="TextBox" Width="120px">
                    <asp:ListItem>Please select...</asp:ListItem>
            <asp:ListItem>A</asp:ListItem><asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem><asp:ListItem>D</asp:ListItem>
            <asp:ListItem>E</asp:ListItem><asp:ListItem>F</asp:ListItem>
        </asp:DropDownList></td>
                <td> 

                </td>
            </tr>
            <tr><td colspan="3"><div style="margin-left:160px"> <asp:Button ID="AddButton" runat="server" Text="Add" CssClass="Button" Width="80px" OnClick="AddButton_Click" Height="35px" /></div></td></tr>
        <tr><td colspan="3""> <div style="margin-left:100px;">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct the following error(s)" CssClass="error"/>
            <asp:Label ID="InfoLabel" runat="server" CssClass="error" Text="" EnableViewState="false"></asp:Label></div></td></tr>
        </table></div><br /><br />

        <div id="ValueDiv" runat="server" visible="false" style="margin-left:50px">
        <asp:Table ID="ValueTable" runat="server" Width="600px" GridLines="Both">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>S/N</asp:TableHeaderCell>
                <asp:TableHeaderCell>Course Code</asp:TableHeaderCell>
                <asp:TableHeaderCell>Course Title</asp:TableHeaderCell>
                <asp:TableHeaderCell>Unit</asp:TableHeaderCell>
                <asp:TableHeaderCell>Grade</asp:TableHeaderCell>
                <asp:TableHeaderCell>Point</asp:TableHeaderCell>
                <asp:TableHeaderCell>GradePoint</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table><br />
            Position&nbsp; <asp:TextBox ID="ClearBox" runat="server" Width="50px"></asp:TextBox>&nbsp&nbsp
        <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="71px" OnClick="ClearButton_Click" />&nbsp(Clears the last entry by default)<br />
            <asp:Label ID="InfoLabel2" runat="server" CssClass="error" Text="" EnableViewState="false"></asp:Label><br /><br />
        <div style="margin-left:220px; height:40px;"><asp:Button ID="SubmitButton" runat="server" CssClass="Button" Text="Calculate" Width="120px" Height="40px" OnClick="SubmitButton_Click" /></div>
    </div>

        <div id="CgpaDiv" runat="server" visible="false" style="margin-left:100px">
            <br />
            <br /><br />
        <asp:Label ID="CgpLabel" runat="server" Text="Cummulative Grade Point (C.G.P): "></asp:Label><br />
        <asp:Label ID="CuLabel" runat="server" Text="Cummulative Unit (C.U.): "></asp:Label><br />
        <asp:Label ID="CgpaLabel" ForeColor="Green" Font-Size="22px" runat="server" Text="Cummulative Grade Point Average (C.G.P.A.): "></asp:Label><br /><br />
    </div>    
    </div>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>
