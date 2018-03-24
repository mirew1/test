<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!---------------- 원래 있던 css파일 -------------------------------------->
<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- 이름만 달리하고 내용물은 똑같은 CSS파일로 연결하였습니다. -->
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/memberPwdFind.css" rel="stylesheet" type="text/css">
<!---------------- 원래 있던 css파일 -------------------------------------->

<!-- 추가되는 CSS -->

<!-- font awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css" media="screen"
	title="no title" charset="utf-8">

<title>Class King</title>
</head>
<body>
	<%@ include file="../etc/header2.jsp" %>

	<section>
		<div id="wrap">
			<div class="join_form">
				<!-- ************************************************************ -->
				<!-- ************************************************************ -->
				<!-- ************************************************************ -->
				<form id="mainform">
					<div class="pwdAll">
						<div class="page-header">
							<h2 style="text-align: center; color: #777">비밀번호 찾기</h2>
						</div>
						<br>
						<br>

						<div class="form-group">
							<label for="username">아이디를 입력해주세요</label> <input type="text"
								class="form-control" id="userName" name="userName"
								placeholder="아이디를 입력해 주세요">
						</div>
						<br>

						<div class="form-group">
							<label for="InputPassword2">비밀번호 분실 시 질문</label> <br>
							<!--차후에 옵션을 추가할 것!!-->
							<select id="optionQ" name="optionQ" class="form-control">
								<option>선택해주세요</option>
								<option>첫번째 선택</option>
								<option>두번째 선택</option>
								<option>세번쨰 선택</option>
								<option>네번째 선택</option>
								<option>다섯번쨰 선택</option>
								<option>여섯번째 선택</option>
							</select> <br> <input type="text" class="form-control" id="userA"
								name="userA" placeholder="질문에 대한 답">
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-info">확인</button>
							<button type="submit" class="btn btn-danger">취소</button>
						</div>
					</div>
				</form>
				<!-- ************************************************************ -->
				<!-- ************************************************************ -->
				<!-- ************************************************************ -->
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp" %>

</body>
</html>