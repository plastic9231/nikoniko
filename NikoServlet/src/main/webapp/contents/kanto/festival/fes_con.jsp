<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>키부네 마츠리</title>
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
				src="http://localhost:9090/contents/kanto/festival/img/kanto_fesmain.jpg">
			<div class="text-block">
				<h4>키부네 마츠리</h4>
				<br>
				<h8 class="tag">#문화체험 #엑티비티</h8>
				<p>
					일본의 3대 항구 마츠리 중 하나 <br> 개최시기 : 매년 7월 마지막 주 금요일과 토요일
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<p>일본의 국가 지정 중요 무형 민속 문화재인 유서깊은 축제</p>
				<p>전국적으로 유명한 일본의 배 축제</p>
				<p>키부네 신사의 예대 축제로</p>
				<p>화려한 꽃 장식이나 송풍기로 장식된 코하야선과</p>
				<p>가마선등이 쿠덴마에 예언되어 항상 도어를 하는 배 축제</p>
				<p>일본의 3대 선 축제 중 하나</p>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3245.335009658788!2d139.73327164721474!3d35.570122212322865!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x601861aebd7494c9%3A0xaa2d22c4bc643014!2z7YKk7ZuE64SkIOyLoOyCrCAo7Jik66qo66asKQ!5e0!3m2!1sko!2skr!4v1693536499341!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/festival/img/kanto_kibu1.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/festival/img/kanto_kibu2.jpg"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/festival/img/kanto_kibu3.jpg"
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

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/kanto/festival/img/kanto_fes2.jpg">
						<div id="con_name">카츠우라 빅 히나마츠리</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/kanto/festival/img/kanto_fes3.jpg">
						<div id="con_name">사와라 대제 여름축제</div>
					</div>
				</div>

				<div id="con_box04" class="con_box">
					<div id="con_img">
						<img alt="place4" onclick="location.href='fes_con.jsp'"
							src="http://localhost:9090/contents/kanto/festival/img/kanto_fes4.png">
						<div id="con_name">마츠리 츠쿠바</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>