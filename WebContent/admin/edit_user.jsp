<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin:0px;
		padding:0px;
		list-style:none;
	}
	body{
		background:url(img/true_6.jpg);
		background-size:100% 100%;
		font-family:"Arial";
		font-size:18px;
	}
	a{
		text-decoration:none;
		color:#FF6F06;
	}
	table{
		width:600px;
		height:600px;
		margin:50px auto;
		border-radius:5px;
	}
	table tr{
		background:#000;
		opacity:0.5;
	}
	table tr th{
		font-size:30px;
		color:red;
	}
	table tr th input{
		width:200px;
		height:30px;
		border-radius:5px;
		color:#000;
		font-size:22px;
	}
	table tr td input{
		width:80px;
		height:30px;
		background:#000;
		color:#fff;
		margin-left:40px;
		margin-right:40px;
	}
	h2{
		margin-top:20px;
	}
</style>
</head>
<body>
<jsp:useBean id="Account_6" class="service.Account_6"></jsp:useBean>
<jsp:setProperty property="u_id" name="Account_6"/>
<c:if test="${!empty b_user_6 }">
		<h2 align="center">修改用户信息</h2>
		<form width="60%" align="center" border="0" action="edit_do.book" method="post">
		<input type="hidden" name="id" value="${b_user_6.u_id }">
		<table width="80%" align="center" border="0">
		<tr><th>账&nbsp&nbsp&nbsp号:&nbsp&nbsp<input type="text" name="username" value="${b_user_6.username }"></th></tr>
		<tr><th>密&nbsp&nbsp&nbsp码:&nbsp&nbsp<input type="text" name="password" value="${b_user_6.password }"></th></tr>
		<tr><th>手机号:&nbsp&nbsp<input type="text" name="phone" value="${b_user_6.phone }"></th></tr>
		<tr><th>地&nbsp&nbsp&nbsp址:&nbsp&nbsp<input type="text" name="address" value="${b_user_6.address }"></th></tr>
		<tr><th>邮&nbsp&nbsp&nbsp箱:&nbsp&nbsp<input type="text" name="email" value="${b_user_6.email }"></th></tr>
		<br>
		<tr><td colnum="2" align="center">
			<input type="submit" value="修改">
			<input type="reset" value="重置">
		</td></tr>
		</table>
	</form>
</c:if>
</body>
</html>