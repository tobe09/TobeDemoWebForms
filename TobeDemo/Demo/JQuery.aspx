<%@ Page Language="C#" Title="JQuery Implementation" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="JQuery.aspx.cs" Inherits="TobeDemo.Demo.JQuery" %>

<asp:Content ContentPlaceHolderID="Content" ID="JQueryContent" runat="server">
    <asp:Label ClientIDMode="Static" ID="Label1" runat="server" Text="Became green on page load"></asp:Label>
    <div id="div1" style="width: 900px; height:500px; background-color:yellow">second div<br />
        <h2>First h2</h2>&nbsp &nbsp &nbsp &nbsp &nbsp  <h4>second h4</h4> <br /><p id="p1">Paragraph</p>
    <span id="div2" style="width:500px; height:200px; background-color: blue">Second div</span></div>
    <input  id="Button1" type="button" value="Execute"/>&nbsp Inside ready function, change color and animate div1 and div2<br />
    <input id="Button2" type="button" value="Execute 2" onclick="react();" />&nbsp used function react to change 
    label 1, p1 innerHTML, empty textbox value, h2 and h4 border to green and paragraph color<br />
    <input id="empty" type="text" value="This is paradoxically empty" />

<script>
    $(function(){
        $('#Label1').css('background-color', 'green');
        $('#Button1').click(function () {
            $('#div1').css('background-color', 'red').animate({ width: '700px', height: '400px' });
            $('#div2').css('background-color', 'yellow').animate({ width: '200px', height: '150px' }).fadeOut(5000).fadeIn(2000);
        });
    });
    function react() {
        $('#Label1').css('background-color', 'grey');
        document.getElementById("p1").innerHTML = "HTML changed with javascript";
        $('#empty').attr('value', 'This now contains text');
        $('h4, h2').css('border', '4px solid green');
        $('#div1 p').css('color') = "blue";
    }
</script>
</asp:Content>