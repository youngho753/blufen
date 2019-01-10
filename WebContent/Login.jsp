<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>blufen에 오신걸 환영합니다.</title>
<link rel="stylesheet" href="css/blufen.css">
<link rel="stylesheet" href = "css/bootstrap.css">
</head>
<body>
	
	<div class="container">
		<div class = "jumbotron" style = "padding-top: 20px;">
			<form method = "post" action = "LoginAction.jsp">
				<h3 style = "text-align : center;">로그인화면</h3>
				<div class = "form-group">
					<input type = "text" class = "form-control" placeholder = "아이디" name = "userID" maxlength = "20">
				</div>
				<div class = "form-group">
					<input type = "password" class = "form-control" placeholder = "비밀번호" name = "userPassword" maxlength = "20">
				</div>
					<input type = "submit" class = "btn-btn-primory form-control" value = "로그인">
			</form>
			
			<div style = "margin-bottom : 30px;">
			<form method = "post" action = "register.jsp" style = "margin-top : 5px; float : left; width : 50%;">
				<input type = "submit" class = "btn-btn-primory form-control" value = "아이디 찾기">
			</form>
			<form method = "post" action = "register.jsp" style = "margin-top : 5px; float : left; width : 50%;">
				<input type = "submit" class = "btn-btn-primory form-control" value = "비밀번호 찾기">
			</form>
			</div>
			
			
			
			
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>﻿
	<script src= "js/bootstrap.js">	</script>
</body>
</html>