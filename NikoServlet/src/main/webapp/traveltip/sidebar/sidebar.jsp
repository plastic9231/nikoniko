<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드바</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="sidebar.css">
</head>
<body>
	<div class="sidebar">
		<div class="sidebar_ul">
			<button id="spreadBtn02" class="btn01">대중교통
			<span class="material-symbols-outlined">expand_more</span></button>
			<ul id="hiddenList01" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">버스</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">지하철</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">택시</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">교통패스</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<button id="spreadBtn03" class="btn01">환율정보
			<span class="material-symbols-outlined">expand_more</span></button>
			<ul id="hiddenList02" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">환율정보</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<button id="spreadBtn04" class="btn01">지역쿠폰
			<span class="material-symbols-outlined">expand_more</span></button>
			<ul id="hiddenList03" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">도쿄</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">오사카</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">후쿠오카</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#" class="list_a">기타지역</a></li>
			</ul>
		</div>
		<div class="sidebar_ul_last">
			<button id="spreadBtn05" class="btn01">여행회화
			<span class="material-symbols-outlined">expand_more</span></button>
			<ul id="hiddenList04" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="http://localhost:9090/NikoServlet/traveltip/conversation/conv_checkin.jsp" class="list_a">숙소 체크인할 때</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="http://localhost:9090/NikoServlet/traveltip/conversation/conv_menuorder.jsp" class="list_a">음식점 주문할 때</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="http://localhost:9090/NikoServlet/traveltip/conversation/conv_askway.jsp" class="list_a">길 물어볼 때</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="http://localhost:9090/NikoServlet/traveltip/conversation/conv_toilet.jsp" class="list_a">편의점 화장실 이용</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="http://localhost:9090/NikoServlet/traveltip/conversation/conv_taxi.jsp" class="list_a">택시 탈 때</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="http://localhost:9090/NikoServlet/traveltip/conversation/conv_shopping.jsp" class="list_a">쇼핑할 때</a></li>
			</ul>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>
		$(document).ready(function(){
		    $('#spreadBtn02').click(function(){
		        if($("#hiddenList01").is(":visible")){
		            $("#spreadBtn02").toggleClass("");
		      	    $("#hiddenList01").slideUp();
		        }else{
		            $("#spreadBtn02").toggleClass("");
			    $("#hiddenList01").slideDown();
		        }
		    });
		});
		$(document).ready(function(){
		    $('#spreadBtn03').click(function(){
		        if($("#hiddenList02").is(":visible")){
		            $("#spreadBtn03").toggleClass("");
		      	    $("#hiddenList02").slideUp();
		        }else{
		            $("#spreadBtn03").toggleClass("");
			    $("#hiddenList02").slideDown();
		        }
		    });
		});
		$(document).ready(function(){
		    $('#spreadBtn04').click(function(){
		        if($("#hiddenList03").is(":visible")){
		            $("#spreadBtn04").toggleClass("");
		      	    $("#hiddenList03").slideUp();
		        }else{
		            $("#spreadBtn04").toggleClass("");
			    $("#hiddenList03").slideDown();
		        }
		    });
		});
		$(document).ready(function(){
		    $('#spreadBtn05').click(function(){
		        if($("#hiddenList04").is(":visible")){
		            $("#spreadBtn05").toggleClass("");
		      	    $("#hiddenList04").slideUp();
		        }else{
		            $("#spreadBtn05").toggleClass("");
			    $("#hiddenList04").slideDown();
		        }
		    });
		});
	</script>
</body>
</html>