<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>blufen에 오신걸 환영합니다.</title>
<link rel="stylesheet" href="css/blufen.css">
<link rel="stylesheet" href = "css/bootstrap.css">
<%@ page import = "item.Item" %>
<%@ page import = "item.ItemDAO" %>
</head>
<body>
		<%
			ItemDAO itemDAO = new ItemDAO();
			int no = Integer.parseInt(request.getParameter("no"));
			
			Item oneItem = itemDAO.getOneItem(no);
		%>
			<div class="container">
			<div class=table-responsive">
				<table width="100%">
						<tr>
							<td align = "top">
								<table class = "table">
									<tr>
										<td colspan = "4"><img src = "C:\JSP\upload\<%=oneItem.getItemName()%>" style = "overflow : hidden;height : 300px; width : 900px; "></td>
										
									</tr>
									<tr>
										<th colspan="4"><h1><%=oneItem.getItemTitle()%></h1></th>
									</tr>
									<tr>
									
										<td>1일</td>
										<td>30일</td>
										<td>판매</td>
										<td>대여후판매</td>
									</tr>
									<tr>
										<td><%=oneItem.getItem1Day() %>원</td>
										<!--이건 스크립틀릿으로 바꿔야함  -->
										<td><%=oneItem.getItem30Day() %>원</td>
										<td><%=oneItem.getItemSell() %>원</td>
										<%int itemLentSell = oneItem.getItemLentsell(); %>
										<%if(itemLentSell == 1)%><td>O</td> <%else if(itemLentSell == 2)%><td>X</td>
									</tr>
									<tr>
										<td colspan = "4">
											<h2>제품설명</h2><br/><br/>
											<h4><textarea disabled rows = "10" cols = "150" color = "none"><%=oneItem.getItemInfo() %></textarea></h4>
										</td>
									</tr>
									<tr colspan = "4">
										<td colspan = "2"><h3>!!!!</h3><br/>
<span>- 상품권 </span><br/>
<span>- 담배, 전자담배</span><br/> 
<span>- 술</span><br/> 
<span>- 렌즈 (콘택트, 써클)</span><br/> 
<span>- 의약품</span><br/> 
<span>- 성인용품 (콘돔 제외)</span><br/> 
<span>- 일부 수제식품</span><br/> 
<span>- 불법 도박 관련 글 (토토 등)</span><br/> 
<span>- 불법시술 (타투 등)</span><br/> 
<span>- 주민등록증/운전면허증</span><br/> 
<span>- 불법 소프트웨어 복제품</span><br/> 
<span>- 모든 금지 아이템 보기 </span></td>
									<td colspan = "2">
<h3>!!!!</h3><br/>
<span>- 도배성 행위 </span><br/>
<span>- 욕설/비하적 행위</span><br/> 
<span>- 선정적인 사진/내용</span><br/> 
<span>- 스토킹 등 다른 회원을 괴롭히는 행위</span><br/> 
<span>- 커뮤니티에 홍보글/아이템 등록</span><br/> 
<span>- 성의 없이 무의미한 아이템 등록</span><br/> 
<span>- 그 외 운영측 판단에 거래를 방해하는 행위 </span></td>
									</tr>
								</table>
				</table>
			</div>
		</div>
</body>
</html>