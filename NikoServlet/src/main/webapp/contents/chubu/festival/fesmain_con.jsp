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
    var cnt = 1;
    function bookToggle() {
    	var img1 = document.getElementById("img1");
    	var img = document.getElementById("img2");
    	
    	if(cnt % 2 == 1) {
    		img1.src = "../../mark/markblack.png";
    		img2.src = "../../mark/markgreen.png";
    	} else {
    		img1.src = "../../mark/markgreen.png";
            img2.src = "../../mark/markblack.png";
    	}
    	cnt ++;
    }
    </script>
</head>
<body>
	<div id="main_box">

		<div id="con_headline">
			<div id="headline">
				<strong>주부의 축제</strong>
			</div>
			<hr id="con_hr">
		</div>

		<div id="con_box01" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes1.jpg">
				<div id="con_name">
					타카야마 마츠리 
				</div><img id="book" src="../../mark/markblack.png">

			</div>
		</div>

		<div id="con_box02" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes2.jpg">
				<div id="con_name">이이야마 등불 마츠리</div><img id="book" src="../../mark/markblack.png">
			</div>

		</div>
		<div id="con_box03" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes3.jpg">
				<div id="con_name">후지 마츠리</div><img id="book" src="../../mark/markblack.png">
			</div>
		</div>

		<div id="con_box04" class="con_box">
			<div id="con_img">
				<img alt="place4" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes4.jpg">
				<div id="con_name">야부사메 마츠리</div><img id="book" src="../../mark/markblack.png">
			</div>
		</div>

		<div id="con_box05" class="con_box">
			<div id="con_img">
				<img alt="place1" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes5.jpg">
				<div id="con_name">요시와라 기온제</div><img id="book" src="../../mark/markblack.png">
			</div>
		</div>

		<div id="con_box06" class="con_box">
			<div id="con_img">
				<img alt="place2" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes6.jpg">
				<div id="con_name">아타미 마츠리</div><img id="book" src="../../mark/markblack.png">
			</div>
		</div>

		<div id="con_box07" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes7.jpg">
				<div id="con_name">시미즈 미나토 마츠리</div><img id="book" src="../../mark/markblack.png">
			</div>
		</div>

		<div id="con_box08" class="con_box">
			<div id="con_img">
				<img alt="place3" onclick="location.href='fes_con.jsp'"
					src="http://localhost:9090/NikoServlet/contents/chubu/festival/img/chubu_fes8.jpg">
				<div id="con_name">카타카이 마츠리</div><img id="book" src="../../mark/markblack.png">
			</div>
		</div>
	</div>

</body>
</html>