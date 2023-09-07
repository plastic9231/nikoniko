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
			<div id="headline"><strong>주부의 음식</strong></div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food1.jpg">
				<div id="con_name">에치젠 오로시 소바</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food2.jpg">
				<div id="con_name">호바미소</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food3.jpg">
				<div id="con_name">오야키</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food4.jpg">
				<div id="con_name">놋페지루</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place5" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food5.jpg">
				<div id="con_name">오시즈시</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place6" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food6.jpg">
				<div id="con_name">우나쥬</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box07" class="con_box">
			<div id="con_img">
				<img alt="place7" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food7.png">
				<div id="con_name">미소니코미우동</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box08" class="con_box">
			<div id="con_img">
				<img alt="place8" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/chubu/food/img/chubu_food8.jpg">
				<div id="con_name">호토</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>
		<div id="con_box08" class="con_box">
            <div id="con_img">
                <img alt="place9" onclick="location.href='food_con.jsp'"
                    src="http://localhost:9090/contents/chubu/food/img/chubu_food9.jpg">
                <div id="con_name">카부라즈시</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
            </div>
        </div>
	</div>
</body>
</html>