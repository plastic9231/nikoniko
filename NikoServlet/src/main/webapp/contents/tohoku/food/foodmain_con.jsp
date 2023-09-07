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
			<div id="headline"><strong>도호쿠의 음식</strong></div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food1.png">
				<div id="con_name">놋케돈</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food2.png">
				<div id="con_name">사카타의 술</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food3.png">
				<div id="con_name">하라코메시</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food4.png">
				<div id="con_name">훗케메시</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place5" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food5.png">
				<div id="con_name">기타카타 라멘</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place6" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food6.png">
				<div id="con_name">후쿠시마 일본주</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>
		
		<div id="con_box07" class="con_box">
			<div id="con_img">
				<img alt="place7" onclick="location.href='food_con.jsp'"
					src="http://localhost:9090/contents/tohoku/food/img/tohoku_food7.PNG">
				<div id="con_name">우메가에모치</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>
	</div>
</body>
</html>