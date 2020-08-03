<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*;"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8" content="text/html; charset=UTF-8">
<title></title>
<!-- 查询结果页面 -->
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
				<%
					ArrayList users=(ArrayList)request.getAttribute("SELECT");
						for(Object o:users){
							Map m=(HashMap)o;
				%>
					<tr><td rowspan="4"><img alt="详情请点击图片" src="${pageContext.request.contextPath}/<%=m.get("puture_add") %>" /></td><td>书名：<%=m.get("bookname") %></td><td>作者：<%=m.get("author") %></td></tr>
					<tr><td>出版社：<%=m.get("publish") %></td><td>出版时间：<%=m.get("publish_date") %></td></tr>
					<tr><td>库存：<%=m.get("number") %></td><td style="color:red;font-size:25px;">价格：<%=m.get("b_money") %></td></tr>
					<tr><td colspan="2"><input type="button" class="btn" value="加入购物车"/></td></tr>
								
				<%
					}
					
				%>
			</table>
		</form>
	</div>
	<%@include file="../footer_6.jsp" %>
</body>
</html>