<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知识类板块</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/list_6.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/top_6.css"> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<!-- main start -->
	<div id="main">
		<%@ include file="../top_6.jsp" %>
		<form action="#">
			<table class="t_d">
				<c:forEach items="${UI.data }" var="book_6">
					<tr><td rowspan="4"><img alt="详情请点击图片" src="${pageContext.request.contextPath}/${book_6.puture_add }" /></td><td>书名：${book_6.bookname }</td><td>作者：${book_6.author }</td></tr>
					<tr><td>出版社：${book_6.publish }</td><td>出版时间：${book_6.publish_date }</td></tr>
					<tr><td>库存：${book_6.number }</td><td style="color:red;font-size:25px;">价格：${book_6.b_money }</td></tr>
					<tr><td colspan="2"><input type="button" class="btn" value="加入购物车"/></td></tr>
				</c:forEach>
			</table>
		</form>
		<p align="center">
				每页${UI.pageSize }行
				共${UI.totalRows }行
				页数${UI.curPage }/${UI.totalPages }
				<br>
				<c:choose>
					<c:when test="${UI.curPage==1 }">首页 上一页</c:when>
					<c:otherwise>
						<a href="know.rbook?page=1">首页</a>
						<a href="know.rbook?page=${UI.curPage-1 }">上一页</a>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${UI.curPage==UI.totalPages }">下一页 尾页</c:when>
					<c:otherwise>
					<a href="know.rbook?page=${UI.curPage+1 }">下一页</a>
					<a href="know.rbook?page=${UI.totalPages }">尾页</a>
				</c:otherwise>
			</c:choose>
		</p>
	</div>
	<%@include file="../footer_6.jsp" %>
</body>
</html>