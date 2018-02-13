<%@ Page Language="C#" Title="Testing Services" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="ServiceTest.aspx.cs" Inherits="TobeDemo.Demo.WebForm1" %>

<asp:Content ContentPlaceHolderID="Content" ID="ServicesContent" runat="server">
    <br /><br />
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/Services/ArithmeticService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <div class="left">
        <p>This is the NameService.HelloWorld Service using ScriptManager at masterpage</p><br />
        <input id="nameText" type="text" /><br />
        <input id="nameButton" type="button" onclick="helloWorld();" value="Show Name" /><br /><br />
        <input type="text" id="show" /><br /><br /><br />
        <p>This is the ArithmeticService.Sum Service using ScriptManagerProxy</p><br />
        <input id="numberText1" type="text" /><br />
        <input id="numberText2" type="text" /><br />
        <input id="numberButton" type="button" onclick="add();" value="Show Sum" /><br /><br />
        <input type="text" id="showSum" /><br />
        <span id="span1">The value is: </span><br />
        <asp:Label ID="sumLabel" runat="server" Text="Sum: "></asp:Label>
    </div>

<script>
    function helloWorld()
    {
        var name = document.getElementById("nameText").value;
        NameService.HelloWorld(name, helloWorldCallBack);
       // document.getElementById("show").value = NameService.HelloWorld(name) + ". "; //undefined value returned
    }
    function helloWorldCallBack(result)
    {
        //document.getElementById("show").value += result;
        alert(result);
    }
    function add()
    {
        var a = document.getElementById("numberText1").value;
        var b = document.getElementById("numberText2").value;
        ArithmeticService.Sum(a, b, addCallBack);
       // document.getElementById("showSum").value = (ArithmeticService.Sum(a, b) + ". ");
        //tryimg to assign json value returned from service to javascript variable, impossible
    }
    function addCallBack(result)
    {
        alert(result);
        //document.getElementById("showSum").value += result;
        //document.getElementById("span1").innerHTML = result + ". &nbsp<%=sumLabel.ClientID%>";
        //document.getElementById("<%=sumLabel.ClientID%>").innerHTML += result;
    }
</script>
</asp:Content>
