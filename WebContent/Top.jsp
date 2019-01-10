<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/blufen.css">
<link rel="stylesheet" href="css/bootstrap.css">
<title>blufen에 오신걸 환영합니다.</title>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인중인지 확인 -->
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<!-- //네비게이터 -->
	<header>
	<div class="navbar navbar-default">
		<div class="center_wrap">
				<a href="Main.jsp"><img src="img/simbol.png" width="50"
					height="50" /></a>

			<ul>
				
				<li><a class="navbar-link" href="Main.jsp?center=Sharing.jsp">셰어링하기</a></li>
				<li><a class="navbar-link" href="Main.jsp">도움말</a></li>
				<%
					if (userID == null){
				%>
				<li><a class="navbar-link" href="Main.jsp?center=Join.jsp">회원가입</a></li>
				<li><a class="navbar-link" href="Main.jsp?center=Login.jsp">로그인</a></li>
				<%
					} else {
				%>
				<li><a class="navbar-link" href="LogoutAction.jsp">로그아웃</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	</header>
</body>
</html>