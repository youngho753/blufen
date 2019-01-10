<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ page import="java.io.PrintWriter"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/fileupload.js"></script>
<script src="js/bootstrap.js">	</script>
<jsp:useBean id="user" class="user.User" scope="page"></jsp:useBean>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/blufen.css">
	
<title>blufen에 오신걸 환영합니다.</title>
</head>
<body>

<%
	String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		
		if(userID == null){
		
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 해주세요.')");
			script.println("location.href = 'Main.jsp?center=Login.jsp'");
			script.println("</script"); 
		}
%>

	<div class="container">
		<div class="table-responsive">
			<table width="100%">
				<tr>
					<td valign="top">
					<form method="post" action="SharingAction.jsp" name = "uploadForm" id = "uploadForm" enctype = "multipart/form-data">
						<table class="table">
							<tr>
								<th colspan="4"><input type="text" placeholder = "제목을 입력하세요." maxlength="20" style = "border : 0px;" name = "itemTitle"></th>
							</tr>
							<tbody id = "fileTableTbody"  width = "100%" border = "1px">
							<tr>
								<td colspan = "4">
								<input type = "file" class = "none" style ="display : none;">
								<input type = "file"class = "container" id = "dropZone" colspan="4" style="display : none; border : dotted 1px blue; width : 1000px; height: 300px; maxwidth: 100%;">
								
								<!-- <input multiple = "multiple" type = "file" name = "itemPic[]" accept = ".jpg" accept = ".png" accept = ".gif"><img
									src="" style="overflow : hidden;"> -->
									
								</td> 
							</tr>
							</tbody>
							<tr>
								<td>1일</td>
								<td>30일</td>
								<td>판매</td>
								<td>대여후판매</td>
							</tr>
							<tr>
								<td><input type = "text" maxlength="10" name = "item1Day"></td>
								<td><input type = "text" maxlength="10" name = "item30Day"></td>
								<td><input type = "text" maxlength="10" name = "itemSell"></td>
								<td>
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary"> 
									<input type="radio" name="itemLentsell" autocomplete="off" value="1">O
									</label>
									 <label class="btn btn-primary active">
									<input type="radio" name="itemLentsell" autocomplete="off" value="2" checked>X
									</label>
								</div>
								</td>
							</tr>
						</table>
							<input type = "submit" value = "셰어링하기" class = "btn btn-primary" onclick = "">
							<a href="#" onclick="uploadFile(); return false;" class="btn bg_01">파일 업로드</a>
					</form>
					</td>

				</tr>

			</table>
		</div>
	</div> 




</body>
</html>
