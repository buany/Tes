<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<style type="text/css">
		*{
			margin: 0;
			padding: 0;
			list-style: none;
		}
		body{
			background:url(img/true_6.jpg) no-repeat;
		    background-size: 105%; 
		}
		a{
			text-decoration: none;
		}
		.container{
			width: 100%;
			height: 85%;
			margin: 0 auto;
		}
		/* 导航 */
		.nav{
			margin-top: 0px;
			height: 50px;
			line-height: 30px;
		}
		.nav ul li{
			float:right;
			font-size: 15px;
			padding: 10px;
		}
		.nav ul li a{
			text-decoration: none;
			color:coral;
			padding:4px  10px;
		}
		.nav ul li a:hover{
			border: 1px solid palegreen;
			border-radius:5%;
			color: #FF7F50;
		} 
		
		/* 主题内容 */
		.main{
			width:1200px;
			height: 600px;
		}
		.sideleft{
			width:480px;
			height: 250px;
			float: left;
			padding:120px 120px
		}
		.sideleft p{
			padding: 6px 0;
			font-size: 15px;
		}
		.sideright{
			width: 370px;
			height: 400px;
			float: right;
			margin-top:5%;
			background:rgba(255,255,255,0.75);
			position: relative;
		}
		.sideright .index{
			position:absolute;
			bottom:0px;
			left:3%;
			width: 350px;
			height: 300px;
		}
		.headline{
			font-size: 23px;
			text-align: center;
			padding: 20px;
		}
		input[type="text"],
		input[type="password"],
		input[type="submit"]{
			-web-kit-appearance:none;
		  	-moz-appearance: none;
		  	display: block;
		  	margin: 0 auto;
		  	font-size:15px;
		  	width: 240px;
		}
		input[type="text"]{
			height:35px;
			border-radius:3px;
			border:1px solid #c8cccf;
			color:#6a6f77;
			outline:0;
		}
		input[type="password"]{
			height:35px;
			border-radius:3px;
			border:1px solid #c8cccf;
			color:#6a6f77;
			outline:0;
		}
		input[type="submit"]{
			margin-top: 25px;
			height: 35px;
			background: #357eb8;
			color: #bcedff;
			font-weight: bold;
			font-size: 16px;
		
		}
		input[type="submit"]:hover{
			background:royalblue;
			cursor: pointer;
		}
		.astyle{
			margin: 5px 0 5px 42px;
			font-size:17px; 
			color: #6a6f77;
			
		}
		.bstyle{
			display: block;
			float: left;
			margin-left: 50px;
			font-size: 15px;
		}
		.cstyle{
			display: block;
			float: right;
			margin-right: 60px;
			padding-right: 30px;
			font-size: 15px;
		}
		.cstyle a{
			text-decoration: none;
		}
		.dstyle{
			display: block;
			text-align: center;
			font-size:15px;
			margin: 16px;
		}
		
		.footer{
			width: 1000px;
			margin:0 auto;
		}
		.footer ul{
			margin-left: 100px;
		}
		.footer ul li{
			float: left;
		 
		}
		.footer ul li a{
			text-decoration: none;
			color: black;
			border-left: 2px solid black;
			padding:0 5px;
		}
		input.btn{
			width:135px;
			height:100px;
			background:rgba(255,255,255,0);
			border:0px;
			font-size:19px;
		}
		.sideright p.s_top{
			width:100%;
			height:24%;
		}
		.sideright p.s_top input.btn{
			width:49%;
			height:100%;
		}
		div.in{
			z-index:109;
		}
		div.ex{
			display:none;
		}
		.sideright ul li .in form p.dstyle{
			color:#FF0000;
		}
		.sideright ul li .in form p.dstyle a{
			color:#FF6F06;
		}
	</style>
</head>
<body>
<div class="container">
		<!-- 导航 -->
		<div class="nav">
			<ul>
				<li><a href="#">管理员登录</a></li>
				<li><a href="#">商品分类</a></li>
				<li><a href="index_6.jsp">首页</a></li>
			</ul>
		</div>
 
		<!-- 主体内容 （登陆界面）-->
		<div class="main">
			<!-- 左侧信息栏 -->
			<div class="sideleft">
				<h1>经济实惠        价格厚道 </h1>
				<h2>做全网最实惠的网上书店</h2>
				<h3>名言警句</h3>
				<p>书籍是横渡时间大海的航船。</p>
				<p>没有书籍的屋子，就像是没有灵魂的躯体。</p>
				<p>人的影响短暂而微弱，书的影响则广泛而深远。 </p>
				<p> 你最大的问题在于读书太少，而想的太多！ </p>
 
			</div>
			<!-- 右侧登陆界面 -->
			<div class="sideright">
				<p class="s_top">
					<input type="button"  class="btn" value="用户登录" />
					<input type="button" class="btn tn" value="管理员登录" />
				</p>
				<ul>
					<li>
						<div class="index in">
							<form action="login.user" method="post">
								<p class="astyle">用户名：</p>
								<input type="text"  name="username" required />
								<p class="astyle">密码：</p>
								<input type="password" name="password" required />
								<input type="submit" value="登录" name="login" ></br>
								<p class="dstyle">没有账号？
									<a href="register_6.jsp">立即注册</a>
								</p>
							</form>
						</div>
					</li>
					<li>
						<div class="index ex">
							<form action="admin.user" method="post">
								<p class="astyle">管理员ID：</p>
								<input type="text"  name="username" required />
								<p class="astyle">管理员密码：</p>
								<input type="password" name="password" required />
								<input type="submit" value="登录" name="login" ><br />
								<p style="color:red;" align="center">此处为管理人员登录！用户登录无效！</p>
							</form>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- 尾部 -->
		<div class="footer">
				<ul>
					<li><a href="#">关于我们</a></li>
					<li><a href="#">诚聘人才</a></li>
					<li><a href="#">联系商家</a></li>
					<li><a href="#">广告服务</a></li>
					<li><a href="#">隐私权政策</a></li>
					<li><a href="#">联系我们：上海市立达学院17计算机1班第六小组</a></li>
				</ul>
		</div><br>
		<script src="js/jquery-3.2.1.min.js"></script>
		<script>
			var index=0;
			$(".sideright .s_top input").click(function(){
				index=$(this).index();
				$(".sideright ul li").eq(index).show().siblings("li").hide();
			});
			$(".sideright .s_top input.tn").click(function(){
				$(".sideright ul li .ex").css("display","block");
			});
		</script>
</body>
</html>