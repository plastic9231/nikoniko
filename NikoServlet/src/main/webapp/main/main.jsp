<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일본여행 초심자에게는 니코니코니!</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/mainpage.css">
<link rel="stylesheet" href="../css/footer.css">
<script>
       document.addEventListener('DOMContentLoaded', function() {
           const imagesAndLinks = [
               {img: "../contentsimg/chubu_land1.jpg", link: "http://localhost:9090/contents/chubu/landmark/land_con.jsp"},
               {img: "../contentsimg/kanto_land1.jpg", link: "http://localhost:9090/contents/kanto/landmark/land_con.jsp"},
               {img: "../contentsimg/kyushu2.jpg", link: "http://localhost:9090/contents/kyushu/landmark/land_con.jsp"},
               {img: "../contentsimg/okinawa_land1.PNG", link: "http://localhost:9090/contents/okinawa/landmark/land_con.jsp"},
               {img: "../contentsimg/tohoku_land1.png", link: "http://localhost:9090/contents/tohoku/landmark/land_con.jsp"}
           ];

           function getRandomImagesAndLinks(num) {
               let shuffledData = [...imagesAndLinks];
               shuffledData.sort(() => 0.5 - Math.random());
               return shuffledData.slice(0, num);
           }

           const selectedData = getRandomImagesAndLinks(3);
           const slideItems = document.querySelectorAll(".slideitem");

           slideItems.forEach((slideItem, index) => {
               slideItem.querySelector('img').src = selectedData[index].img;
               slideItem.querySelector('a').href = selectedData[index].link;
           });
       });
   </script>
</head>
<body>
	<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>
	<main>
		<div class="allmap">
			<div class="map">
				<img src="../map/japan_map.png" alt="map" usemap="#japan_map">
				<map name="japan_map">
					<area shape="rect" id="hokkaido" coords="690,140,815,195"
						href="http://localhost:9090/contents/hokkaido/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="tohoku" coords="564,395,688,446"
						href="http://localhost:9090/contents/tohoku/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="kanto" coords="520,559,602,607"
						href="http://localhost:9090/contents/kanto/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="chubu" coords="403,552,491,600"
						href="http://localhost:9090/contents/chubu/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="kansai" coords="311,613,399,658"
						href="http://localhost:9090/contents/kansai/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="chugoku" coords="159,580,286,627"
						href="http://localhost:9090/contents/chugoku/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="shigoku" coords="169,652,284,697"
						href="http://localhost:9090/contents/shikoku/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="kyushu" coords="60,668,149,734"
						href="http://localhost:9090/contents/kyushu/landmark/landmain.jsp"
						target="_blank">
					<area shape="rect" id="okinawa" coords="54,103,188,150"
						href="http://localhost:9090/contents/okinawa/landmark/landmain.jsp"
						target="_blank">
				</map>
			</div>
		</div>
		<div class="section-first">
			<section>
				<!-- 콘텐츠 블록 1 -->
				<div class="userec">
					<table>
						<p style="font-size: 25px;">취향 저격 컨텐츠</p>
						<hr>
						<p style="font-size: 20px;">
							<em style="color: palevioletred;">이런 컨텐츠는 어때요?</em>
						</p>
						<a><p id="outputList" style="font-size: 23px; color: slategrey;"></p></a>
					</table>
				</div>
			</section>

			<script>
			const data = [
			{ text: "간토 > 미츠미네 신사", link: "http://localhost:9090/contents/kanto/landmark/land_con.jsp", image: "../img/placeholder.png" },
			{ text: "간토 > 키부네 마츠리", link: "http://localhost:9090/contents/kanto/festival/fes_con.jsp", image: "../img/placeholder.png" },
			{ text: "간토 > 몬자야키", link: "http://localhost:9090/contents/kanto/food/food_con.jsp", image: "../img/placeholder.png" },
			{ text: "주부 > 게로 온천", link: "http://localhost:9090/contents/chubu/landmark/land_con.jsp", image: "../img/placeholder.png" },
			{ text: "주부 > 타카야마 마츠리", link: "http://localhost:9090/contents/chubu/festival/fes_con.jsp", image: "../img/placeholder.png" },
			{ text: "주부 > 에치젠 오로시 소바", link: "http://localhost:9090/contents/chubu/food/food_con.jsp", image: "../img/placeholder.png" },
			{ text: "도호쿠 > 하나미야마 공원", link: "http://localhost:9090/contents/tohoku/landmark/land_con.jsp", image: "../img/placeholder.png" },
			{ text: "도호쿠 > 하라코메시", link: "http://localhost:9090/contents/tohoku/festival/fes_con.jsp", image: "../img/placeholder.png" },
			{ text: "큐슈 > 유후인 온천", link: "http://localhost:9090/contents/kyushu/landmark/land_con.jsp", image: "../img/placeholder.png" },
			{ text: "큐슈 > 하카타 기온 야마카사", link: "http://localhost:9090/contents/kyushu/festival/fes_con.jsp", image: "../img/placeholder.png" },
			{ text: "큐슈 > 돈코츠 라멘", link: "http://localhost:9090/contents/kyushu/food/food_con.jsp", image: "../img/placeholder.png" },
			{ text: "오키나와 > 추라우미 수족관", link: "http://localhost:9090/contents/okinawa/landmark/land_con.jsp", image: "../img/placeholder.png" },
			{ text: "오키나와 > 류큐 불꽃축제", link: "http://localhost:9090/contents/okinawa/festival/fes_con.jsp", image: "../img/placeholder.png" },
			{ text: "오키나와 > 오키나와 소바", link: "http://localhost:9090/contents/okinawa/food/food_con.jsp", image: "../img/placeholder.png" },
			{ text: "긴키 > 헤이안 신궁", link: "http://localhost:9090/contents/kansai/landmark/land_con.jsp", image: "../img/placeholder.png" },
			];

        function getRandomItems(arr, count) {
            const shuffledArray = [...arr];
            for (let i = shuffledArray.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [shuffledArray[i], shuffledArray[j]] = [shuffledArray[j], shuffledArray[i]];
            }
            return shuffledArray.slice(0, count);
        }

        // 출력 함수
        function displayRandomItems() {
            const outputList = document.getElementById("outputList");
            outputList.innerHTML = '';

            const randomItems = getRandomItems(data, 4);

            randomItems.forEach(item => {
                const li = document.createElement("p");
                const link = document.createElement("a");
                //link.textContent = item.text;
                link.href = item.link;
                link.target = "_self";
                //li.appendChild(link);
                //outputList.appendChild(li);
                
                const img = document.createElement("img");
                img.src = item.image;
                img.alt = item.text;
                img.className = "data-image";
                link.appendChild(img);

                const text = document.createElement("span");
                text.textContent = item.text;
                link.appendChild(text);
                li.appendChild(link);
                text.className = "data-text";
                outputList.appendChild(li);
            });
        }
        displayRandomItems();
    </script>
			<section>
				<!-- 콘텐츠 블록 2 -->
            <div class="section">
                <p style="font-size: 25px;" class="famous-search">인기 검색 여행지 &nbsp; </p>
               
                <input type="radio" name="slide" id="slide01" checked>
                <input type="radio" name="slide" id="slide02">
                <input type="radio" name="slide" id="slide03">
                <hr class="famous-search-line">
                <div class="slidewrap">
                    <ul class="slidelist">
                        <!-- 슬라이드 영역 -->
                        <li class="slideitem">
                            <a>
                                <div class="textbox"></div>
                                <img src="" height="300px">
                            </a>
                        </li>
                        <li class="slideitem">
                            <a>
                                <div class="textbox"></div>
                                <img src="" height="300px">
                            </a>
                        </li>
                        <li class="slideitem">
                            <a>
                                <div class="textbox"></div>
                                <img src="" height="300px">
                            </a>
                        </li>
                        <!-- 좌,우 슬라이드 버튼 -->
                        <div class="slide-control">
                            <div>
                                <label for="slide03" class="left"></label>
                                <label for="slide02" class="right"></label>
                            </div>
                            <div>
                                <label for="slide01" class="left"></label>
                                <label for="slide03" class="right"></label>
                            </div>
                            <div>
                                <label for="slide02" class="left"></label>
                                <label for="slide01" class="right"></label>
                            </div>
                        </div>
                    </ul>
                </div>
            </div>        
        </section>
        </div>
    </main> 
<%@ include file="../common/footer.jsp" %>
</body>
</html>
