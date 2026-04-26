<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Patient</title>

<style>
body{
    font-family:Arial;
    background:#fff5f5;
}
.box{
    width:420px;
    margin:70px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}
h1{
    text-align:center;
    color:#cc0000;
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
    background:#cc0000;
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
<h1>Delete Patient</h1>

<form action="DeletePatientServlet" method="post">

<label>Patient ID</label>
<input type="text" name="id" required>

<input type="submit" value="Delete Patient">

</form>

<a href="index.jsp">Back to Home</a>
</div>

</body>
</html>