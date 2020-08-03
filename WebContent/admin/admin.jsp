<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" import="java.util.*;"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>后台管理页面</title>
<style type="text/css">
	*{
		margin:0px;
		padding:0px;
		list-style:none;
	}
	body{
		background:#eee;
		font-family:"Arial";
		font-size:18px;
	}
	a{
		text-decoration:none;
		color:#FF6F06;
	}
	#main{
		width:1330px;
		height:755px;
		max-width:1330px;
		margin:0 auto;
		position:relative;
	}
	.top{
		width:100%;
		height:60px;
		background:linear-gradient(yellow,blue);
		border-radius:5px;
	}
	.top ul li{
		float:left;
		width:33%;
		height:100%;
		line-height:60px;
		color:#fff;
		text-align:center;
	}
	.top ul li.t:hover{
		cursor:pointer;
		font-size:20px;
		background:url(img/top_logo.png);
		background-size:100% 100%;
	}
	.top ul li.t:hover .footer{
		display:block;
		background:url(img/true_6.jpg);
		background-size:100% 100%;
		box-shadow:0 0 10px #fff;
	}
	.top ul li.t:hover html,body{
		background:url(img/true_6.jpg);
		background-size:100% 100%;
	}
	.footer{
		border-radius:3px;
		position:absolute;
		top:65px;
		left:0px;
		width:1330px;
		height:690px;
		/* display:none; */
	}
	.footer form table{
		margin:50px auto;
		width:80%;
		height:85%;
	}
	.footer form table tr th{
		color:#FF6F06;
		box-shadow:0 0 4px #000;
		height:10px;
		width:12%;
		border:1px solid #ddd;
	}
	.footer form table tr td{
		color:#000;
		box-shadow:0 0 4px #000;
		border:1px solid #ddd;
	}
</style>
</head>
<body>
	<!-- main start -->
	<div id="main">
		<!-- top start -->
		<div class="top">
			<ul>
				<jsp:useBean id="Account_6" class="service.Account_6"/>
				<li class="t">查看用户
					<!-- footer start -->
					<div class="footer">
						<form action="#">
							<table>
								<tr>
									<th>账号</th><th>密码</th><th>手机号</th>
									<th>地址</th><th>邮箱</th><th>创建时间</th>
									<th>操作</th>
								</tr>
								<%-- <%
									ArrayList users=(ArrayList)request.getAttribute("user");
								for(Object o:users){
									Map m=(HashMap)o;
								%>
								<tr><td><%=m.get("username") %></td>
								<td><%=m.get("password") %></td>
								<td><%=m.get("phone") %></td>
								<td><%=m.get("address") %></td>
								<td><%=m.get("email") %></td>
								<td><%=m.get("user_date") %></td>
								<td><a href="edit.book?id=<%= m.get("u_id")%>">修改</a>&nbsp;
								<a href="del.book?id=<%= m.get("u_id")%>" onclick="return confirm('确定删除？')">删除</a></td></tr>
								<%
								}
								%> --%>
								<c:forEach items="${UI.data }" var="Account_6">
									<tr><td>${Account_6.username }</td>
									<td>${Account_6.password }</td>
									<td>${Account_6.phone }</td>
									<td>${Account_6.address }</td>
									<td>${Account_6.email }</td>
									<td>${Account_6.user_date }</td>
									<td><a href="edit_user.book?id=${Account_6.u_id }">修改</a>&nbsp;
									<a href="del_user.book?id=${Account_6.u_id }" onclick="return confirm('确定删除？')">删除</a></td></tr>
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
									<a href="admin.book?page=1">首页</a>
									<a href="admin.book?page=${UI.curPage-1 }">上一页</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${UI.curPage==UI.totalPages }">下一页 尾页</c:when>
								<c:otherwise>
									<a href="admin.book?page=${UI.curPage+1 }">下一页</a>
									<a href="admin.book?page=${UI.totalPages }">尾页</a>
								</c:otherwise>
							</c:choose>
						</p>
					</div>
				</li>
				<li>
					<a href="com.book">前往商品页面</a>
				</li>
				<li>
					<a href="index_6.jsp">返回主页</a>
				</li>
			</ul>
			
		</div>
	</div>
</body>
</html>