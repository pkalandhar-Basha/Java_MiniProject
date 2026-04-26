<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient</title>

<style>
body{
    font-family:Arial;
    background:#eef7ff;
}
.box{
    width:420px;
    margin:60px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}
h1{
    text-align:center;
    color:#003366;
}
label{
    font-weight:bold;
    display:block;
    margin-top:12px;
}
input{
    width:100%;
    padding:10px;
    margin-top:5px;
    border:1px solid #ccc;
    border-radius:5px;
}
input[type=submit]{
    background:#007bff;
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
<h1>Update Patient</h1>

<form action="UpdatePatientServlet" method="post">

<label>Patient ID</label>
<input type="text" name="id" required>

<label>New Name</label>
<input type="text" name="name" required>

<input type="submit" value="Update Patient">

</form>

<a href="index.jsp">Back to Home</a>
</div>

</body>
</html>