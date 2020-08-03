<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/timer.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detailed_6.css">
<title></title>
</head>
<body>
	<div id="main_6">
		<%@ include file="../top_6.jsp" %>
		<div class="decailed">
			<div class="imgs">
				<img src="${pageContext.request.contextPath}/img/aa19.PNG" />
			</div>
			<div class="watch">
				<form action="">
					<table>
						<tr>
							<td class="a">书名</td>
							<td class="b"></td>
						</tr>
						<tr>
							<td class="a">作者</td>
							<td class="b"></td>
						</tr>
						<tr>
							<td class="a">出版社</td>
							<td class="b"></td>
						</tr>
						<tr>
							<td class="a">出版时间</td>
							<td class="b"></td>
						</tr>
						<tr>
							<td class="a">价格</td>
							<td class="b"></td>
						</tr>
						<tr>
							<td class="b" colspan="2">
								<input type="submit" value="加入购物车" align="center">
							</td>
						</tr>
					</table>
				</form>
				
			</div>
		</div>
		<%@ include file="../footer_6.jsp" %>
	</div>
</body>
</html>