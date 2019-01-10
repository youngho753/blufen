<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%><!--중복된이름 자동으로 이름바꿔줌 -->
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="item.ItemDAO"%>

<jsp:useBean id="item" class="item.Item" scope="page"></jsp:useBean>
<jsp:setProperty property="itemTitle" name="item" />
<jsp:setProperty property="item1Day" name="item" />
<jsp:setProperty property="item30Day" name="item" />
<jsp:setProperty property="itemSell" name="item" />
<jsp:setProperty property="itemLentsell" name="item" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login 사이트</title>
</head>
<body>
	<%
	
	ItemDAO itemDAO = new ItemDAO();
	
	
	String directory = "C:/JSP/upload";
	int maxSize = 1024 * 1024 * 100;
	String encoding = "UTF-8";

	MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
			new DefaultFileRenamePolicy());
	String fileName = multipartRequest.getOriginalFileName("itemPic");
	String fileRealName = multipartRequest.getFilesystemName("itemPic");

 	String itemTitle = multipartRequest.getParameter("itemTitle");
	String item1Day = multipartRequest.getParameter("item1Day");
	String item30Day = multipartRequest.getParameter("item30Day");
	String itemSell = multipartRequest.getParameter("itemSell");
	String lentSell = multipartRequest.getParameter("itemLentsell");
	int itemLentSell = Integer.parseInt(lentSell);
	if(itemTitle == "" || item1Day == "" || item30Day == "" || itemSell == ""){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('빠짐없이 입력해 주세요.')");
			script.println("history.back()");
			script.println("</script>");
	}
	else{
	
		/* if ( !fileName.endsWith(".jpg") && !fileName.endsWith(".png") && !fileName.endsWith(".gif")) {
		File file = new File(directory + fileRealName);
		file.delete();
		out.write("취소됩니다.");
	} else { */
	/* } */

	
		
	int result = itemDAO.upload(itemTitle, fileName,fileRealName, item1Day, item30Day,	
				itemSell,itemLentSell);
	
		
	if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('다시 시도해 주십시오.')");
		script.println("history.back()");
		script.println("</script>");
		
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'Main.jsp?center=Center.jsp'");
		script.println("alert('완료되었습니다')");
		script.println("</script>");

	}
	}
%>
</body>
</html>