<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report Form</title>

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial, sans-serif;
    background:linear-gradient(to right,#dff6ff,#f6ffed);
}

.container{
    width:480px;
    margin:60px auto;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
}

h1{
    text-align:center;
    color:darkgreen;
    margin-bottom:25px;
}

label{
    display:block;
    margin-top:15px;
    font-weight:bold;
    color:#333;
}

select,input{
    width:100%;
    padding:10px;
    margin-top:6px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:15px;
}

button{
    width:100%;
    padding:12px;
    margin-top:25px;
    background:green;
    color:white;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:darkgreen;
}

a{
    display:block;
    text-align:center;
    margin-top:18px;
    text-decoration:none;
    color:blue;
    font-weight:bold;
}
</style>

</head>
<body>

<div class="container">

<h1>Generate Patient Report</h1>

<form action="ReportCriteriaServlet" method="post">

<label>Select Report Type</label>
<select name="type" required>
    <option value="">-- Select Report --</option>
    <option value="date">Patients by Date</option>
    <option value="ailment">Patients by Ailment</option>
    <option value="doctor">Patients by Doctor</option>
</select>

<label>Enter Value</label>
<input type="text" name="value" placeholder="Enter Date / Ailment / Doctor Name" required>

<button type="submit">Generate Report</button>

</form>

<a href="index.jsp">Back to Home</a>

</div>

</body>
</html>