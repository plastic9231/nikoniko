<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하라코메시</title>
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
				src="http://localhost:9090/contents/tohoku/food/img/tohoku_haramain.jpg">
			<div class="text-block">
				<h4>하라코메시</h4>
				<br>
				<p>
					미야기현 남부의 해안 마을 와타리초. <br> 도호쿠 제2의 대하, 아부쿠마가와 하구에 있다
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>아부쿠마가와의 연어는 가을의 미각으로</p>
				<p>예부터 쇼군에게도 진상되었던 명물</p>
				<p>와타리초 아라하마에서 시작된 향토 요리</p>
				<p>'하라코메시'는 연어를 삶은 국물로 지은 밥 위에</p>
				<p>살이 오른 연어와 반들반들한 연어알을 듬뿍 얹어 먹는다.</p>
				<p>한입 가득 입에 넣으면 쌀과 연어, 연어알이 삼위일체가 된</p>
				<p>최고의 맛을 느낄 수 있는 가을 한정 일품요리다.</p>

			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4443.908851515011!2d140.85725475427105!3d38.03967412018373!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5f8a169a6916e0c7%3A0x17c384b33c553348!2z7JmA7YOA66asIOyXrQ!5e0!3m2!1sko!2skr!4v1692948958405!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/food/img/hara1.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/food/img/hara2.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/food/img/hara3.png"
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
							src="http://localhost:9090/contents/tohoku/food/img/tohoku_food1.png">
						<div id="con_name">놋케돈</div>
					</div>
				</div>

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/tohoku/food/img/tohoku_food2.png">
						<div id="con_name">사카타의 술</div>
					</div>
				</div>


				<div id="con_box04" class="con_box">
					<div id="con_img">
						<img alt="place4" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/tohoku/food/img/tohoku_food4.png">
						<div id="con_name">훗케메시</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>