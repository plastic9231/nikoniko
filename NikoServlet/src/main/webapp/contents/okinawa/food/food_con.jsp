<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오키나와 소바</title>
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
				src="http://localhost:9090/contents/okinawa/food/img/okinawa_foodmain.jpg">
			<div class="text-block">
				<h4>오키나와 소바</h4>
				<br>
				<p>
					오키나와 요리의 하나인 면 요리 <br> 오키나와어로는 수바라고한다.
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>일본 본토에서 소바는 주로 메밀국수이지만</p>
				<p>오키나와에서는 밀가루로 만든 국수를 지칭한다.</p>
				<p>한국인들 사이에서는 약간 호불호가 갈리기도 한다.</p>
				<p>올라가는 토핑에 따라 메뉴의 이름이 달라진다.</p>
				<p>돼지갈비가 올라가는 가장 대중적인 소키 소바</p>
				<p>삼겹살을 올리는 산마이니쿠토 소바</p>
				<p>삶은 돼지 족발을 올리는 데비치 소바</p>
				<p>우치나 야마토구치(스팸)을 올리는 포크 소바</p>

			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d458157.85240754945!2d127.21012000149017!3d26.217547600000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34e5690b0fa9b55f%3A0x42648e87168171b5!2sSobe%20Soba!5e0!3m2!1sko!2skr!4v1693365652716!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/food/img/okinawa1.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/food/img/okinawa2.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/food/img/okinawa3.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/food/img/okinawa4.jpg"
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
							src="http://localhost:9090/contents/okinawa/food/img/okinawa_food1.jpg">
						<div id="con_name">글루콘 튀김</div>
					</div>
				</div>

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/okinawa/food/img/okinawa_food2.PNG">
						<div id="con_name">친스코</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/okinawa/food/img/okinawa_food3.PNG">
						<div id="con_name">칠라거</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>