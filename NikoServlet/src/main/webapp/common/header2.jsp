<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
   <link rel="stylesheet" href="../css/header.css">
</head>
<body>
<header>
		 <div class="user">
        <%
        String loginID = (String)session.getAttribute("loginID");
        if (loginID != null) {
        	%>
           	<span><a href="/login/logout.jsp">로그아웃&nbsp;</a> |</span>
            <span><a href="/mypage/mypage.jsp">마이페이지</a></span>
            <span><a href="/bookmark/bookmark_main2.ndo"><img src="http://localhost:9090/img/markgreen.png"></a></span>
            <div class="book_out" style="width: 30px; height: 30px;"><a href="/bookmark/bookmark_main.ndo"><img src="http://localhost:9090/img/notitle.png"></a></div>
        <% }
        if (loginID == null)
        {%>
        <span><a href="/login/login.ndo">로그인&nbsp;</a> |</span>
           <span><a href="/join/join.jsp">회원가입</a></span>
        <%} %> 
</div>
        <div class="menu">
            <div class="logo">
                <span><a href="/main/main.ndo"><img src="http://localhost:9090/img/logo.png"></a></span>
            </div>
            <div class="rec" align="center" style="z-index: 999;">지역별 추천
                <div class="submenu" align="center">
                    <div class="region-wrapper">
                        <div class="region">
                            <h4>주부</h4>
                            <ul>          
                                <li><a href="http://localhost:9090/contents/chubu/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/chubu/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/chubu/food/food_con.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>간토</h4>  
                            <ul>
                                <li><a href="http://localhost:9090/contents/kanto/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/kanto/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/kanto/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>긴키</h4>    
                            <ul>
                                <li><a href="http://localhost:9090/contents/kansai/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/kansai/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/kansai/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>         

                        <div class="region">
                            <h4>주고쿠</h4> 
                            <ul>                  
                                <li><a href="http://localhost:9090/contents/chugoku/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/chugoku/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/chugoku/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>시고쿠</h4>     
                            <ul>
                                <li><a href="http://localhost:9090/contents/shikoku/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/shikoku/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/shikoku/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>홋카이도</h4>     
                            <ul>
                                <li><a href="http://localhost:9090/contents/hokkaido/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/hokkaido/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/hokkaido/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>도호쿠</h4>     
                            <ul>
                                <li><a href="http://localhost:9090/contents/tohoku/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/tohoku/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/tohoku/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>큐슈</h4>     
                            <ul>
                                <li><a href="http://localhost:9090/contents/kyushu/landmark/landmain.jsp">명소</a></li>
                                <li><a href="http://localhost:9090/contents/kyushu/festival/fesmain.jsp">축제</a></li>
                                <li><a href="http://localhost:9090/contents/kyushu/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                        <div class="region">
                            <h4>오키나와</h4>     
                            <ul>
                                <li><a href="http://localhost:9090/contents/okinawa/landmark/landmain.jsp	">명소</a></li>
                                <li><a href="http://localhost:9090/contents/okinawa/festival/fesmain.jsp">축제</a></li>
                               	<li><a href="http://localhost:9090/contents/okinawa/food/foodmain.jsp">음식</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>  
            
            <div class="tip"align="center" style="z-index: 999;">여행TIP
                <div class="tip-sub">
                    <ul align="left">
                       <li><a href="http://localhost:9090/traveltip/traffic/subway.jsp">대중 교통</a></li>
                       <li><a href="#">환율 정보</a></li>
                       <li><a href="#">지역 쿠폰</a></li>
                       <li><a href="http://localhost:9090/traveltip/conversation/conv_checkin.jsp">여행 회화</a></li>
                    </ul>

                </div>
            </div>

            <div class="comm"align="center" style="z-index: 999;">커뮤니티
                <div class="comm-sub">
                    <ul align="left">
                       <li><a href="http://localhost:9090/community/commrec.ndo">추천 게시판</a></li>
                       <li><a href="http://localhost:9090/community/comminfo.ndo">공지사항</a></li>
                       <li><a href="http://localhost:9090/community/commask.ndo">문의</a></li>
                    </ul>
                </div>
            </div>

            <div class="more"align="center" style="z-index: 999;">더보기
                <div class="more-sub">
                    <ul align="left">
                       <li> <a href="http://localhost:9090/more/serviceintro.jsp">서비스 소개</a></li>
                        <li><a href="http://localhost:9090/more/serviceterms.jsp">이용약관</a></li>
                    </ul>
                </div>
            </div>
            	
            <div class="search" style="z-index: 10;">
	  			<input type="text" placeholder="검색어 입력" class="search_bar" onclick="#">
	  			<img class="img_button" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
			</div>
        </div>
        <hr class="hr_bar2">
        <!-- <p class="hr_bar_p">일본여행 초심자에게는 니코니코니!</p> -->
    </header>
</body>
</html>