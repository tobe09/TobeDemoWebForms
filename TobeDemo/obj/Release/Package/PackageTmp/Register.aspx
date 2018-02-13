<%@ Page Language="C#" Title="Register" MasterPageFile="~/MasterPages/TobeDemoMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TobeDemo.Register" %>

<asp:Content ID="RegisterContent" ContentPlaceHolderID="Content" runat="server">
     <asp:UpdatePanel ID="up1" runat="server">
                <ContentTemplate>
    <div style="margin-left:300px;" id="MainDiv" runat="server">
        <div style="margin-left:100px; font-size:26px">Registration Page </div><br /><br />
        <div style="margin-left:100px;">
        <asp:RadioButton ID="StudentButton" Text="Student" AutoPostBack="true" GroupName="group" runat="server" OnCheckedChanged="StudentButton_CheckedChanged" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="StaffButton" Text="Staff" AutoPostBack="true" GroupName="group" runat="server" OnCheckedChanged="StaffButton_CheckedChanged" />
            </div>
        <div id="StaffDiv" style="margin-left:57px;" runat="server" visible="false">
            <asp:RadioButton ID="TeachingStaffButton" Text="Teaching Staff" AutoPostBack="true" GroupName="staff" runat="server" OnCheckedChanged="TeachingStaffButton_CheckedChanged" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="NonTeachingStaffButton" Text="Non-Teaching Staff" AutoPostBack="true" GroupName="staff" runat="server" OnCheckedChanged="NonTeachingStaffButton_CheckedChanged" />
        </div></div>
    <br /><div style="margin-left:350px;"><asp:Label ID="InfoLabel" runat="server" Text="" Visible="false"></asp:Label></div>
        <div style="margin-left:300px;" id="InfoDiv" runat="server" visible="false">
        <br />(Enter all pertinent information!)<br />
        <table id="PersonalInfo" runat="server">
        <tr><td colspan="2" class="heading">Personal Information</td></tr>
        <tr>
            <td style="width: 300px"> <asp:Label ID="FirstNameLabel" runat="server" Text="First Name"></asp:Label> </td>
            <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="FirstNameBox" runat="server"></asp:TextBox> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FirstNameBox" CssClass="alert" Display="Dynamic" ErrorMessage="First name must be between 2 and 32 characters" Text="*" ValidationExpression="^[\w\W]{2,32}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameBox" CssClass="alert" Display="Dynamic" ErrorMessage="First name cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 40px"> 
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 300px; height: 32px;"> <asp:Label ID="SurnameLabel" runat="server" Text="Last name"></asp:Label> </td>
            <td style="width: 300px; height: 32px;"> <asp:TextBox CssClass="TextBox" ID="SurnameBox" runat="server"></asp:TextBox> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server" ControlToValidate="SurnameBox" CssClass="alert" Display="Dynamic" ErrorMessage="Surname must be between 2 and 32 characters" Text="*" ValidationExpression="^[\w\W]{2,32}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="SurnameBox" CssClass="alert" Display="Dynamic" ErrorMessage="Surname cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 99px; height: 32px;"> 
            </td>
        </tr>
        <tr>
            <td style="width: 300px"> <asp:Label ID="OtherNameLabel" runat="server" Text="Other Name(s)"></asp:Label> </td>
            <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="OtherNameBox" runat="server"></asp:TextBox> </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 300px"><asp:Label ID="UsernameLabel" runat="server" Text="Choose your username"></asp:Label> </td>
            <td style="width: 300px"><asp:TextBox CssClass="TextBox" ID="UsernameBox" runat="server"></asp:TextBox> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ControlToValidate="UsernameBox" CssClass="alert" Display="Dynamic" ErrorMessage="Username must be between 2 and 32 characters" Text="*" ValidationExpression="^[\w\W]{2,32}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="UsernameBox" CssClass="alert" Display="Dynamic" ErrorMessage="Username cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
            <tr>
                <td style="width: 300px">Password</td>
                <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ControlToValidate="PasswordBox" CssClass="alert" Display="Dynamic" ErrorMessage="Password must be between 4 and 32 characters" Text="*" ValidationExpression="^[\w\W]{4,32}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="PasswordBox" CssClass="alert" Display="Dynamic" ErrorMessage="Password cannot be empty" Text="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 32px; width: 300px;">Confirm Password</td>
                <td style="height: 32px; width: 300px;"> <asp:TextBox CssClass="TextBox" ID="ConfirmPasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="ConfirmPasswordBox" CssClass="alert" Display="Dynamic" ErrorMessage="Confirm your password" Text="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="PasswordBox" ControlToValidate="ConfirmPasswordBox" CssClass="alert" Display="Dynamic" ErrorMessage="Password Mismatch" Text="*"></asp:CompareValidator>
                </td>
                <td style="height: 32px">
                    &nbsp;</td>
            </tr>
        <tr>
            <td style="width: 300px; height: 32px;"> <asp:Label ID="DobLabel" runat="server" Text="Date of Birth (dd/mm/yyyy)"></asp:Label> </td>
            <td style="width: 300px; height: 32px;"> <asp:TextBox CssClass="TextBox" ID="DobBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="DobBox" CssClass="alert" Display="Dynamic" ErrorMessage="Enter your date of birth" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ControlToValidate="DobBox" CssClass="alert" ErrorMessage="Your date of birth should follow this format: 01/01/1990" Text="*" ValidationExpression="^\d{2}/\d{2}/\d{4}$"></asp:RegularExpressionValidator>
            </td>
             <td style="height: 32px">
            </td>        
        </tr>
        <tr>
            <td style="width: 300px"> <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label></td>
            <td style="width: 300px"><asp:DropDownList CssClass="TextBox" ID="GenderList" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
                 </asp:DropDownList></td>
            <td> </td>
        </tr>
        <tr>
            <td style="width: 300px"> <asp:Label ID="Label12" runat="server" Text="Marital Status"></asp:Label> </td>
            <td style="width: 300px"> 
               <asp:DropDownList CssClass="TextBox" ID="MaritalList" runat="server">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
             <td> </td>
        </tr>
            </table><br />
            <table><tr><td class="heading" style="width: 600px">Resource Information</td></tr></table>
        <table id="StaffInfo" runat="server" visible="false">
                <tr>
                <td style="width: 275px"> <asp:Label ID="Label2" runat="server" Text="Staff ID"></asp:Label></td>
                <td style="width: 300px"><asp:TextBox CssClass="TextBox" ID="StaffIdBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="StaffIdBox" CssClass="alert" Display="Dynamic" ErrorMessage="Staff ID cannot be empty" Text="*"></asp:RequiredFieldValidator>
                    </td>
                    <td> 
                        &nbsp;</td>
                    </tr>
                <tr>
                <td style="width: 275px"> <asp:Label ID="Label6" runat="server" Text="Designation"></asp:Label></td>
                <td><asp:TextBox CssClass="TextBox" ID="StaffDesgBox" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="StaffDesgBox" CssClass="alert" Display="Dynamic" ErrorMessage="Staff designation cannot be empty" Text="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        <table id="StudentInfo" runat="server" visible="false">
            <tr>
                <td style="width: 273px"> <asp:Label ID="Label11" runat="server" Text="Matriculation Number"></asp:Label></td>
                <td style="width: 300px"><asp:TextBox CssClass="TextBox" ID="MatricBox" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="MatricBox" CssClass="alert" Display="Dynamic" ErrorMessage="Matriculation number cannot be empty" Text="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table id="FacDept" runat="server" visible="false">
            <tr>
                <td style="width: 274px; height: 26px;"> <asp:Label ID="Label8" runat="server" Text="Faculty"></asp:Label></td>
                <td style="width: 300px; height: 26px;"> <asp:DropDownList CssClass="TextBox" ID="FacList" runat="server">
                    <asp:ListItem>Technology</asp:ListItem>
                    <asp:ListItem>Education</asp:ListItem>
                    <asp:ListItem>Law</asp:ListItem>
                    <asp:ListItem>Pharmacy</asp:ListItem>
                    <asp:ListItem>Sciences</asp:ListItem>
                    <asp:ListItem>Foreign Languages</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                      </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 274px"> <asp:Label ID="Label10" runat="server" Text="Department"></asp:Label></td>
                <td style="width: 300px"><asp:TextBox CssClass="TextBox" ID="DeptBox" runat="server"></asp:TextBox> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ControlToValidate="DeptBox" CssClass="alert" Display="Dynamic" ErrorMessage="Enter a valid department" Text="*" ValidationExpression="^[\w\W]{2,64}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="DeptBox" CssClass="alert" Display="Dynamic" ErrorMessage="Department cannot be empty" Text="*"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 22px">
                    &nbsp;</td>
                </tr>
        </table><br />
        <table>
        <tr><td colspan="2" class="heading">Contact Information</td></tr>
        <tr>
            <td style="width: 272px"><asp:Label ID="PhoneLabel" runat="server" Text="Mobile Number"></asp:Label> </td>
            <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="PhoneBox" runat="server" TextMode="SingleLine"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" ControlToValidate="PhoneBox" CssClass="alert" Display="Dynamic" ErrorMessage="Enter a valid phone number" Text="*" ValidationExpression="^\+?[\d]{4,16}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="PhoneBox" CssClass="alert" Display="Dynamic" ErrorMessage="Phone number cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 272px; height: 32px;"><asp:Label ID="EmailLabel" runat="server" Text="Email Address"></asp:Label></td>
            <td style="width: 300px; height: 32px;"> <asp:TextBox CssClass="TextBox" ID="EmailBox" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" ControlToValidate="EmailBox" CssClass="alert" Display="Dynamic" ErrorMessage="Enter a valid email address" Text="*" ValidationExpression="^[(\w)+@(\w)+\.(\w)+$]{5,32}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="EmailBox" CssClass="alert" Display="Dynamic" ErrorMessage="Email Address cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 32px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 272px"> <asp:Label ID="CountryLabel" runat="server" Text="Country"></asp:Label></td>
            <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="CountryBox" runat="server"></asp:TextBox></td>
            <td> </td>
        </tr>
        <tr>
            <td style="width: 272px; height: 26px;"> <asp:Label ID="StateLabel" runat="server" Text="State of Origin"></asp:Label></td>
            <td style="width: 300px; height: 26px;"> <asp:TextBox CssClass="TextBox" ID="StateBox" runat="server"></asp:TextBox></td>
            <td style="height: 26px"> </td>
        </tr>
        <tr>
            <td style="width: 272px"> <asp:Label ID="LocationLabel" runat="server" Text="State of residence"></asp:Label></td>
            <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="LocationBox" runat="server"></asp:TextBox> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ControlToValidate="LocationBox" CssClass="alert" Display="Dynamic" ErrorMessage="Enter a valid state of residence" Text="*" ValidationExpression="^[\w\W]{2,64}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="LocationBox" CssClass="alert" Display="Dynamic" ErrorMessage="State of residence cannot be empty cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 272px" > <asp:Label ID="Label4" runat="server" Text="LGA of residence"></asp:Label></td>
            <td style="width: 300px"> <asp:TextBox CssClass="TextBox" ID="LocationLgaBox" runat="server"></asp:TextBox> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ControlToValidate="LocationBox" CssClass="alert" Display="Dynamic" ErrorMessage="Enter a valid Local Government Area" Text="*" ValidationExpression="^[\w\W]{2,64}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="LocationBox" CssClass="alert" Display="Dynamic" ErrorMessage="Local Government Area cannot be empty" Text="*"></asp:RequiredFieldValidator>
            </td>
            <td >
                &nbsp;</td>
        </tr>
            </table>
        <table style="width: 650px;">
        <tr style="width: 600px"><td colspan="2" class="heading" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Academic Information</td></tr>
            <tr>
                <td style="width: 264px; height: 32px;"> <asp:Label ID="Label1" runat="server" Text="Primary School"></asp:Label></td>
                <td style="width: 250px; height: 32px;"><asp:TextBox CssClass="TextBox" ID="PriBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="alert" ID="RegularExpressionValidator8" runat="server" ErrorMessage="Enter a valid primary school" Text="*" ControlToValidate="PriBox" ValidationExpression="^[\w\W]{2,128}$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Primary school cannot be empty" Text="*" ControlToValidate="PriBox" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="width:100px; height: 32px"> <asp:DropDownList ID="PriList" runat="server" Width="100px">
                    <asp:ListItem>First School Leaving Certificate</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                     </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td  style="width: 264px; height: 32px;"> <asp:Label ID="Label3" runat="server" Text="Secondary School"></asp:Label></td>
                <td style="width: 250px; height: 32px;"> <asp:TextBox ID="SecBox" CssClass="TextBox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="alert" ID="RegularExpressionValidator9" runat="server" ErrorMessage="Enter a valid secondary school" Text="*" ControlToValidate="SecBox" ValidationExpression="^[\w\W]{2,128}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Secondary school cannot be empty" Text="*" ControlToValidate="SecBox" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="width:100px; height: 32px;" > <asp:DropDownList ID="SecList" runat="server" Width="100px">
                    <asp:ListItem>WASSCE Certificate</asp:ListItem>
                    <asp:ListItem>GCE Certificate</asp:ListItem>
                    <asp:ListItem>NECO Certificate</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
               </td>
            </tr>
            </table>
        <table id="UniTable" runat="server" visible="false">
            <tr>
                <td style="width: 274px; height: 32px;"> <asp:Label ID="Label5" runat="server" Text="University"></asp:Label></td>
                <td style="width: 258px; height: 32px;"> <asp:TextBox ID="UniBox" runat="server" CssClass="TextBox"></asp:TextBox> 
                    <asp:RegularExpressionValidator CssClass="alert" ID="RegularExpressionValidator10" runat="server" ErrorMessage="Enter a valid university" Text="*" ControlToValidate="UniBox" ValidationExpression="^[\w\W]{2,128}$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator11" runat="server" ErrorMessage="University cannot be empty" Text="*" ControlToValidate="UniBox" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="width:100px; height: 32px;"><asp:DropDownList ID="UniList" runat="server" style="margin-left: 0px" Width="100px">
                    <asp:ListItem>First Class</asp:ListItem>
                    <asp:ListItem>Second Class, Upper Division</asp:ListItem>
                    <asp:ListItem>Second Class, Lower Division</asp:ListItem>
                    <asp:ListItem>Third Class</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList> 
                </td>
            </tr>
            </table>
        <table>
            <tr>
                <td style="width: 273px;"> <asp:Label ID="Label7" runat="server" Text="Other Institution and certificate awarded"></asp:Label></td>
                <td style="width: 259px;"> <asp:TextBox ID="OtherBox1" runat="server" CssClass="TextBox"></asp:TextBox></td>
                <td style="width: 100px"> <asp:TextBox ID="OtherBox2" runat="server" Width="100px"></asp:TextBox></td>
            </tr>
            </table>
            <br />
            <br />
        <asp:CheckBox ID="OtherInfoCheckBox" Text="Other Information" runat="server" AutoPostBack="true" OnCheckedChanged="OtherInfoCheckBox_CheckedChanged" />
            <table id="OtherInfo" runat="server" visible="false">
            <tr><td colspan="2">(This information can be changed at a later date)<br />
                <br />
                </td></tr>
        <tr><td colspan="2" class="heading"> Biological Information</td></tr>
        <tr>
            <td style="width: 272px"><asp:Label ID="GroupLabel" runat="server" Text="Blood Group"></asp:Label></td>
            <td style="width: 300px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="GroupList" runat="server">
                <asp:ListItem>A</asp:ListItem> <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>AB</asp:ListItem> <asp:ListItem>O</asp:ListItem>
                 </asp:DropDownList></td>
            <td> </td>
        </tr>
        <tr>
            <td style="width: 272px"><asp:Label ID="TypeLabel" runat="server" Text="BloodType"></asp:Label></td>
            <td style="width: 300px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="TypeList" runat="server">
                <asp:ListItem>AA</asp:ListItem><asp:ListItem>AS</asp:ListItem><asp:ListItem>SS</asp:ListItem>
                </asp:DropDownList> </td>
            <td> </td>
        </tr>
            <tr>
                <td style="width: 272px"><asp:Label ID="MedLabel" runat="server" Text="Medical Information"></asp:Label></td>
                <td><asp:TextBox ID="MedBox" runat="server" CssClass="TextBox" TextMode="MultiLine" Width="180px"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 272px">
                    <br /><br /><br /> <asp:Label ID="Label9" runat="server" Text="Brief information about yourself"></asp:Label></td>
                <td style="width: 300px"> 
                    <br /> <br /><asp:TextBox ID="InfoBox" runat="server" TextMode="MultiLine" CssClass="TextBox" Width="180px"></asp:TextBox></td>
                <td> </td>
            </tr>
            </table>
            <table>
        <tr><td>
            <br />
            <br /></td></tr>
        <tr><td style="width:300px;" colspan="3"></td>
            <td> <asp:Button CssClass="Button" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" Height="32px" Width="123px" /></td>
        </tr>
        </table>
        <br />
        <asp:ValidationSummary style="text-align:center;" ID="ValidationSummary1" runat="server" CssClass="alert" HeaderText="Please correct the following errors: " />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </div>
         </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>