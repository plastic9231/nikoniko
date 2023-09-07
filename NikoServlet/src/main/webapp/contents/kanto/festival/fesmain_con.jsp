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
			<div id="headline"><strong>간토의 축제</strong></div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes1.jpg">
				<div id="con_name">키부네 마츠리</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes2.jpg">
				<div id="con_name">카츠우라 빅 히나마츠리</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes3.jpg">
				<div id="con_name">사와라 대제 여름축제</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes4.png">
				<div id="con_name">마츠리 츠쿠바</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes5.jpg">
				<div id="con_name">카와고에 마츠리</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes6.png">
				<div id="con_name">치치부 밤 축제</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
			
		</div>
		<div id="con_box07" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/kanto/festival/img/kanto_fes7.jpg">
				<div id="con_name">토치키 아키마츠리</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

	</div>
</body>
</html>