<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/classKing/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/classKing/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="/classKing/css/component.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="/classKing/css/join.css" rel="stylesheet" type="text/css">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<title>Class King</title>
<script>
	(function(e, t, n) {
		var r = e.querySelectorAll("html")[0];
		r.className = r.className.replace(/(^|\s)no-js(\s|$)/, "$1js$2")
	})(document, window, 0);
</script>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#profile').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(function() {
		$("#dupliBt").click(function() {
			$.ajax({
				url : "/classKing/idcheck",
				data : {
					userid : $("#userId").val()
				},
				type : "get",
				success : function(data) {
					data *= 1;
					if (data == 1) {
						alert("이미 사용중인 아이디입니다.");
					} else {
						alert("사용 가능한 아이디입니다.");
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<%@ include file="../etc/header2.jsp"%>
	<section>
		<div id="wrap">
			<div class="join_form">
				<form id="mainform" action="/classKing/mjoin" method="post"
					enctype="multipart/form-data">
					<!--Join_form 구역 내에 mainform을 담았음  -->
					<div>
						<div class="page-header">
							<h2 align="center" style="color: #777">회원가입</h2>
						</div>
						<div>
							<div style="text-align: center;">

								<img src="" id="profile" style="text-align: center"></img><br>

								<input type="file" id="file-1"
									class="inputfile inputfile-1"
									data-multiple-caption="{count} files selected" name="upfile"
									onchange="readURL(this);" style="width: 1px; height: 1px;" /> <label
									for="file-1"><svg xmlns="http://www.w3.org/2000/svg"
										width="20" height="17" viewBox="0 0 20 17">
										<path
											d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" /></svg>
									<span>프로필 사진&hellip;</span></label>
							</div>
							<!--파일 찾기  -->
							<!-- 	</div> -->
							<div class="form-group">
								<label for="userId">ID</label><br>
								<input type="text" class="form-control" id="userId"
									name="userid" placeholder="ID를 입력해주세요.">
								<div class="form-group text-center">
									<input type="button" class="btn btn-info" id="dupliBt"
										name="dupliBt" value="중복검사" />
								</div>
								<p class="confirmId" name="confirmId">ex)사용 가능한 ID입니다.</p>
								<!--중복검사 후 ID 불일치 여부를 확인하여 P에 내용을 담을 수 있도록 함.P태그 내의 글은구역을 보여주기 위하여 임의의 텍스트를 기입하였음  -->
							</div>

							<div class="form-group">
								<!--비밀번호 입력란    -->
								<label for="InputPwd1">비밀번호를 입력하세요.</label> <input
									type="password" class="form-control" id="inputPwd1"
									name="userpwd" placeholder="비밀번호">
							</div>

							<div class="form-group">
								<!--비밀번호 다시 입력란  -->
								<label for="InputPwd2">비밀번호를 다시 입력하세요.</label> <input
									type="password" class="form-control" id="inputPwd2"
									name="inputPwd2" placeholder="비밀번호 확인">
								<p class="confirmPwd">ex)비밀번호가 일치하지 않습니다.</p>
								<!--ID 불일치의 P태그와 동일함  -->
							</div>

							<div class="form-group">
								<!--이름 기입란  -->
								<label for="userName">이름</label> <input type="text"
									class="form-control" id="userName" name="username"
									placeholder="이름을 입력해 주세요.">
							</div>
							<div class="form-group">
								<!--생년월일 기입란  -->
								<label for="userBirth">생년월일</label> <input type="text"
									class="form-control" id="userBirth" name="userbirth"
									placeholder="생년월일 앞 6자리(ex:891205)">
							</div>
							<div class="form-group">
								<!--e-Mail 기입란  -->
								<label for="userEmail">E-mail</label> <input type="email"
									class="form-control" id="userEmail" name="useremail"
									placeholder="ex)abcd@naver.com">
							</div>
							<div class="form-group">
								<!--닉네임 기입란  -->
								<label for="userNickname">닉네임</label> <input type="text"
									class="form-control" id="usernickname" name="usernickname"
									placeholder="닉네임">
							</div>
							<div class="form-group">
								<!--option을 주어 미리 준비한 질문을 선택할수있게하였음 임의로 1~10까지의 내용을 기입하였음  -->
								<label for="optionQ">ID 분실 시 질문 선택</label> <select
									class="form-control" id="optionQ" name="question">
									<option>==질문 선택==</option>
									<option>기억에 남는 영화는?</option>
									<option>초등학교 시절 가장 친한 친구는?</option>
									<option>키웠던 애완동물 이름은?</option>
									<option>기억에 남는 책은?</option>
									<option>어린 시절 가장 무서워했던 것은?</option>
									<option>어린 시절 내 별명은?</option>
								</select>
							</div>
							<div class="form-group">
								<!--위 질문에 대한 답변  -->
								<label for="userA">정답</label> <input type="text"
									class="form-control" id="userA" name="answer" placeholder="정답">
							</div>
							<div class="form-group text-center">
								<!--회원가입 버튼과 가입취소 버튼으로 한 div 구역내에 존재함  -->
								<input type="submit" class="btn btn-info" id="joinBt"
									name="joinBt" value="회원가입"> <input type="reset"
									class="btn btn-danger" id="cancelBt" name="cancelBt"
									value="가입취소">
							</div>
						</div>
					</div>
					<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
					<script
						src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
					<!-- Include all compiled plugins (below), or include individual files as needed -->
				</form>
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp"%>

</body>
</html>