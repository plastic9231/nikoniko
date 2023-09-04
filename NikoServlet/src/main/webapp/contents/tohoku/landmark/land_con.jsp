<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나미야마 공원</title>
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
				src="http://localhost:9090/contents/tohoku/landmark/img/hana_main1.jpg">
			<div class="text-block">
				<h4>하나미야마 공원</h4>
				<br>
				<p>
					후쿠시마의 무릉도원이라 불리는 하나미야마 공원은 <br> 매화, 여러 종류의 벚꽃, 개나 리, 산당화, 산수유,
					목련, 꽃복숭아 등의 꽃들이 일제히 앞 다퉈 핍니다 <br> 그야말로 '무릉도원' 이라는 말이 어울리는
					명소입니다.
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<ul>
					<li><b>오시는 길</b> : JR 후쿠시마역에서 버스로 <br> 하나미야마 공원 입구 하차,
						도보로 약 20분, <br> 개화 기간 중에는 JR 후쿠시마역에서 임시 버스 운행 실시</li>
					<li><b>주소</b> : 후쿠시마현 후쿠시마시 와타리</li>
					<li><b>입장료</b> : 무료</li>
					<li><b>운영 시간</b> : 6:00 ~ 18:00</li>
					<li><b>명소의 포인트</b> <br> - 걸으면서 즐기는 산책형 꽃놀이 <br> -
						봄뿐만 아니라 여름과 가을에도 즐길 수 있음</li>
				</ul>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25242.300435527515!2d140.4734534256633!3d37.73639763945084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5f8a841105535735%3A0x914a839d1ca63417!2sHanamiyama%20Park!5e0!3m2!1sko!2skr!4v1692930035933!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/landmark/img/hana3.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/landmark/img/hana2.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/tohoku/landmark/img/hana1.png"
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

				<div id="con_box02" class="con_box">
					<div id="con_img">
						<img alt="place2" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/tohoku/landmark/img/tohoku_land2.png">
						<div id="con_name">오우치 쥬쿠</div>
					</div>

				</div>
				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/tohoku/landmark/img/tohoku_land3.png">
						<div id="con_name">엔쓰인 사원</div>
					</div>
				</div>

				<div id="con_box05" class="con_box">
					<div id="con_img">
						<img alt="place5" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/contents/tohoku/landmark/img/tohoku_land5.png">
						<div id="con_name">혼야 미술관</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>