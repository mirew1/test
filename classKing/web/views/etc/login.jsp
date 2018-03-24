<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="/classKing/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="login_box">
		<form action="/classKing/mlogin">
			<input type="text" name="userid" id="userid" placeholder="아이디"
				class="form-control"> <input type="password" name="userpwd"
				id="userpwd" placeholder="비밀번호" class="form-control">
		
		<div class="join">
			<label><a href="/classKing/views/member/memberJoin.jsp">회원가입</a></label>
			<div>
				<label><a href="/classKing/views/member/memberIdFind.jsp">아이디
						/ </a></label><label><a
					href="/classKing/views/member/memberPwdFind.jsp">비밀번호</a></label>
			</div>
		</div>
		<input type="submit" name="login_btn" id="login_btn"
			class="btn btn-primary" value="로그인">
		</form>
	</div>
</body>
</html>