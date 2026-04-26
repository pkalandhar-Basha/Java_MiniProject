<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>

<style>
body{
    font-family:Arial;
    background:#f0f8ff;
    margin:0;
    padding:0;
}

.container{
    width:450px;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h1{
    text-align:center;
    color:darkblue;
    margin-bottom:25px;
}

label{
    font-weight:bold;
    display:block;
    margin-top:12px;
    margin-bottom:5px;
}

input,select{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:15px;
}

input[type=submit]{
    background:green;
    color:white;
    border:none;
    margin-top:20px;
    cursor:pointer;
    font-size:16px;
}

input[type=submit]:hover{
    background:darkgreen;
}

a{
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    color:blue;
}
</style>

</head>
<body>

<div class="container">

<h1>Add Patient</h1>

<form action="AddPatientServlet" method="post">

<label>Patient ID</label>
<input type="text" name="id" required>

<label>Patient Name</label>
<input type="text" name="name" required>

<label>Age</label>
<input type="number" name="age" required>

<label>Gender</label>
<select name="gender" required>
    <option value="">-- Select Gender --</option>
    <option value="Male">Male</option>
    <option value="Female">Female</option>
</select>

<label>Admission Date</label>
<input type="date" name="date" required>

<label>Ailment</label>
<input type="text" name="ailment" required>

<label>Assigned Doctor</label>
<input type="text" name="doctor" required>

<input type="submit" value="Add Patient">

</form>

<a href="index.jsp">Back to Home</a>

</div>

</body>
</html>