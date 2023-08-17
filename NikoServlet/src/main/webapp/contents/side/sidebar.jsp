<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드바</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="sidebar.css">
</head>
<body>
	<div class="sidebar">
		<div class="sidebar_ul">
			<div id="spreadBtn02" class="btn01">
				<div>간토</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList01" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">명소</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">축제</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<div id="spreadBtn03" class="btn01">
				<div>주부</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList02" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">명소</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">축제</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<div id="spreadBtn04" class="btn01">
				<div>긴키</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList03" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
                    class="list_a">명소</a></li>
                <li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
                    class="list_a">축제</a></li>
                <li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
                    class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<div id="spreadBtn05" class="btn01">
				<div>주고쿠</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList04" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
                    class="list_a">명소</a></li>
                <li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
                    class="list_a">축제</a></li>
                <li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
                    class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<div id="spreadBtn06" class="btn01">
				<div>훗카이도</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList05" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">명소</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">축제</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<div id="spreadBtn07" class="btn01">
				<div>도호쿠</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList06" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">명소</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">축제</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul">
			<div id="spreadBtn08" class="btn01">
				<div>시고쿠</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList07" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">명소</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">축제</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">음식</a></li>
			</ul>
		</div>
		<div class="sidebar_ul_last">
			<div id="spreadBtn09" class="btn01">
				<div>오키나와</div>
				<div class="material-symbols-outlined">expand_more</div>
			</div>
			<ul id="hiddenList08" class="ul_list">
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">명소</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">축제</a></li>
				<li class="list_li">⦁&nbsp;&nbsp;&nbsp;<a href="#"
					class="list_a">음식</a></li>
			</ul>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#spreadBtn02').click(function() {
				if ($("#hiddenList01").is(":visible")) {
					$("#spreadBtn02").toggleClass("");
					$("#hiddenList01").slideUp();
				} else {
					$("#spreadBtn02").toggleClass("");
					$("#hiddenList01").slideDown();
				}
			});
		});
		$(document).ready(function() {
			$('#spreadBtn03').click(function() {
				if ($("#hiddenList02").is(":visible")) {
					$("#spreadBtn03").toggleClass("");
					$("#hiddenList02").slideUp();
				} else {
					$("#spreadBtn03").toggleClass("");
					$("#hiddenList02").slideDown();
				}
			});
		});
		$(document).ready(function() {
			$('#spreadBtn04').click(function() {
				if ($("#hiddenList03").is(":visible")) {
					$("#spreadBtn04").toggleClass("");
					$("#hiddenList03").slideUp();
				} else {
					$("#spreadBtn04").toggleClass("");
					$("#hiddenList03").slideDown();
				}
			});
		});
		$(document).ready(function() {
			$('#spreadBtn05').click(function() {
				if ($("#hiddenList04").is(":visible")) {
					$("#spreadBtn05").toggleClass("");
					$("#hiddenList04").slideUp();
				} else {
					$("#spreadBtn05").toggleClass("");
					$("#hiddenList04").slideDown();
				}
			});
		});
		$(document).ready(function() {
            $('#spreadBtn06').click(function() {
                if ($("#hiddenList05").is(":visible")) {
                    $("#spreadBtn06").toggleClass("");
                    $("#hiddenList05").slideUp();
                } else {
                    $("#spreadBtn06").toggleClass("");
                    $("#hiddenList05").slideDown();
                }
            });
        });
		$(document).ready(function() {
            $('#spreadBtn07').click(function() {
                if ($("#hiddenList06").is(":visible")) {
                    $("#spreadBtn07").toggleClass("");
                    $("#hiddenList06").slideUp();
                } else {
                    $("#spreadBtn07").toggleClass("");
                    $("#hiddenList06").slideDown();
                }
            });
        });
		$(document).ready(function() {
            $('#spreadBtn08').click(function() {
                if ($("#hiddenList07").is(":visible")) {
                    $("#spreadBtn08").toggleClass("");
                    $("#hiddenList07").slideUp();
                } else {
                    $("#spreadBtn08").toggleClass("");
                    $("#hiddenList07").slideDown();
                }
            });
        });
		$(document).ready(function() {
            $('#spreadBtn09').click(function() {
                if ($("#hiddenList08").is(":visible")) {
                    $("#spreadBtn09").toggleClass("");
                    $("#hiddenList08").slideUp();
                } else {
                    $("#spreadBtn09").toggleClass("");
                    $("#hiddenList08").slideDown();
                }
            });
        });
	</script>
</body>
</html>