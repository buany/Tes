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
		height:740px;
		/* display:none; */
	}
	.footer form table{
		margin:30px auto;
		width:95%;
		height:85%;
	}
	.footer form table tr th{
		color:#FF6F06;
		box-shadow:0 0 4px #000;
		height:10px;
		width:10%;
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
	<div id="main">
		<div class="top">
			<ul>
				<jsp:useBean id="book_6" class="book.book_6"/>
				<li class="t">查看商品
					<!-- footer start -->
					<div class="footer">
						<h3 align="center"><a href="admin/addbook.jsp">添加商品</a></h3>
						<form action="#">
							<table>
								<tr>
									<th>书名</th><th>作者</th><th>出版社</th>
									<th>上市时间</th><th>库存</th><th>价格</th>
									<th>类别</th><th>图片位置</th><th>操作</th>
								</tr>
								<c:forEach items="${UI.data }" var="book_6">
									<tr><td>${book_6.bookname }</td>
									<td>${book_6.author }</td>
									<td>${book_6.publish }</td>
									<td>${book_6.publish_date }</td>
									<td>${book_6.number }</td>
									<td>${book_6.b_money }</td>
									<td>${book_6.ty_id }</td>
									<td>${book_6.puture_add }</td>
									<td><a href="edit_com.book?id=${book_6.b_id }">修改</a>&nbsp;
									<a href="del_com.book?id=${book_6.b_id }" onclick="return confirm('确定删除？')">删除</a></td></tr>
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
									<a href="com.book?page=1">首页</a>
									<a href="com.book?page=${UI.curPage-1 }">上一页</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${UI.curPage==UI.totalPages }">下一页 尾页</c:when>
								<c:otherwise>
									<a href="com.book?page=${UI.curPage+1 }">下一页</a>
									<a href="com.book?page=${UI.totalPages }">尾页</a>
								</c:otherwise>
							</c:choose>
						</p>
							<!-- </table>
						</form> -->
					</div>
				</li>
				<li>
					<a href="admin.book">前往用户</a>
				</li>
				<li>
					<a href="index_6.jsp">返回主页</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>