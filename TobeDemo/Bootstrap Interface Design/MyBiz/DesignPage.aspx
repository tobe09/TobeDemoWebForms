<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignPage.aspx.cs" Inherits="TobeDemo.Bootstrap_Interface_Design.MyBiz.Design_Page" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%-- maximum-scale=1, user-scalable=no --%>
    <title>My School Student Registration</title>

    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Open+Sans|Raleway" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Normalize.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/studentStyles.css" rel="stylesheet">
</head>

<body id="top" data-spy="scroll">

    <!--top header-->
    <div id="mainHeader">
        <header id="heading">

            <section class="top-nav hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="top-left">

                                <ul>
                                    <li><a href="http://www.facebook.com" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="http://www.twitter.com" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="http://www.twitter.com" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    <li><a href="http://www.twitter.com" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                </ul>

                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="top-right">
                                <p>Location:<span>Lagos, Nigeria</span></p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <!--main-nav-->
            <div id="main-nav">

                <nav class="navbar">
                    <div class="container">

                        <div class="navbar-header">
                            <a href="DesignPage.aspx" class="navbar-brand">My School</a>
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                                <span class="sr-only">Toggle</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <div class="navbar-collapse collapse" id="navigation">

                            <ul class="nav navbar-nav navbar-right">
                                <li><a id="homeLink" href="#home">Home</a></li>
                                <li><a id="allLink" href="#allStudents">All Students</a></li>
                                <li><a id="oneLink" href="#oneStudent">Single Student</a></li>
                                <li><a id="addLink" href="#addStudent">Add Student</a></li>
                                <li><a id="editLink" href="#editStudent">Edit Student Info</a></li>
                                <li><a id="deleteLink" href="#deleteStudent">Delete Student</a></li>
                                <li><a id="aboutLink" href="#about">About</a></li>
                            </ul>

                        </div>

                    </div>
                </nav>
            </div>

        </header>
    </div>


    <div id="mainContents">

        <!--HOME-->
        <div id="home">

            <!--slider-->
            <div id="slider" class="flexslider">
                <ul class="slides">
                    <li>
                        <img src="images/slider/slider1.jpg">
                        <%-- <div class="caption">
                            <h2><span>an awesome website</span></h2>
                            <h2><span>html theme</span></h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <button class="btn">Read More</button>
                        </div>--%>
                    </li>
                    <li>
                        <img src="images/slider/slider2.jpg">
                        <%--  <div class="caption">
                            <h2><span>yet another slide</span></h2>
                            <h2><span>html theme</span></h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <button class="btn">Read More</button>
                        </div>--%>
                    </li>
                    <li>
                        <img src="images/slider/slider3.jpg">
                        <%--<div class="caption">
                            <h2><span>one more slide</span></h2>
                            <h2><span>html theme</span></h2>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <button class="btn">Read More</button>
                        </div>--%>
                    </li>
                </ul>
            </div>

            <div id="homeContent">
                <br />
                <br />
            </div>

        </div>


        <!--ALL STUDENTS-->
        <div id="allStudents" class="topPadding">
            <div class="text-center heading">
                <h2>ALL STUDENTS<br />
                    <small>(All registered students in the database- <span>3</span>)</small></h2>
            </div>
            <br />
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table id="allTable" class="table table-striped table-responsive text-center">
                            <%--<caption class="text-center">Individual Student Information</caption>--%>
                            <thead>
                                <tr>
                                    <th class="text-center">S/N</th>
                                    <th class="text-center">Student Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <table class="table">
                                            <tbody>
                                                <tr class="info">
                                                    <td>Student Unique ID</td>
                                                    <td><span id="guidAll"></span></td>
                                                </tr>
                                                <tr class="success">
                                                    <td>Matriculation Number</td>
                                                    <td><span id="matNoAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Surname</td>
                                                    <td><span id="lNameAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>First Name</td>
                                                    <td><span id="fNameAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Middle Name</td>
                                                    <td><span id="mNameAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty</td>
                                                    <td><span id="facAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Department</td>
                                                    <td><span id="deptAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Level</td>
                                                    <td><span id="levelAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Date of Birth</td>
                                                    <td><span id="dobAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Mobile Number</td>
                                                    <td><span id="phoneNoAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Email Address</td>
                                                    <td><span id="emailAll"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>Date registered</td>
                                                    <td><span id="dRegAll"></span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
        </div>


        <!--SINGLE STUDENT-->
        <div id="oneStudent" class="topPadding">
            <div class="text-center heading">
                <h2>SINGLE STUDENT</h2>
            </div>
            <br />
            <br />
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <label>Matriculation Number (Unique Id/E-mail Address/First Name)</label>
                        <input type="text" class="form-control" placeholder="Matriculation Number" />
                        <br />
                        <input type="submit" id="btnOneStd" class="btn btn-default" value="Submit" />
                    </div>
                </div>
            </div>

            <br />
            <div class="text-center text-success fontMsg"><span id="msgOne">Student Information Successfully Generated</span></div>
            <br />

            <div id="oneResult" class="container">
                <div class="row">
                    <div class="col-md-10 col-md-push-1">
                        <table id="oneTable" class="table table-striped table-responsive text-center">
                            <caption class="text-center"><span class="info">Unique Id: <span id="guidOne"></span></span></caption>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="success">Matriculation Number: <span id="matNoOne"></span></td>
                                </tr>
                                <tr>
                                    <td>SurName</td>
                                    <td><span id="lNameOne"></span></td>
                                </tr>
                                <tr>
                                    <td>First Name</td>
                                    <td><span id="fNameOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Middle Name</td>
                                    <td><span id="mNameOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Faculty</td>
                                    <td><span id="facOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Department</td>
                                    <td><span id="deptOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Level</td>
                                    <td><span id="levelOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td><span id="dobOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Mobile Number</td>
                                    <td><span id="phoneNoOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Email Address</td>
                                    <td><span id="emailOne"></span></td>
                                </tr>
                                <tr>
                                    <td>Date registered</td>
                                    <td><span id="dRegOne"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
        </div>


        <!--ADD STUDENT-->
        <div id="addStudent" class="topPadding">
            <div class="text-center heading">
                <h2>ADD STUDENT</h2>
            </div>
            <br />
            <br />
            <div id="addForm" class="container">
                <div class="row">
                    <div class="col-md-10 col-md-push-0">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Surname</label>
                                <div class="col-md-8">
                                    <input class="form-control" id="lNameAdd" type="text"
                                        placeholder="Enter SurName">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    First name
                                </label>
                                <div class="col-md-8">
                                    <input class="form-control" id="fNameAdd" type="text"
                                        placeholder="Enter first name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Middle Name
                                </label>
                                <div class="col-md-8">
                                    <input type="text" id="mNameAdd" class="form-control"
                                        placeholder="Enter Middle Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Faculty
                                </label>
                                <div class="col-md-8">
                                    <span id="facAdd">
                                        <select id="facListAdd" class="dropdown addDropdown dropdown-header">
                                            <option>first</option>
                                            <option>second</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Department
                                </label>
                                <div class="col-sm-8">
                                    <span id="deptAdd">
                                        <select id="deptListAdd" class="dropdown addDropdown dropdown-header">
                                            <option>first</option>
                                            <option>second</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Level
                                </label>
                                <div class="col-md-8">
                                    <span id="levelAdd">
                                        <select id="levelListAdd" class="dropdown addDropdown dropdown-header">
                                            <option>first</option>
                                            <option>second</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Date of Birth
                                </label>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-3 col-md-push-0">
                                            <input type="text" class="form-control" id="dobDayAdd" placeholder="Day">
                                        </div>
                                        <div class="col-md-3 col-md-push-1">
                                            <input type="text" class="form-control" id="dobMonthAdd" placeholder="Month">
                                        </div>
                                        <div class="col-md-3 col-md-push-2">
                                            <input type="text" class="form-control" id="dobYearAdd" placeholder="Year">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Mobile Number
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="phoneNoAdd">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Email
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="emailAdd">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2 col-md-push-6">
                                    <br />
                                    <br />
                                    <input type="submit" class="btn btn-default" value="Submit" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div id="addResult" class="container">
                <div class="row">
                    <div class="col-md-9 col-md-push-1">

                        <div class="text-center text-success fontMsg"><span id="msgAdd">Student Successfully Added</span></div>
                        <br />
                        <br />
                        <table id="addTable" class="table table-striped table-responsive text-center">
                            <caption class="text-center">Student Unique Id: <span id="addStdId"></span></caption>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="success">Matriculation Number: <span id="matNoAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>SurName</td>
                                    <td><span id="lNameAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>First Name</td>
                                    <td><span id="fNameAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Middle Name</td>
                                    <td><span id="mNameAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Faculty</td>
                                    <td><span id="facAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Department</td>
                                    <td><span id="deptAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Level</td>
                                    <td><span id="levelAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td><span id="dobAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Mobile Number</td>
                                    <td><span id="phoneNoAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Email Address</td>
                                    <td><span id="emailAddRes"></span></td>
                                </tr>
                                <tr>
                                    <td>Date registered</td>
                                    <td><span id="dRegAddRes"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>


        <!--EDIT STUDENT INFORMATION-->
        <div id="editStudent" class="topPadding">
            <div class="text-center heading">
                <h2>EDIT STUDENT INFORMATION</h2>
            </div>
            <br />
            <br />
            <div id="editShow" class="container">
                <div class="row">
                    <div class="col-md-8">
                        <label>Matriculation Number (Unique Id/E-mail Address/First Name)</label>
                        <input type="text" class="form-control" placeholder="Matriculation Number" />
                        <br />
                        <input id="btnEditShow" type="submit" class="btn btn-default" value="Submit" />
                    </div>
                </div>
            </div>
            <br />
            <div class="text-center text-success fontMsg"><span id="msgEdit">Student Information Successfully Modified</span></div>
            <br />
            <br />
            <div id="editForm" class="container">
                <div class="row">
                    <div class="col-md-10 col-md-push-1">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Last name</label>
                                <div class="col-md-8">
                                    <input class="form-control" id="lNameEdit" type="text"
                                        placeholder="Enter Last Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    First name
                                </label>
                                <div class="col-md-8">
                                    <input class="form-control" id="fNameEdit" type="text"
                                        placeholder="Enter first name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Middle Name
                                </label>
                                <div class="col-md-8">
                                    <input type="text" id="mNameEdit" class="form-control"
                                        placeholder="Enter Middle Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Department
                                </label>
                                <div class="col-md-8">
                                    <select id="deptEdit" class="form-control dropdown">
                                        <option>select 1</option>
                                        <option>select 2</option>
                                        <option>select 3</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Age
                                </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="ageEdit">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Phone Number
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="phoneEdit">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">
                                    Email
                                </label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="emailEdit">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 col-md-push-6">
                                    <input id="btnEditSubmit" type="submit" class="btn btn-default" value="Submit" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div id="editResult" class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-push-2">
                            <table id="editResTable" class="table table-striped table-responsive text-center">
                                <caption class="text-center"><span class="info">Student Unique Id: <span id="guidEditRes"></span></span></caption>
                                <tbody>
                                    <tr>
                                        <td colspan="2" class="success">Matriculation Number: <span id="matNoEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>SurName</td>
                                        <td><span id="lNameEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>First Name</td>
                                        <td><span id="fNameEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Middle Name</td>
                                        <td><span id="mNameEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Faculty</td>
                                        <td><span id="facEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Department</td>
                                        <td><span id="deptEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Level</td>
                                        <td><span id="levelEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth</td>
                                        <td><span id="dobEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Mobile Number</td>
                                        <td><span id="phoneNoEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Email Address</td>
                                        <td><span id="emailEditRes"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Date registered</td>
                                        <td><span id="dRegEditRes"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />
            </div>
        </div>


        <!--DELETE INFORMATION-->
        <div id="deleteStudent" class="topPadding">
            <div class="text-center heading">
                <h2>DELETE STUDENT</h2>
            </div>
            <br />
            <br />
            <div id="delShow" class="container">
                <div class="row">
                    <div class="col-md-8">
                        <label>Matriculation Number (Unique Id/E-mail Address/First Name)</label>
                        <input type="text" class="form-control" placeholder="Matriculation Number" />
                        <br />
                        <input id="btnDelShow" type="submit" class="btn btn-default" value="Submit" />
                    </div>
                </div>
            </div>
            <br />
            <div class="text-center text-success fontMsg"><span id="msgDel">Student Successfully Deleted</span></div>
            <br />
            <br />
            <div id="delResult" class="container">
                <div class="row">
                    <div class="col-md-8 col-md-push-2">
                        <table id="delTable" class="table table-striped table-responsive text-center">
                            <caption class="text-center"><span class="info">Student Unique Id: <span id="guidDel"></span></span></caption>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="success">Matriculation Number: <span id="matNoDel"></span></td>
                                </tr>
                                <tr>
                                    <td>SurName</td>
                                    <td><span id="lNameDel"></span></td>
                                </tr>
                                <tr>
                                    <td>First Name</td>
                                    <td><span id="fNameDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Middle Name</td>
                                    <td><span id="mNameDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Faculty</td>
                                    <td><span id="facDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Department</td>
                                    <td><span id="deptDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Level</td>
                                    <td><span id="levelDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td><span id="dobDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Mobile Number</td>
                                    <td><span id="phoneNoDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Email Address</td>
                                    <td><span id="emailDel"></span></td>
                                </tr>
                                <tr>
                                    <td>Date registered</td>
                                    <td><span id="dRegDel"></span></td>
                                </tr>
                            </tbody>
                        </table>
                        <br />
                        <div class="row">
                            <div class="col-md-2 col-md-push-5">
                                <input id="btnDelSubmit" type="submit" value="Delete" class="btn btn-default" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>


        <!--about-->
        <div id="about" class="topPadding">
            <div class="text-center heading">
                <h2>ABOUT</h2>
            </div>
            <br />
            <br />


            <!--about bg-->
            <div id="about-bg">

                <div class="container">
                    <div class="row">
                        <div class="about-bg-heading">
                            <h1>statistics about us</h1>
                            <p>what we have achieved so far</p>
                        </div>

                        <div class=" col-xs-12 col-md-3">
                            <div class="about-bg-wrapper">
                                <h1 class="count">215</h1>
                                <p>students</p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-md-3">
                            <div class="about-bg-wrapper">
                                <h1 class="count">106</h1>
                                <p>projects</p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-md-3">
                            <div class="about-bg-wrapper">
                                <h1 class="count">47</h1>
                                <p>Awards</p>
                            </div>
                        </div>

                        <div class="col-xs-12 col-md-3">
                            <div class="about-bg-wrapper">
                                <h1 class="count">3151</h1>
                                <p>alumni</p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="cover"></div>

            </div>
            <br />
            <br />
            <!--about wrapper left-->
            <div class="container">

                <div class="row">
                    <div class="col-xs-12 hidden-sm col-md-5">

                        <div class="about-left">
                            <img src="images/about/about1.jpg" alt="">
                        </div>

                    </div>

                    <!--about wrapper right-->
                    <div class="col-xs-12 col-md-7">
                        <div class="about-right">
                            <div class="about-right-heading">
                                <h1>About Project</h1>
                            </div>

                            <div class="about-right-boot">
                                <div class="about-right-wrapper">
                                    <a href="#">
                                        <h3>Boost Your Business</h3>
                                    </a>
                                    <p>
                                        Michael Knight a young loner on a crusa champion the cause of the innocent. The helpless. 
                                    powerless in a world of operate above the law.
                                    </p>
                                </div>
                            </div>

                            <div class="about-right-best">
                                <div class="about-right-wrapper">
                                    <a href="#">
                                        <h3>Best Business Statitics</h3>
                                    </a>
                                    <p>
                                        Michael Knight a young loner on a crusa champion the cause of the innocent. 
                                    The helpless. powerless in a world of operate above the law.
                                    </p>
                                </div>
                            </div>

                            <div class="about-right-support">
                                <div class="about-right-wrapper">
                                    <a href="#">
                                        <h3>24/7 Online Support</h3>
                                    </a>
                                    <p>
                                        Michael Knight a young loner on a crusa champion the cause of the innocent. 
                                    The helpless. powerless in a world of operate above the law.
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <%--<div id="google-map" data-latitude="40.713732" data-longitude="-74.0092704"></div>--%>
        </div>

    </div>


    <!--footer-->
    <div id="mainFooter">

        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="footer-heading">
                            <h3>Footer Information</h3>
                        </div>
                        <div class="text-info">
                            <p>To explore strange new worlds to seek out new life and new civilizations to boldly go where no man has gone before. It's time to play the music.</p>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="footer-heading">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="images/footer/footer1.jpg" width="200" height="140" alt="" />
                                </div>
                                <div class="col-md-6">
                                    <img src="images/footer/footer2.jpg" width="200" height="140" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!--bottom footer-->
        <div id="bottom-footer" class="hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-left">
                            &copy; TCee. All rights reserved
                            <div class="credits">
                                <strong>Email Address: </strong>
                                <a href="mailto:Chineketobenna@gmail.com">Chineketobenna@gmail.com</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="footer-right">
                            <ul class="list-unstyled list-inline pull-right">
                                <li><a href="#home">Home</a></li>
                                <li><a href="#allStudents">All Students</a></li>
                                <li><a href="#oneStudent">Single Student</a></li>
                                <li><a href="#addStudent">Add Student</a></li>
                                <li><a href="#editStudent">Edit Student Info</a></li>
                                <li><a href="#deleteStudent">Delete Student</a></li>
                                <li><a href="#about">About</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/jquery.inview.js"></script>
    <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/script.js"></script>
    <script src="contactform/contactform.js"></script>

</body>
</html>
