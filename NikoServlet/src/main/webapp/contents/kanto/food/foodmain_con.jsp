<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../../../css/content.css">
<link rel="stylesheet" href="../../../css/content_main.css">
<script>
	function clicked(what) {
	    if (what.src.endsWith('markblack2.png')) {
	        what.src = '../../mark/markblack.png';
	    } else {
	        what.src = '../../mark/markblack2.png';
	    }
	}
</script>
</head>
<body>
	<div id="main_box">

		<div id="con_headline">
			<div id="headline"><strong>간토의 음식</strong></div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/kanto/food/img/kanto_food1.jpg">
				<div id="con_name">이가 만쥬</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/kanto/food/img/kanto_food2.jpg">
				<div id="con_name">요코스카 해군카레</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kanto/food/img/kanto_food3.jpg">
				<div id="con_name">미즈사와 우동</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/kanto/food/img/kanto_food4.jpg">
				<div id="con_name">우츠노미야 교자</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place5" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/kanto/food/img/kanto_food5.jpg">
				<div id="con_name">몬자야키</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place6" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/kanto/food/img/kanto_food6.jpg">
				<div id="con_name">나메로우</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

	</div>
</body>
</html>