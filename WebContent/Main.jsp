<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "item.Item" %>
<%@ page import = "item.ItemDAO" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>blufen에 오신걸 환영합니다.</title>
<script>
</script>
</head>
<body>
	<%
		String center = request.getParameter("center");
		//처음엔 center값이 안넘어오니 null처리해줌
		if(center == null)
			center= "Center.jsp";//default center값 부여
		
	%>
	<table width = "100%">
		<!-- top부분-->
		<tr>
			<td> 
			<jsp:include page="Top.jsp"></jsp:include>
			</td>
		</tr>
		<!--center부분-->
		<tr>
			<td> 
			<jsp:include page="<%=center%>"></jsp:include>
			</td>
		</tr>
		<!--bottom부분-->
		<tr>
			<td>
			 <jsp:include page="Bottom.jsp"></jsp:include>
			 </td>
		</tr>
	</table>

	
	
</body>
</html>