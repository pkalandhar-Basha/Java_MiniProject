<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>

<link rel="stylesheet" href="style.css">

<style>
.menu-box{
    width:500px;
    margin:70px auto;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0 0 18px rgba(0,0,0,0.2);
}

.menu-box h1{
    margin-bottom:30px;
}

.menu-box a{
    display:block;
    width:80%;
    margin:12px auto;
    padding:14px;
    font-size:18px;
}
.footer{
    margin-top:25px;
    color:gray;
    font-size:14px;
}
</style>

</head>
<body>

<div class="menu-box">

<h1>Hospital Management System</h1>

<a href="patientadd.jsp">Add Patient</a>

<a href="patientupdate.jsp">Update Patient</a>

<a href="patientdelete.jsp">Delete Patient</a>

<a href="DisplayPatientsServlet">Display Patients</a>

<a href="reports.jsp">Reports</a>

<div class="footer">
Hospital Management Portal
</div>

</div>

</body>
</html>