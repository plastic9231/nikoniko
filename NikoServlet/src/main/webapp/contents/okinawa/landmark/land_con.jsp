<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추라우미 수족관</title>
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
				src="http://localhost:9090/contents/okinawa/landmark/img/okinawa_landmain.PNG">
			<div class="text-block">
				<h4>추라우미 수족관</h4>
				<br>
				<h8 class="tag">#자연 #엑티비티</h8>
				<p>
					오키나와의 신비를 있는 그대로 <br> 수족관에서는 신비로 가득 찬 오키나와 생물들의 웅장한 세계가
					펼쳐집니다.
				</p>
			</div>
		</div>
		<div id="con_sidebar">
			<%@ include file="../../side/sidebar.jsp"%>
		</div>
		<div id="con_subject">
			<div id="subject_li">
				<ul>
					<li><b>오시는 길</b> : 나하공항에서 자가용 혹은 <br> 고속버스를 이용해서 방문
						도보로 약 20분, <br> 개화 기간 중에는 JR 후쿠시마역에서 임시 버스 운행 실시</li>
					<li><b>주소</b> : 오키나와현 구니가미군 모토부쵸 이시카와 424번지</li>
					<li><b>입장료</b> : 무료</li>
					<li><b>운영 시간</b> : 8:30 ~ 21:00</li>
					<li><b>명소의 포인트</b> <br> - 대규모 산호의 사육전시를 볼 수 있음 <br> 
					- 고래상어와 난요만타를 관찰할 수 있는 거대수조 '쿠로시오의 바다'<br>
					- '심층의 바다' 수조 등 오키나와의 바다를 그대로 체감할 수 있음</li>
				</ul>
			</div>
			<div id="con_map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3564.5665211189416!2d127.87543817600303!3d26.694342769439793!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34e4fa3152619e3d%3A0xea08a6700fdd9ffe!2z7LaU65287Jqw66-4IOyImOyhseq0gA!5e0!3m2!1sko!2skr!4v1693379509945!5m2!1sko!2skr"
					width="400px" height="400px" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<section id="slideshow_sec">
				<div class="slideshow-container">
					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/landmark/img/okinawa_chu1.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/landmark/img/okinawa_chu2.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/landmark/img/okinawa_chu3.PNG"
							style="width: 900px">
					</div>

					<div class="mySlides fade">
						<img
							src="http://localhost:9090/contents/okinawa/landmark/img/okinawa_chu4.PNG"
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