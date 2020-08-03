//图书的切换动作
//畅销图书向左的切换动作
var index_book=0;
var t_index=0;
$(".list_6 div.spe_1 p.spe b.left").click(function(){
	t_index=t_index-266;
	if(t_index<=-540){
		t_index=-520;
	}
	$(".list_6 .spe_1 .spe_6").animate({'margin-left':t_index},100);
});
//畅销图书向右的切换动作
$(".list_6 div.spe_1 p.spe b.right").click(function(){
if(t_index!=0){
		t_index=t_index+266;
		if(t_index>=540){
			t_index=0;
		}
	}
	$(".list_6 .spe_1 .spe_6").animate({'margin-left':t_index},100);
});
//文学经典图书切换处
$(".list_6 div.spe_2 p.spe b.left").click(function(){
	t_index=t_index-266;
	if(t_index<=-800){
		t_index=-800;
	}
	$(".list_6 .spe_2 .boom").animate({'margin-left':t_index},100);
});
$(".list_6 div.spe_2 p.spe b.right").click(function(){
if(t_index!=0){
		t_index=t_index+266;
		if(t_index>=540){
			t_index=0;
		}
	}
	$(".list_6 .spe_2 .boom").animate({'margin-left':t_index},100);
});
//小说散文图书切换处
$(".list_6 div.spe_3 p.spe b.left").click(function(){
	t_index=t_index-266;
	if(t_index<=-1070){
		t_index=-1070;
	}
	$(".list_6 .spe_3 .rem_6").animate({'margin-left':t_index},100);
});
$(".list_6 div.spe_3 p.spe b.right").click(function(){
if(t_index!=0){
		t_index=t_index+266;
		if(t_index>=540){
			t_index=0;
		}
	}
	$(".list_6 .spe_3 .rem_6").animate({'margin-left':t_index},100);
});
//生活应用图书切换处
$(".list_6 div.spe_4 p.spe b.left").click(function(){
	t_index=t_index-266;
	if(t_index<=-1330){
		t_index=-1330;
	}
	$(".list_6 .spe_4 .lift_6").animate({'margin-left':t_index},100);
});
$(".list_6 div.spe_4 p.spe b.right").click(function(){
if(t_index!=0){
		t_index=t_index+266;
		if(t_index>=540){
			t_index=0;
		}
	}
	$(".list_6 .spe_4 .lift_6").animate({'margin-left':t_index},100);
});
//图书详情页
/*$(".list_6 div.spe_1 div.lt ul li").hover(function(){
	var index=$(this).index();
	$(".list_6 .spe_1 div.lt ul li .detail_6").eq(index).animate({'top':'-4%'},200);
},function(){
	$(".list_6 .spe_1 div.lt ul li .detail_6").eq(index).animate({'top':'100%'},200);
});*/



