<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		background:url(../img/true_6.jpg);
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
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
%>
<h2 align="center">添加书籍</h2>
	<form width="60%" align="center" border="0" action="${pageContext.request.contextPath}/add.book" method="post">
		<table width="80%" align="center" border="0">
		<tr><th>书&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名:&nbsp&nbsp<input type="text" name="bookname"></th></tr>
		<tr><th>作&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp者:&nbsp&nbsp<input type="text" name="author"></th></tr>
		<tr><th>出&nbsp&nbsp版&nbsp社:&nbsp&nbsp<input type="text" name="publish""></th></tr>
		<tr><th>上市时间:&nbsp&nbsp<input type="text" name="publish_date" ></th></tr>
		<tr><th>图片存放:&nbsp&nbsp<input type="text" name="puture_add"></th></tr>
		<tr><th>库&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp存:&nbsp&nbsp<input type="text" name="number" ></th></tr>
		<tr><th>价&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp格:&nbsp&nbsp<input type="text" name="b_money" ></th></tr>
		<tr><th>类&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别:&nbsp&nbsp<input type="text" name="ty_id" ></th></tr>
		<br>
		<tr><td colnum="2" align="center">
			<input type="submit" value="提交">
			<input type="reset" value="重置">
		</td></tr>
		</table>
	</form>
</body>
</html>