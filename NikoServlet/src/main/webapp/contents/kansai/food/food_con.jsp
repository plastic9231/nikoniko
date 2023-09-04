<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 상세보기</title>
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
				src="http://localhost:9090/contents/kansai/food/img/kansai_foodmain.png">
			<div class="text-block">
				<h4>오미 소고기</h4>
				<br>
				<p>
					3대 와규 중 하나인 오미 소고기 <br> 400년 이상의 역사를 지닌 일본에서 가장 오래된 브랜드 소
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>해외에서도 인기가 많은 와규.</p>
				<p>일본에 있는 200개가 넘는 브랜드 중에서도</p>
				<p>일본 3대 와규로 알려져 있습니다.</p>
				<p>오미 소고기는 풍요로운 자연환경과 물로 둘러싸인</p>
				<p>시가현 내에서 사육된 흑모 와규입니다.</p>
				<p>후쿠이 현에서 먹는 건강식으로 전국적인 주목을 받고 있다.</p>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51692.86474208052!2d136.14799997106434!3d35.92729613195925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5ff8afca583be1b7%3A0xbc10ea4ae7f1a4d5!2sKamezo!5e0!3m2!1sko!2skr!4v1693530512879!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kansai/food/img/kansai_soba1.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kansai/food/img/kansai_soba2.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kansai/food/img/kansai_soba3.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kansai/food/img/kansai_soba4.png"
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
						<strong>함께 즐기면 좋을 음식</strong>
					</div>
					<hr id="con_hr">
				</div>

				<div id="con_box01" class="con_box">
					<div id="con_img">
						<img alt="place1" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kansai/food/img/kansai_food1.png">
						<div id="con_name">오미 소고기</div>
					</div>
				</div>

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kansai/food/img/kansai_food2.png">
						<div id="con_name">오코노미야키</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kansai/food/img/kansai_food3.png">
						<div id="con_name">와카야마 라멘</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>