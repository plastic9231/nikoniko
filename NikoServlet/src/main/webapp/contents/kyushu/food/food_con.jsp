<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돈코츠 라멘</title>
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
				src="http://localhost:9090/contents/kyushu/food/img/kyushu_foodmain.PNG">
			<div class="text-block">
				<h4>돈코츠 라멘</h4>
				<br>
				<p>
					라멘의 한 종류로 <br> 돼지뼈를 우려 만드는 라멘
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>후쿠오카 현 구루메시에서 1947년 창업한 포장마차 삼구(三九)에서</p>
				<p>우연히 돼지뼈로 만든 라멘 국물이 만들어져</p>
				<p>이 스프로 라멘을 팔았다는 설이 있다.</p>
				<p>이로 인해 구루메 라멘이 생기고,</p>
				<p>이윽고 가고시마현을 제외한 규슈 각지에 영향을 미치고,</p>
				<p>이 스타일이 전해져 하카타 라멘이 되었다는 설 등이 있다.</p>
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
							src="http://localhost:9090/contents/kyushu/food/img/kyushu1.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kyushu/food/img/kyushu2.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kyushu/food/img/kyushu3.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kyushu/food/img/kyushu4.jpg"
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

				<div id="con_box07" class="con_box">
					<div id="con_img">
						<img alt="place7" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kyushu/food/img/kyushu_food7.PNG">
						<div id="con_name">우메가에모치</div>
					</div>
				</div>

				<div id="con_box08" class="con_box">
					<div id="con_img">
						<img alt="place8" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kyushu/food/img/kyushu_food8.PNG">
						<div id="con_name">하카타 와규</div>
					</div>
				</div>
				<div id="con_box08" class="con_box">
					<div id="con_img">
						<img alt="place9" onclick="location.href='food_con.jsp'"
							src="http://localhost:9090/contents/kyushu/food/img/kyushu_food9.jpg">
						<div id="con_name">부젠 게</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>