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
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<header>
	<div class="navbar navbar-default">
		<div class="center_wrap">
			<h1>
				<a href="main.jsp"><img src="img/simbol.png" width="50"
					height="50" /></a>
			</h1>

			<ul>
				<li><a class="navbar-link" href="login.jsp">호스팅하기</a></li>
				<li><a class="navbar-link" href="main.jsp">도움말</a></li>
				<% if(userID == null)
				{
					%>
				<li><a class="navbar-link" href="join.jsp">회원가입</a></li>
				<li><a class="navbar-link" href="login.jsp">로그인</a></li>
				<%}else{
				%>
				<li><a class="navbar-link" href="logout.jsp">로그아웃</a></li>
				<%}
				%>
			</ul>
		</div>
	</div>
	</header>

	<nav>
	<div class=container>
		<form method="get" action="searchAction.jsp">
			<input id="searchBoxtext" type="text" placeholder="원하시는 물건을 검색하세요." />
			<input id="searchBoxsub" type="submit"/>
		</form>
	</div>
	</nav>

	<section id="main"> <article id="article">
	<div class=container>
		<a href="game.jsp"><img class="img-thumbnail"
			src="img/game.png" width="500" height="500" /></a> <a
			href="game.jsp"><img class="img-thumbnail" src="img/book.png"
			width="500" height="500" /></a>
	</div>
	<div class=container>
		<a href="game.jsp"><img class="img-thumbnail"
			src="img/boardgame.png" width="500" height="500" /></a> <a
			href="game.jsp"><img class="img-thumbnail" src="img/tv.png"
			width="500" height="500" /></a>
	</div>
	</article> </section>
	<aside id="right"> <!--  <div id = "login">
			<h4>Log In</h4>
			<form action = "#">
				아이디 <input type = "text" /><br/>
				비밀번호<input type = "password"/><br/>
				<input type = "submit" value = "로그인"/></br/>
				<input type = "reset" value = "초기화" /></br/>
				<a href = "register.jsp" target = "_blank" id = "register">회원가입</a>
				<a href = "#" id = "forgot">비밀번호 분실</a>
			</form>
		</div>
		--> </aside>
	<footer> Copyright(c)2018 All rights reserved. </footer>

</body>
</html>