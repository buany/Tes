<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="css/style_6.css">
		<link rel="stylesheet" type="text/css" href="style.css"/>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/carts.css">
		<script src="js/jquery.min.js"></script>
		<script src="js/carts.js"></script>
		<script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
<!--  nav_6 start-->
		 	<section class="cartMain">
				<!-- main_6 start -->
				<div id="main_6">
					<!-- top_6 start -->
					<div class="top_6">
				    	<p class="submit">
				    		<a href="Register_index_6.html">欢迎XX登陆</a>
				    		<a href="index_6.jsp">返回主页</a>
				    	</p>
						<p clsss="explore">
							<input  type="text" class="ie"/>
							<input type="button" class="sousuo" value="搜索">
						</p>
					</div>
					<div class="nav_6">
						<h1 style="font-size:30px"><center>购物车</center></h1>
					</div>
					
		 	        <div class="cartMain_hd">
						
		 	            <ul class="order_lists cartTop">
		 	                <li class="list_chk">
		 	                    <!--所有商品全选-->
		 	                    <input type="checkbox" id="all" class="whole_check">
		 	                    <label for="all"></label>
		 	                    全选
		 	                </li>
		 	                <li class="list_con">商品信息</li>
		 	                <li class="list_info">商品参数</li>
		 	                <li class="list_price">单价</li>
		 	                <li class="list_amount">数量</li>
		 	                <li class="list_sum">金额</li>
		 	                <li class="list_op">操作</li>
		 	            </ul>
		 	        </div>
		 	
		 	        <div class="cartBox">
		 	            <div class="shop_info">
		 	                <div class="all_check">
		 	                    <!--店铺全选-->
		 	                    <input type="checkbox" id="shop_a" class="shopChoice">
		 	                    <label for="shop_a" class="shop"></label>
		 	                </div>
		 	                <div class="shop_name">
		 	                    店铺：<a href="javascript:;">搜猎人艺术生活</a>
		 	                </div>
		 	            </div>
		 	            <div class="order_content">
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_2" class="son_check">
		 	                        <label for="checkbox_2"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa1.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">星际迷航</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16*16*3(cm)</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥80</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥80</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_3" class="son_check">
		 	                        <label for="checkbox_3"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa10.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">道士下山</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16*16*3(cm)</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥70</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥780</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_6" class="son_check">
		 	                        <label for="checkbox_6"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa12.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">细节</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16*16*3(cm)</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥180</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥180</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	            </div>
		 	        </div>
		 	
		 	        <div class="cartBox">
		 	            <div class="shop_info">
		 	                <div class="all_check">
		 	                    <!--店铺全选-->
		 	                    <input type="checkbox" id="shop_b" class="shopChoice">
		 	                    <label for="shop_b" class="shop"></label>
		 	                </div>
		 	                <div class="shop_name">
		 	                    店铺：<a href="javascript:;">卷卷旗舰店</a>
		 	                </div>
		 	            </div>
		 	            <div class="order_content">
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_4" class="son_check">
		 	                        <label for="checkbox_4"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa14.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">华尔街之狼</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16*16*3(cm)</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥1980</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥1980</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_5" class="son_check">
		 	                        <label for="checkbox_5"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa2.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">守夜者</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16*16*3(cm)</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥480</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥480</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	            </div>
		 	        </div>
		 	
		 	        <div class="cartBox">
		 	            <div class="shop_info">
		 	                <div class="all_check">
		 	                    <!--店铺全选-->
		 	                    <input type="checkbox" id="shop_c" class="shopChoice">
		 	                    <label for="shop_c" class="shop"></label>
		 	                </div>
		 	                <div class="shop_name">
		 	                    店铺：<a href="javascript:;">卷卷旗舰店</a>
		 	                </div>
		 	            </div>
		 	            <div class="order_content">
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_8" class="son_check">
		 	                        <label for="checkbox_8"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa18.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">养猪学</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16开</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥1980</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥1980</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	                <ul class="order_lists">
		 	                    <li class="list_chk">
		 	                        <input type="checkbox" id="checkbox_9" class="son_check">
		 	                        <label for="checkbox_9"></label>
		 	                    </li>
		 	                    <li class="list_con">
		 	                        <div class="list_img"><a href="javascript:;"><img src="img/aa13.PNG" alt=""></a></div>
		 	                        <div class="list_text"><a href="javascript:;">数字货币</a></div>
		 	                    </li>
		 	                    <li class="list_info">
		 	                        <p>规格：默认</p>
		 	                        <p>尺寸：16*16*3(cm)</p>
		 	                    </li>
		 	                    <li class="list_price">
		 	                        <p class="price">￥480</p>
		 	                    </li>
		 	                    <li class="list_amount">
		 	                        <div class="amount_box">
		 	                            <a href="javascript:;" class="reduce reSty">-</a>
		 	                            <input type="text" value="1" class="sum">
		 	                            <a href="javascript:;" class="plus">+</a>
		 	                        </div>
		 	                    </li>
		 	                    <li class="list_sum">
		 	                        <p class="sum_price">￥480</p>
		 	                    </li>
		 	                    <li class="list_op">
		 	                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
		 	                    </li>
		 	                </ul>
		 	            </div>
		 	        </div>
		 	        <!--底部-->
		 	        <div class="bar-wrapper">
		 	            <div class="bar-right">
		 	                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
		 	                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
		 	                <div class="calBtn"><a href="javascript:;">结算</a></div>
		 	            </div>
		 	        </div>
		 	    </section>
		 	    <section class="model_bg"></section>
		 	    <section class="my_model">
		 	        <p class="title">删除宝贝<span class="closeModel">X</span></p>
		 	        <p>您确认要删除该宝贝吗？</p>
		 	        <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
		 	    </section>

		 </div>
</body>
</html>