<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명소 상세보기</title>
<link rel="stylesheet" href="../../../css/header.css">
<link rel="stylesheet" href="../../../css/content_main.css">
<link rel="stylesheet" href="../../../css/content.css">
<link rel="stylesheet" href="../../side/sidebar.css">
<link rel="stylesheet" href="../../../css/footer.css">
</head>
<body>
	<div style="z-index: 999">
		<%@ include file="../../../common/header2.jsp"%></div>
	<main>
		<div id="conmain_img">
			<img id="main_img01" width="100%"
				src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/yufuin_main.jpg">
			<div class="text-block">
				<h4>유후인 온천</h4><br>
				<p>
					큐슈 오이타현 중앙부에 위치한 시 <br> 인구는 3만명 수준으로 우리나라의 평범한 읍정도이다. <br>
					온천으로 유명하여 연간 4백만명이 넘는 관광객이 찾을 정도로 유명한 관광 도시이다.
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<ul>
					<li><b>공항으로부터 거리</b> : <br>후쿠오카 공항으로부터 <br>차량 1시간 반,
						고속버스 2시간 반</li>
					<li><b>추천 관광 시간</b> : 1박</li>
					<li><b>입장료</b> : 온천마다 상이</li>
					<li><b>운영 시간</b> : 온천마다 상이</li>
					<li><b>명소의 포인트</b> <br> - 유후인 산 아래에 위치한 온천마을 <br> -
						소규모의 마을단위로 구성되어 있음 <br> - 휴식을 위해 떠나는 근교</li>
				</ul>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13344.172205112101!2d131.35393842514!3d33.26536522629576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3546adda3e1a84cb%3A0x8a840ebe489bd3d9!2z7Jyg7ZuE7J247Jet!5e0!3m2!1sko!2skr!4v1692338942389!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/yufu3.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/yufu2.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/yufu1.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/yufu4.jpg"
							style="width: 900px">
					</div>

					<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
						onclick="plusSlides(1)">❯</a>
				</div>

				<br>
				<script>
					let slideIndex = 1;
					showSlides(slideIndex);

					function plusSlides(n) {
						showSlides(slideIndex += n);
					}

					function currentSlide(n) {
						showSlides(slideIndex = n);
					}

					function showSlides(n) {
						let i;
						let slides = document
								.getElementsByClassName("mySlides");
						if (n > slides.length) {
							slideIndex = 1
						}
						if (n < 1) {
							slideIndex = slides.length
						}
						for (i = 0; i < slides.length; i++) {
							slides[i].style.display = "none";
						}

						slides[slideIndex - 1].style.display = "block";
					}
				</script>
			</section>

			<section id="con_footer">
				<div id="con_headline">
					<div id="headline">
						<strong>함께 둘러보면 좋을 주변 명소</strong>
					</div>
					<hr id="con_hr">
				</div>

				<div id="con_box01" class="con_box">
					<div id="con_img">
						<img alt="place1" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/fukutower.PNG">
						<div id="con_name">후쿠오카 타워</div>
					</div>
				</div>

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/yufuin.jpg">
						<div id="con_name">유후인 온천</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/kyushu/landmark/img/sumiyoshi.PNG">
						<div id="con_name">스미요시 신사</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>