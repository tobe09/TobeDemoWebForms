<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DapoChickenWings.aspx.cs" Inherits="TobeDemo.DapoChickenWings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chicken Wings Recipe</title>
    <link href="ChickenWings.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 57px;
        }

        .auto-style2 {
            width: 57px;
            height: 64px;
        }

        .auto-style3 {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 2%">
            <div>
                <header>
                    <a href="#">Home</a>&nbsp; >>&nbsp;
                <a href="#">Food & Recipes</a>&nbsp; >>&nbsp;
                <a href="#">Chicken Wings</a>
                </header>
                <br />

                <div style="margin-left: 5%">
                    <h1>Chicken Wings Recipe</h1>
                </div>
                <br />

                <table style="width: 96%; text-align: left; background-color: #ddeaee">
                    <tr>
                        <td style="width: 615px;">
                            <img alt="Picture of Recipe" src="ChickenWings.jpg" />
                        </td>
                        <td>
                            <div style="margin-left: 15%">
                                <i style="font-size: 20px"><b>Ingredients</b></i><br />
                                <ul>
                                    <li>Chicken Wings</li>
                                    <li>Onions</li>
                                    <li>Garlic</li>
                                    <li>Pepper</li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </table>
                <br />

                <div>
                    <h3 style="font-size: 23px">Preparation</h3>
                    <i>Preparation Time:</i>&nbsp;&nbsp; 30 minutes
                <br />
                    <i>Cook Time:</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 hour and 30 minutes
                <br />
                    <i>Total Time:</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 hours
                </div>
                <br />

                <div>
                    <h4 style="font-size: 20px">Directions</h4>
                    <ol>
                        <li>Boil for two hours.
                        </li>
                        <li>Fry for six hours
                        </li>
                        <li>Serve with rice
                        </li>
                    </ol>
                </div>
                <br />

                <div>
                    <h2 style="margin-left: 280px; color: #808080">JOIN THE CONVERSATION</h2>
                    <table style="width: 75%; margin-left: 15%">
                        <tr>
                            <td class="auto-style1"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="2"><span />Type your comment</td>
                            <td colspan="3">
                                <input type="text" style="width: 80%; background-color: #d8e1ac; height: 44px; margin-bottom: 1px;" />
                                <input type="submit" value="Submit" /></td>
                        </tr>
                        <tr>
                            <td colspan="1" class="auto-style1">
                                <img src="ChickenWingsPic.jpg" class="smallPic" /></td>
                            <td colspan="5">Wow. This is very nice</td>
                        </tr>
                        <tr>
                            <td colspan="1" class="auto-style1">
                                <img src="ChickenWingsPic.jpg" class="smallPic" /></td>
                            <td colspan="5">This looks so scrumptuous. Can I add mayonnaise to it while frying</td>
                        </tr>
                        <tr>
                            <td colspan="1" class="auto-style2">
                                <img src="ChickenWingsPic.jpg" class="smallPic" /></td>
                            <td colspan="5" class="auto-style3">I think two hours is too long to prepare a single dish</td>
                        </tr>
                        <tr>
                            <td colspan="1" class="auto-style1">
                                <img src="ChickenWingsPic.jpg" class="smallPic" /></td>
                            <td colspan="5">Really, One cup of sugar?</td>
                        </tr>
                        <tr>
                            <td colspan="1" class="auto-style1">
                                <img src="ChickenWingsPic.jpg" class="smallPic" /></td>
                            <td colspan="5">Wow, you used sugar to cook<br />
                                and you even added mayonaise
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1" class="auto-style1">
                                <img src="ChickenWingsPic.jpg" class="smallPic" /></td>
                            <td colspan="5">Wow, you used sugar to cook</td>
                        </tr>
                    </table>
                </div>

                <div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
