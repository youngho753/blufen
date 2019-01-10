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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>

<link rel="stylesheet" href="css/blufen.css">
<link rel="stylesheet" href="css/bootstrap.css">
<title>blufen에 오신걸 환영합니다.</title>
</head>
<body>

<!-- 검색창 -->
	<nav>
	<div class="container">
		<form method="post" action="Main.jsp?center=Search.jsp">
			<input id="searchBoxtext" name = "searchBoxtext" type="text" placeholder="원하시는 물건을 검색하세요." />
			<input id="searchBoxsub" type="submit" />
		</form>
	</div>
	</nav>

<!-- 물건들 -->
	<section id="main"> <article id="article"> 
	<%
 	ArrayList<Item> itemList = new ItemDAO().getList();
 	%>
	<div class="container">
		<div class=table-responsive">
			<table width="100%">
				<%
				int cnt = 0;
				for(Item item : itemList){
					if(cnt % 2 == 0){
				%>
					<tr>
					<%}
						cnt++; %>
						<td align = "top">
							<table class = "table">
								<tr>
									<th colspan="4"><%=item.getItemTitle()%></th>
								</tr> 
								<tr>
									<td colspan="4" style = "height : 300px; maxwidth : 500px;">
									<a href = "Main.jsp?center=ItemInfo.jsp?no=<%=item.getItemNo()%>" target = "_blank">
									<img src = "C:\JSP\upload\<%=item.getItemName() %>" style = "width : 500px; height : 300px; overflow : hidden;"></a></td>
									
								</tr>
								<tr>
									<td>1일</td>
									<td>30일</td>
									<td>판매</td>
									<td>대여후판매</td>
								</tr>
								<tr>
									<td><%=item.getItem1Day() %></td>
									<!--이건 스크립틀릿으로 바꿔야함  -->
									<td><%=item.getItem30Day() %></td>
									<td><%=item.getItemSell() %></td>
									<%int itemLentSell = item.getItemLentsell(); %>
									<%if(itemLentSell == 1)%><td>O</td> <%else if(itemLentSell == 2)%><td>X</td>
								</tr>
							</table>
						</td>
				<%
					}
				 %>
			</table>
		</div>
	</div>
	</article>
	</section>
</body>
</html>