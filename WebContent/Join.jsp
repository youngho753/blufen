<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/blufen.css">
<link rel="stylesheet" href="css/bootstrap.css">
<title>blufen에 오신걸 환영합니다.</title>
<body>
	
	<div class="container">
		<div class="jumbotron" style="padding-top: 20px;">
			<form method="post" action="JoinAction.jsp">
				<h3 style="text-align: center;">회원가입 화면</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디"
						name="userID" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호"
						name="userPassword" maxlength="20">
				</div>
				<div class="form-group" style="text-align:center;">
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary active"> <input type="radio"
							name="userGender" autocomplete="off" value="남자" checked>남자
						</label>
						 <label class="btn btn-primary"> <input type="radio"
							name="userGender" autocomplete="off" value="여자" checked>여자
						</label> 
						
					</div>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="홍길동"
						name="userName" maxlength="20">
				</div>
				<div class="form-group">
					<input type="email" class="form-control"
						placeholder="example@email.com" name="userEmail" maxlength="50">
				</div>
				<input type="submit" class="btn-btn-primory form-control"
					value="회원가입">
			</form>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	﻿
	<script src="js/bootstrap.js">	</script>

</body>
</html>