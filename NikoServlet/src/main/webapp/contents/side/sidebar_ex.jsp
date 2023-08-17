<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="sidebar.css">
</head>
<body>
	<div class="sidenav">
		<button class="dropdown-btn" onclick="changeImage()">
			간토 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			주부 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			긴키 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			주고쿠 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			훗카이도 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			도호쿠 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			시고쿠 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>

		<button class="dropdown-btn" onclick="changeImage()">
			오키나와 
		</button>
		<div class="dropdown-container">
			<a href="#">명소</a><a href="#">축제</a><a href="#">음식</a>
		</div>
	</div>
	<script>
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
</body>
</html>