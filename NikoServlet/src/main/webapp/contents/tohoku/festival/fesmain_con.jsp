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
			<div id="headline"><strong>도호쿠의 축제</strong></div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes1.png">
				<div id="con_name">니혼마쓰 제등 축제</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes2.png">
				<div id="con_name">센다이 칠석 축제</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes3.png">
				<div id="con_name">간토 축제</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes4.png">
				<div id="con_name">오마가리 불꽃축제</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes5.png">
				<div id="con_name">구로이시 요사레</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>
		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes6.png">
				<div id="con_name">사쿠라 야부사메</div><input type="image" class="mark_button" onclick="clicked(this)" src="../../mark/markblack2.png">
			</div>
		</div>
	</div>
</body>
</html>