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
				src="http://localhost:9090/contents/chubu/food/img/chubu_foodmain.PNG">
			<div class="text-block">
				<h4>에치젠 오로시 소바</h4>
				<br>
				<h8 class="tag">#문화체험 #엑티비티</h8>
				<p>
					후쿠이의 옛 지명인 에치젠 <br> 400년 이상의 전통을 가진 후쿠이의 진미
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>재배에 완벽한 기후를 갖춘 후쿠이현은</p>
				<p>특히 소바로 유명</p>
				<p>그 중에서도 에치젠 오로시 소바는</p>
				<p>국물에 무즙을 넣어 먹는 소바</p>
				<p>일본에서 평균수명이 가장 높은 현으로 유명한 </p>
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
							src="http://localhost:9090/contents/chubu/food/img/chubu_soba1.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/food/img/chubu_soba2.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/food/img/chubu_soba3.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/chubu/food/img/chubu_soba4.PNG"
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

				<div id="con_box05" class="con_box">
					<div id="con_img">
						<img alt="place5" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/chubu/food/img/chubu_food5.jpg">
						<div id="con_name">오시즈시</div>
					</div>
				</div>

				<div id="con_box06" class="con_box">
					<div id="con_img">
						<img alt="place6" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/chubu/food/img/chubu_food6.jpg">
						<div id="con_name">우나쥬</div>
					</div>

				</div>
				<div id="con_box07" class="con_box">
					<div id="con_img">
						<img alt="place7" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/chubu/food/img/chubu_food7.png">
						<div id="con_name">미소니코미우동</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>