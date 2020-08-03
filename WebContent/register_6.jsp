<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>用户注册</title>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script>
			function check(){
				var pas=document.getElementById("ps1").value;
				var pas1=document.getElementById("ps2").value;
				if(pas!=pas1){
					alert("两次密码输入不一致！请重新输入！");
					return false;
				}else{
					return true;
				}
			}
		</script>
		<style type="text/css">
			body{
				padding:0;
				margin:0;
				background:#eb5a46;
				background-image:url(img/true_6.jpg);
				-webkit-background-size: cover;
				font-family: 'Lato', sans-serif !important;
			}
			h1,h2,h3,h4,h5,h6{
				font-family: 'Amaranth', sans-serif;
				margin:0;			   
			}	
			a{
				text-decoration: none;
			}
			p{
				margin:0;
			}
			ul{
				margin:0;
				padding:0;
			}
			label{
				margin:0;
			}
			/*-- main --*/
			.content{
				padding:60px 0;
			}
			.content h1{
				    margin-bottom: 40px;
			    text-align: center;
			    font-size: 45px;
			    color: #fff;
			    letter-spacing: 1px;
			}
			.main {
			    width: 24%;
			    margin: 0 auto 0 auto;
			    background: #fff;
			    padding: 30px 64px;
				-webkit-box-shadow: 10px 10px 5px 0px rgba(183,61,44,1);
				-moz-box-shadow: 10px 10px 5px 0px rgba(183,61,44,1);
				box-shadow: 10px 10px 5px 0px rgba(183,61,44,1);
			}
			p.footer {
			    text-align: center;
			    margin-top: 40px;
			    color: #fff;
			    font-size: 15px;
			}
			p.footer a{
				text-decoration:none;
				color: #5A150B;
			}
			p.footer a:hover{
				color:#fff;
				transition:0.5s all;
				-webkit-transition:0.5s all;
				-moz-transition:0.5s all;
				-o-transition:0.5s all;
				-ms-transition:0.5s all;
			}
			.main h2 {
			    color: #444;
			    font-size: 26px;
			    text-align: center;
			    margin-bottom: 30px;
			    font-weight: 500;
			}
			.main p {
			    text-align: center;
			    font-size: 16px;
			    color: #000;
			    margin: 25px 0;
			}
			.main form input[type="text"], .main form input[type="password"] ,
			.main form input[type="email"],
			.main form input[type="tel"]
			{
			    width: 94%;
			    padding: 10px;
			    font-size: 14px;
			    border: none;
			    border-bottom: 2px solid #e6e6e6;
			    outline: none;
			    color: #D8D5D5;
			    margin-bottom: 20px;
			
			}
			.main h5 {
			    font-family: 'Lato', sans-serif !important;
			    color: #EB5A46;
			    margin-bottom: 8px;
				font-size:15px;
			}
			.main form input[type="text"]:hover, .main form input[type="password"]:hover{
				border-bottom: 2px solid #B384FB;
				color:#000;
				transition:0.5s all;
				-webkit-transition:0.5s all;
				-moz-transition:0.5s all;
				-o-transition:0.5s all;
				-ms-transition:0.5s all;
			}
			
			.main form input[type="submit"] {
			    background:#EB5A46;
			    color: #FFFFFF;
			    text-align: center;
			    padding: 14px 0;
			    border: none;
			    border-bottom:5px solid #C1402E;
			    font-size: 17px;
			    outline: none;
			    width: 100%;
			    cursor: pointer;
			    margin-bottom: 0px;
			}
			.main form input[type="submit"]:hover{
			    background:#C1402E;
			    border-bottom:5px solid #EB5A46;
			    transition: 0.5s all;
			    -webkit-transition: 0.5s all;
			    -moz-transition: 0.5s all;
			    -o-transition: 0.5s all;
			    -ms-transition: 0.5s all;
			}
		</style>
</head>
<body>
<%
	//request.setCharacterEncoding("GB2312");
	//response.setCharacterEncoding("GB2312");
	//response.setContentType("text/html;charset=GB2312");
%>
<div class="content">
				<h1>用户注册</h1>
				<div class="main">
					<h2>欢迎注册账户！</h2>
					<form method="post" name="from1" onsubmit="return check()" action="register.user" >
						<h5>用户名</h5>
						<input type="text"   name="username" required/>
						<h5>手机号码</h5>
						<input type="tel"  required="required" name="phone">
						<h5>地址</h5>
						<input type="text"  required="required" name="address">
						<h5>邮箱</h5>
						<input type="email"  required="required" name="email">
						<h5>密码</h5>
						<input type="password" id="ps1" required="required" name="password">
						<h5>确认密码</h5>
						<input type="password" id="ps2"  name="pw2" required />
						<input type="submit" value="立即注册">
						<p align="center" style="margin-top:12%;color:red;">有账号？<a href="Login_6.jsp" style="color:#FF6F06;">立即登录</a></p>
					</form>
				</div>
				<p class="footer">_欢迎来到计算机一班第六小组_<a href="index_6.jsp"> BookStore!</a></p>
		</div>
</body>
</html>