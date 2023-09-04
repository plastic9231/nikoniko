<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축제 상세보기</title>
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
				src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/okinawa_fesmain.PNG">
			<div class="text-block">
				<h4>류큐 불꽃 축제</h4>
				<br>
				<p>
					일본에서 가장 빠른 여름 불꽃 축제 <br> 개최시기 : 매년 4월
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>1시간동안 만 여 발의 불꽃을 쏘아 올리는 큰 규모의 축제</p>
				<p>음악에 싱크로를 맞춘 불꽃을 볼 수 있다는 특징</p>
				<p>처음부터 마지막까지 불꽃 일루젼을 충분히 즐길 수 있다</p>
				<p>· 입장료 (일반) : 어른 4,500엔 / 어린이 2,000엔</p>
				<p>티켓은 당일 요금이 더 비싸니 미리 구매하는 것을 추천</p>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14309.562116375459!2d127.73181300000002!3d26.281437!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34e56ca56f87675f%3A0x90efe07a51ab735d!2sTropical%20Beach!5e0!3m2!1sko!2sus!4v1693365754363!5m2!1sko!2sus"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/oki1.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/oki2.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/oki3.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/oki4.PNG"
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
						<strong>함께 방문하면 좋을 축제</strong>
					</div>
					<hr id="con_hr">
				</div>

				<div id="con_box05" class="con_box">
					<div id="con_img">
						<img alt="place1" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/okinawa_fes5.PNG">
						<div id="con_name">이에 섬 백합 축제</div>
					</div>
				</div>

				<div id="con_box06" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/okinawa_fes6.PNG">
						<div id="con_name">나하 하리</div>
					</div>

				</div>
				<div id="con_box07" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/okinawa/festival/img/okinawa_fes7.PNG">
						<div id="con_name">오키나와 전도 에이사 축제</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>