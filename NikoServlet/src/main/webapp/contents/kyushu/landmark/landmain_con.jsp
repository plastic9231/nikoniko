<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../../css/content.css">
<link rel="stylesheet" href="../../css/content_main.css">
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
			<div id="headline"><strong>큐슈의 명소</strong></div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu1.PNG">
				<div id="con_name">후쿠오카 타워</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu2.jpg">
				<div id="con_name">유후인 온천</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu3.PNG">
				<div id="con_name">스미요시 신사</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu4.PNG">
				<div id="con_name">다자이후</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place5" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu5.PNG">
				<div id="con_name">캐널시티 하카타</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place6" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu6.PNG">
				<div id="con_name">오호리 공원</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box07" class="con_box">
			<div id="con_img">
				<img alt="place7" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu7.PNG">
				<div id="con_name">노코노시마 아일랜드</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box08" class="con_box">
			<div id="con_img">
				<img alt="place8" onclick="location.href='land_con.jsp'"
					src="http://localhost:9090/contents/kyushu/landmark/img/kyushu8.PNG">
				<div id="con_name">마린 월드</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>
	</div>
</body>
</html>