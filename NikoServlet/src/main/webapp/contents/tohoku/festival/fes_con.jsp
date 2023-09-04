<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사쿠라 야부사메</title>
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
				src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fesmain.png">
			<div class="text-block">
				<h4>사쿠라 야부사메</h4>
				<br>
				<h8 class="tag">#문화체험 #엑티비티</h8>
				<p>
				아오모리현 도와다시 니시 산반초 3 <br> 개최시기 : 매년 4월 하순
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
			 <p>'일본의 거리 100선'과 '신일본 100경'에도 선정된 </p>
			 <p>아오모리현 도와다시의 명승,</p> 
			 <p>관청 거리 고마 가도. 4월 하순에는 벚꽃이 만개한다.</p>
			 <p>사쿠라 야부사메는 이 고마 가도에 면 한 공원에서 개최되는 </p>
			 <p>여류 기사 한정 야부사메 경기 이벤트이다. </p>
			 <p>만개한 벚꽃 가로수 아래 약 200m의 야부사메 주로를 말이 질주한다. </p>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387988.1445518141!2d140.45408979896047!3d40.56020170132758!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5f9b3f99612f3763%3A0x7f4ca9ac462c6a78!2z7J2867O4IOyVhOyYpOuqqOumrO2YhCDrj4TsmYDri6Tsi5w!5e0!3m2!1sko!2skr!4v1692953600250!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/festival/img/sakura1.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/festival/img/sakura2.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/festival/img/sakura3.png"
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
						<img alt="place1" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes1.png">
						<div id="con_name">니혼마쓰 제등 축제</div>
					</div>
				</div>

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes2.png">
						<div id="con_name">센다이 칠석 축제</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/tohoku/festival/img/tohoku_fes3.png">
						<div id="con_name">간토 축제</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>