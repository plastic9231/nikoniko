<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명소 상세보기</title>
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
				src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_landmain.png">
			<div class="text-block">
				<h4>헤이안 신궁</h4>
				<br>
				<p>
					헤이안 천도 1,100년을 기념해 1895년에 창건된 헤이안 신궁. <br> 역사의 틈바구니에서 황폐해진 교토
					거리의 부활을 기원하며, 교토 부흥의 상징으로서 건축되었다. <br> 사계절의 꽃들이 아름다운 정원이 펼쳐져
					있습니다.
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<ul>
					<li><b>오시는 길</b> : JR 교토역에서 버스 <br> (시영 버스 5계통, 라쿠 버스
						100호, 110호 계통)로 <br> 오카자키 공원 미술관, 헤이안 신궁 앞 하차. <br> 도보로
						약 5분나리타공항에서 온천까지 약 4시간 30분</li>
					<li><b>주소</b> : 교토부 교토시 사쿄구 오카자키 니시텐노초 97</li>
					<li><b>입장료</b> : 무료</li>
					<li><b>운영 시간</b> : 없음</li>
					<li><b>명소의 포인트</b> <br> - 1895년 창건 당시부터 계속되어 온 지다이 축제는 <br>
						&nbsp;헤이안 신궁의 대제이며, 교토 3대 축제 중 하나로 유명</li>
				</ul>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3267.629354153339!2d135.7798513762364!3d35.01598227280937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x600108e5187cc88d%3A0x75bed992d897454f!2z7Zek7J207JWIIOyLoOq2gQ!5e0!3m2!1sko!2skr!4v1693541455061!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_hei1.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_hei2.png"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_hei3.png"
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

				<div id="con_box03" class="con_box">
					<div id="con_img">
						<img alt="place3" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_land3.png">
						<div id="con_name">후시미 이나리 신사</div>
					</div>
				</div>

				<div id="con_box04" class="con_box">
					<div id="con_img">
						<img alt="place4" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_land4.png">
						<div id="con_name">만국박람회 기념공원</div>
					</div>
				</div>

				<div id="con_box05" class="con_box">
					<div id="con_img">
						<img alt="place5" onclick="location.href='land_con.jsp'"
							src="http://localhost:9090/NikoServlet/contents/kansai/landmark/img/kansai_land5.png">
						<div id="con_name">오사카 시립 주택박물관</div>
					</div>
				</div>
			</section>

		</div>
	</main>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>