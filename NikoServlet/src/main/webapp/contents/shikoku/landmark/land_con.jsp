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
				src="http://localhost:9090/contents/chubu/landmark/img/chubu_landmain.PNG">
			<div class="text-block">
				<h4>게로 온천</h4>
				<br>
				<h8 class="tag">#문화체험 #엑티비티</h8>
				<p>
					기후현에 위치한 일본의 3대 온천 중 하나 <br> 하다 강을 중심으로 번화가와 산림의 운치를 동시에 즐길 수
					있다 <br> 온천의 매끈한 느낌이 유명하다.
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<ul>
					<li><b>오시는 길</b> : 나리타공항에서 온천까지 약 4시간 30분 <br> 간사이공항에서
						온천까지 약 3시간 20분<br> 주부공항에서 온천까지 약 2시간</li>
					<li><b>주소</b> : 기후현 게로시 고덴</li>
					<li><b>입장료</b> : 무료</li>
					<li><b>운영 시간</b> : 따로없으나 전철은 10시정도가 마지막</li>
					<li><b>명소의 포인트</b> <br> - 여행으로 지쳐있을 때 휴식을 취하러 가기
						좋은 곳 <br> - 료칸에 머물며 온천을 자유롭게 즐겨도 좋지만,<br> &nbsp;부담없이
						거리에서 즐길 수 있는 족탕이나 연못 이용가능 <br>- 게로 온천의 토속주나 히다규가 별미</li>
				</ul>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d207028.49607331865!2d137.10235673425657!3d35.82888563359171!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6002dbca7bee52b1%3A0x15ceb1c533f5a12a!2z6rKM66GcIOqwk-yHvOuniOydhA!5e0!3m2!1sko!2skr!4v1693382488634!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/landmark/img/chubu_gero1.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/landmark/img/chubu_gero2.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/landmark/img/chubu_gero3.PNG"
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

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/chubu/landmark/img/chubu_land2.jpg">
						<div id="con_name">마츠모토 성</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/chubu/landmark/img/chubu_land3.jpg">
						<div id="con_name">쿠로베 협곡열차</div>
					</div>
				</div>

				<div id="con_box04" class="con_box">
					<div id="con_img">
						<img alt="place4" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/chubu/landmark/img/chubu_land4.jpg">
						<div id="con_name">후지산</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>