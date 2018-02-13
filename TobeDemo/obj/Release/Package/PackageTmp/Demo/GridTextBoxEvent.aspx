<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="GridTextBoxEvent.aspx.cs" Inherits="TobeDemo.Demo.GridTextBoxEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <style>.centre{text-align:center;}</style>

    <br /><br /><br />
    <asp:Label ID="lblMsg" runat="server" EnableViewState="false"></asp:Label>
    <br /><br />

    <asp:DataGrid ID="dgShowRecord" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="centre" GridLines="Both" Width="100%"
        OnItemCommand="dgShowRecord_ItemCommand">
        <AlternatingItemStyle CssClass="gridRowAlt" />
        <FooterStyle Font-Bold="True" />
        <HeaderStyle Font-Bold="True" />
        <ItemStyle/>
        <Columns>
            <asp:TemplateColumn ItemStyle-CssClass="centre" HeaderText="S/No">
                <ItemTemplate>
                    <%# (dgShowRecord.PageSize * dgShowRecord.CurrentPageIndex) + Container.ItemIndex + 1%>
                </ItemTemplate>
                <HeaderStyle CssClass="" HorizontalAlign="Center" Width="5%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateColumn>

            <asp:TemplateColumn ItemStyle-CssClass="centre" HeaderText="Description">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Width="70%"/>
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblDescription" Text='<%#DataBinder.Eval(Container.DataItem, "DESCRIPTION")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateColumn>

            <asp:TemplateColumn ItemStyle-CssClass="centre" HeaderText="Score (%)">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:TextBox runat="server" ID="txtScore" Text='<%#DataBinder.Eval(Container.DataItem, "SCORE")%>' Width="100%" Height="100%" TextMode="Number" AutoPostBack="true" OnTextChanged="txtScore_TextChanged"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="">
                <HeaderStyle CssClass="" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Width="1%" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Button ID="btnNoMethod" runat="server" Text="No Method" Width="80px" OnClick="btnNoMethod_Click"/>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Visible="true"  Mode="NumericPages"/>
    </asp:DataGrid>

    <br /><br />
</asp:Content>
