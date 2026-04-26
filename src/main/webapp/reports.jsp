<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reports</title>

<style>
body{
    font-family:Arial;
    background:#f0fff0;
}
.box{
    width:450px;
    margin:50px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}
h1{
    text-align:center;
    color:green;
}
label{
    font-weight:bold;
    display:block;
    margin-top:12px;
}
select,input{
    width:100%;
    padding:10px;
    margin-top:5px;
    border:1px solid #ccc;
    border-radius:5px;
}
input[type=submit]{
    background:green;
    color:white;
    border:none;
    margin-top:20px;
    cursor:pointer;
}
a{
    display:block;
    text-align:center;
    margin-top:15px;
}
</style>
</head>
<body>

<div class="box">
<h1>Generate Report</h1>

<form action="ReportCriteriaServlet" method="post">

<label>Select Report Type</label>
<select name="type">
<option value="date">Patients by Date</option>
<option value="ailment">Patients by Ailment</option>
<option value="doctor">Patients by Doctor</option>
</select>

<label>Enter Value</label>
<input type="text" name="value" required>

<input type="submit" value="Generate Report">

</form>

<a href="index.jsp">Back to Home</a>
</div>

</body>
</html>