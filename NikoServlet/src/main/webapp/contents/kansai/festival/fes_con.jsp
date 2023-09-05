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
				src="http://localhost:9090/contents/chubu/festival/img/chubu_fesmain.png">
			<div class="text-block">
				<h4>타카야마 마츠리</h4>
				<br>
				<h8 class="tag">#문화체험 #엑티비티</h8>
				<p>
					봄의 산노마츠리 : 4월 14~15일 <br> 가을의 하치만마츠리 : 10월 9~10일
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>봄의 산노마츠리, 가을의 하치만마츠리를 아울러</p>
				<p>타카야마 마츠리라고 한다.</p>
				<p>일본의 아름다운 3대 축제 중 하나</p>
				<p>100개의 축제용 수레가 마을을 도는 야간 행사는</p>
				<p>유네스코 문화유산으로 지정되어 있다.</p>
				<p>지역: 기후현 타카야마시 시로야마 156</p>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13293.922739881742!2d130.4105598!3d33.5928304!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x354191955375b9ed%3A0x1b512d5d3fcc9591!2z7ZWY7Lm07YOAIOq4sOyYqCDslbzrp4jsubTsgqw!5e0!3m2!1sko!2skr!4v1692845749750!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/festival/img/chubu_taka1.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/festival/img/chubu_taka2.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/festival/img/chubu_taka3.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/festival/img/chubu_taka4.PNG"
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

				<div id="con_box06" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/chubu/festival/img/chubu_fes6.jpg">
						<div id="con_name">아타미 마츠리</div>
					</div>
				</div>

				<div id="con_box07" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/chubu/festival/img/chubu_fes7.jpg">
						<div id="con_name">시미즈 미나토 마츠리</div>
					</div>
				</div>

				<div id="con_box08" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/chubu/festival/img/chubu_fes8.jpg">
						<div id="con_name">카타카이 마츠리</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>