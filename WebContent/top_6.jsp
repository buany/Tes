<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公共头部文件</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/top_6.css">
</head>
<body>
	<!-- top_6 start -->
			<div class="top_6">
				<form action="select.rbook">
					<p clsss="explore">
						<input type="text" class="ie" name="ie" />
						<input type="submit" class="sousuo" value="搜索" />
					</p>
				</form>
				<a href="${pageContext.request.contextPath}/index_6.jsp">返回主页</a>
			</div>
			<!--  nav_6 start-->
			<div class="nav_6">
				<ul>
					<li><a href="${pageContext.request.contextPath}/all.rbook">全部图书</a></li>
					<li><a href="${pageContext.request.contextPath}/fiction.rbook">小说</a></li>
					<li><a href="${pageContext.request.contextPath}/edu.rbook">教育</a></li>
					<li><a href="${pageContext.request.contextPath}/computer.rbook">计算机</a></li>
					<li><a href="${pageContext.request.contextPath}/child.rbook">童书</a></li>
					<li><a href="${pageContext.request.contextPath}/know.rbook">知识</a></li>
				</ul>
				<span></span>
			</div>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script>
//计时器
setInterval(function() {
	var stime = new Date();
	var year = stime.getFullYear();
	var month = stime.getMonth()+1;
	var data = stime.getDate();
	var hours = stime.getHours();
	var minute = stime.getMinutes();
	var sec = stime.getSeconds();
	if (month < 10) {
		month = "0" + month;
	}
	if (data < 10) {
		data = "0" + data;
	}
	if (hours < 10) {
		hours = "0" + hours;
	}
	if (minute < 10) {
		minute = "0" + minute;
	}
	if (sec < 10) {
		sec = "0" + sec;
	}
	$(".nav_6 span").html(year + "-" + month + "-" + data + " " + hours + ":" + minute + ":" + sec);
}, 1000);
</script>
</body>
</html>