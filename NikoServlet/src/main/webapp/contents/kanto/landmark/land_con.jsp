<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미츠미네 신사</title>
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
				src="http://localhost:9090/contents/kanto/landmark/img/kanto_landmain.PNG">
			<div class="text-block">
				<h4>미츠미네 신사</h4>
				<br>
				<h8 class="tag">#문화체험 #자연</h8>
				<p>
					일본 신화 속 신인 이자나기노미코노와 이자나미노미코토가 있는 신사 <br> 사시사철 여러행사가 개최되고 있다 <br>
					가마쿠라 막부 당시 무장이 봉현한 800년 정도 된 신목도 볼거리
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<ul>
					<li><b>오시는 길</b> : <br>나리타 공항으로부터 약 2시간 <br> 하네다
						공항으로부터 약 1시간 반</li>
					<li><b>주소</b> : 사이타마현 치치부시 미츠미네 298-1</li>
					<li><b>입장료</b> : 없음</li>
					<li><b>운영 시간</b> : 9:00 ~ 17:00</li>
					<li><b>명소의 포인트</b> <br> - 일본 신화에 관심은 사람들에게 추천 <br> -
						여름에는 미츠미네 사자무라는 사슴을 형상화한 연을 붙여 <br> &nbsp;하카마를 입고 춤추는 것을 구경할
						수 있다. <br> - 겨울에는 이노리노토모시바라는 행사에서 <br> &nbsp;참배객들의 염원을
						담은 동명을 봉납할 수 있다.</li>
				</ul>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d207204.3539517447!2d139.6089894741021!3d35.76142073178109!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188ec1a4f7423d%3A0x2cbc4b594c448d5e!2z66-47JOw66-464SkIOyLoOyCrA!5e0!3m2!1sko!2skr!4v1693534116476!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_mitu3.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_mitu2.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_mitu1.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_mitu4.PNG"
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
						<strong>함께 둘러보면 좋을 주변 명소</strong>
					</div>
					<hr id="con_hr">
				</div>

				<div id="con_box05" class="con_box">
					<div id="con_img">
						<img alt="place1" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_land5.jpg">
						<div id="con_name">스카이트리</div>
					</div>
				</div>

				<div id="con_box06" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_land6.jpg">
						<div id="con_name">국영 히타치해변공원</div>
					</div>
				</div>

				<div id="con_box07" class="con_box">
					<div id="con_img">
						<img alt="place7" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/kanto/landmark/img/kanto_land7.jpg">
						<div id="con_name">디즈니랜드</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>