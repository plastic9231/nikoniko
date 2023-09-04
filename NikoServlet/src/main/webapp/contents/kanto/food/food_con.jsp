<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>몬자야키</title>
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
				src="http://localhost:9090/contents/kanto/food/img/kanto_foodmain.jpg">
			<div class="text-block">
				<h4>몬자야키</h4>
				<br>
				<p>
					간사이에 오코노미야키가 있다면 <br> 간토에는 몬자야키가 있다
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>여러가지 채소와 기타 해물등을 넣고</p>
				<p>철판에 반죽형태로 볶는 일본 요리이다.</p>
				<p>오코노미야키가 유사하나 주로 간토지방에서 유행하며</p>
				<p>오코노미야키보다 수분이 훨씬 많다.</p>
				<p>유명 몬자야키 음식점은 도쿄도 쓰키시마 지구에 몰려있다.</p>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13293.859537520357!2d130.38657295541992!3d33.5932405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x354191937523cf49%3A0x686cca1ac34ca0bb!2z7J207LmY656AIOuzuOygkA!5e0!3m2!1sko!2skr!4v1692863797424!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/food/img/kanto_mon1.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/food/img/kanto_mon2.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/food/img/kanto_mon3.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/food/img/kanto_mon4.jpg"
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

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kanto/food/img/kanto_food2.jpg">
						<div id="con_name">요코스카 해군카레</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kanto/food/img/kanto_food3.jpg">
						<div id="con_name">미즈사와 우동</div>
					</div>
				</div>

				<div id="con_box04" class="con_box">
					<div id="con_img">
						<img alt="place4" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kanto/food/img/kanto_food4.jpg">
						<div id="con_name">우츠노미야 교자</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>