<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report Result</title>

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial, sans-serif;
    background:linear-gradient(to right,#eef2f3,#dff1ff);
}

.loader-box{
    width:420px;
    margin:120px auto;
    background:white;
    padding:35px;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
    text-align:center;
}

h1{
    color:#003366;
    margin-bottom:15px;
}

p{
    font-size:18px;
    color:#444;
}

.spinner{
    margin:20px auto;
    width:45px;
    height:45px;
    border:5px solid #ddd;
    border-top:5px solid green;
    border-radius:50%;
    animation:spin 1s linear infinite;
}

@keyframes spin{
    100%{transform:rotate(360deg);}
}
</style>

<meta http-equiv="refresh" content="2;URL=ReportServlet">

</head>
<body>

<div class="loader-box">

<h1>Generating Report...</h1>

<div class="spinner"></div>

<p>Please wait while loading patient records.</p>

</div>

</body>
</html>