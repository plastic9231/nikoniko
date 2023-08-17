<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/commaskcontent.css">
    <link rel="stylesheet" href="../css/footer.css">
</head>

<body>
<div style="z-index: 999"><%@ include file="../common/header.jsp"%></div>

	<main>
		<div align="center">
			
			<div class="reccontent-title" align="center">첫번째 문의입니다.</div>
			<table class="reccontent-table">
				<tr>
					<td>글번호</td>
					<td>001</td>
				</tr>
			
				<tr>
					<td>작성자</td>
					<td>홍길동</td>
				</tr>
				
				<tr>
					<td>작성일</td>
					<td>2023-08-15</td>
				</tr>
				
				<tr>
					<td>조회수</td>
					<td>33</td>
				</tr>
			
			</table>
			<hr class="reccontent-hr">
			
			<div class="reccontent-content" align="left">
			こんにちは！私はChatGPT、OpenAIによって訓練された大きな言語モデルです。
			<br>
			私は多くの情報や知識を持っており、さまざまなトピックについて質問に答えることができます。
			<br>
			文学から科学、技術から日常の質問まで、あらゆる質問に対応します。
			<br>
			私との会話を楽しんでください！
			<br>
			このようなテクノロジーは、人々が知識を得る方法を革命的に変えています。
			<br>	
			言語の壁を越え、情報を効果的に伝える手助けをするために、私はここにいます。あなたの質問や興味をお待ちしています！
			<br>
			私は数百万の文章と情報を学習してきましたので、多岐にわたるトピックに対応することができます。
			<br>
			日常のちょっとした疑問から、専門的な内容まで、お気軽に質問してください。
			<br>
			また、私は数学の問題を解いたり、プログラムのコードを解析したりする能力も持っています。
			<br>
			新しい技術や情報を学ぶことは、私たちの生活を豊かにする一つの方法です。
			<br>
			私はそのプロセスをサポートするためにここにいます。
			<br>
			一緒に学び、成長していきましょう！
			</div>
			
			<hr class="reccontent-hr">
			<div class="commrec-write-comment" align="left">
				<h3>댓글 작성</h3>
			
   				<form action="#" method="post">
   				<table class="commrec-write-comment-table">	 
   					<tr>
						<td>댓글 번호</td>
						<td>002</td>
					</tr>
   				
					<tr>
						<td>작성자</td>
						<td>홍길동</td>
					</tr>
				
					<tr>
						<td>작성시간</td>
						<td>2023-08-15</td>
					</tr>
				
					<tr>
						<td>댓글 내용</td>
						<td><p><textarea cols="35" rows="5" class="commrec-write-comment-textarea"></textarea></p></td>    					
					</tr>
					<tr>
						<td><p>비밀번호</p></td>
						<td><input type="password" class="commrec-password-input"></td>
						<td><p><input type="submit" value="댓글 등록" class="commrec-register-btn" align="right"></p></td>
					</tr>
				</table>
    			</form>
			</div>
			

			<div class="commreccomment" align="left">
				<h3>댓글 목록</h3>
				<table class="commreccomment-table">
				   	<tr>
						<td>댓글 번호</td>
						<td>001</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>홍길동</td>
					</tr>
				
					<tr>
						<td>작성시간</td>
						<td>2023-08-15</td>
					</tr>
				
					<tr>
						<td>댓글 내용</td>
						<td>とても明るくていい内容だと思います！</td>
						<td>
						<button class="commrec-comment-btn edit">댓글 수정</button>
                		<button class="commrec-comment-btn delete">댓글 삭제</button>
                		</td>
						
					</tr>
				</table>
			</div>
			
			<div align="center" style="margin-top: 20px;" class="commrec-post-btn">
    			<button class="commrec-post-btn list">글 목록으로</button>
    			<button class="commrec-post-btn edit">글 수정</button>
    			<button class="commrec-post-btn delete">글 삭제</button>
			</div>

		</div>
	</main>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
