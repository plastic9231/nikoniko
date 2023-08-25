<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
   <link rel="stylesheet" href="../css/header.css">
   <link rel="stylesheet" href="../css/mainpage.css">
   <link rel="stylesheet" href="../css/footer.css">
</head>
<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

    <main>
    <div class="allmap">
        <div class="map">
            <img src="../map/지도 전체.png" alt="map">
        </div>   
    </div>
        
        <div class="section-first">
        <section>
       
            <!-- 콘텐츠 블록 1 -->
            <div class="userec">
                <table>
                    <p style="font-size: 25px;">취향 저격 여행지 &nbsp; <em style="font-size: 15px; color: gray;"> 이런 곳은 어때요?</em></p>
                    <hr>
                    <p style="font-size: 20px;"><em style="color: palevioletred;"> #휴양 #레져 </em> 에 관심있는 당신!</p>
                    <p style="font-size: 23px; color: slategrey;" ><a href="#"><img src="../img/placeholder.png" width="23px" height="23px"> 위치 1</a></p>
                    <p style="font-size: 23px; color: slategrey;" ><a href="#"><img src="../img/placeholder.png" width="23px" height="23px"> 위치 2</a></p>
                    <p style="font-size: 23px; color: slategrey;" ><a href="#"><img src="../img/placeholder.png" width="23px" height="23px"> 위치 3</a></p>
                    <p style="font-size: 23px; color: slategrey;" ><a href="#"><img src="../img/placeholder.png" width="23px" height="23px"> 위치 4</a></p>
                </table>
            </div>
        
        </section>
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
                                <div class="textbox">
                                </div>
                                <img src="../img/slide01.jpg">
                            </a>
                        </li>
                        <li class="slideitem">
                            <a>
                                
                                <div class="textbox">
                                </div>
                                <img src="../img/slide02.jpg">
                            </a>
                        </li>
                        <li class="slideitem">
                            <a>
                                
                                <div class="textbox">
                                </div>
                                <img src="../img/slide03.jpg">
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