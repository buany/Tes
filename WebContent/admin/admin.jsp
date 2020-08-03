<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" import="java.util.*;"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��̨����ҳ��</title>
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
				<li class="t">�鿴�û�
					<!-- footer start -->
					<div class="footer">
						<form action="#">
							<table>
								<tr>
									<th>�˺�</th><th>����</th><th>�ֻ���</th>
									<th>��ַ</th><th>����</th><th>����ʱ��</th>
									<th>����</th>
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
								<td><a href="edit.book?id=<%= m.get("u_id")%>">�޸�</a>&nbsp;
								<a href="del.book?id=<%= m.get("u_id")%>" onclick="return confirm('ȷ��ɾ����')">ɾ��</a></td></tr>
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
									<td><a href="edit_user.book?id=${Account_6.u_id }">�޸�</a>&nbsp;
									<a href="del_user.book?id=${Account_6.u_id }" onclick="return confirm('ȷ��ɾ����')">ɾ��</a></td></tr>
								</c:forEach>
							</table>
						</form>
						<p align="center">
							ÿҳ${UI.pageSize }��
							��${UI.totalRows }��
							ҳ��${UI.curPage }/${UI.totalPages }
							<br>
							<c:choose>
								<c:when test="${UI.curPage==1 }">��ҳ ��һҳ</c:when>
								<c:otherwise>
									<a href="admin.book?page=1">��ҳ</a>
									<a href="admin.book?page=${UI.curPage-1 }">��һҳ</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${UI.curPage==UI.totalPages }">��һҳ βҳ</c:when>
								<c:otherwise>
									<a href="admin.book?page=${UI.curPage+1 }">��һҳ</a>
									<a href="admin.book?page=${UI.totalPages }">βҳ</a>
								</c:otherwise>
							</c:choose>
						</p>
					</div>
				</li>
				<li>
					<a href="com.book">ǰ����Ʒҳ��</a>
				</li>
				<li>
					<a href="index_6.jsp">������ҳ</a>
				</li>
			</ul>
			
		</div>
	</div>
</body>
</html>