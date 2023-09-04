<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하카타 기온 야마카사</title>
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
				src="http://localhost:9090/contents/kyushu/festival/img/kyushu_fesmain.jpg">
			<div class="text-block">
				<h4>하카타 기온 야마카사</h4>
				<br>
				<p>
					후쿠오카현의 여름 축제 <br> 개최시기 : 매년 7월 1일, 9~15일
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>개최 시기에 하카타를 방문했다면 꼭 봐야할 마츠리 중 하나 </p>
				<p>2016년 유네스코 무형 문화유산에 등록</p>
				<p>하카타의 소친주, 구시다 신사의 봉납 제사</p> 
				<p>액운을 막는 기온 신앙으로 야마카사 제사로서 발전</p>
				<p>770년 이상 지역 주민에게 사랑받으며 </p>
				<p>하카타의 여름 명물로서 매년 열리고있다.</p>
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
							src="http://localhost:9090/contents/kyushu/festival/img/kyushu1.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kyushu/festival/img/kyushu2.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kyushu/festival/img/kyushu3.jpg"
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

				<div id="con_box01" class="con_box">
					<div id="con_img">
						<img alt="place1" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kyushu/landmark/img/fukutower.PNG">
						<div id="con_name">후쿠오카 타워</div>
					</div>
				</div>

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kyushu/landmark/img/yufuin.jpg">
						<div id="con_name">유후인 온천</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kyushu/landmark/img/sumiyoshi.PNG">
						<div id="con_name">스미요시 신사</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>