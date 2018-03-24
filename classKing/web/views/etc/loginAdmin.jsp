<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login2</title>
</head>
<body>
	<div id="admin_box">
		<table class="user_table">
			<tr>
				<td colspan="2" id="user_img"><img src="images/user.png">
					<span class="username">김연아님, 반갑습니다.</span></td>
			</tr>
			<tr>
				<td><a href="/classKing/views/member/memberMypage.jsp"><img
						src="images/setting.png"></a>
				<p>설정</p></td>
				<td><a href="#"><img src="images/logout.png"></a>
				<p>로그아웃</p></td>
			</tr>
		</table>
		<hr class="hr_gray">
		<div class="admin_menu">
			<ul>
				<li><a href="/classKing/views/admin/adminClass.jsp"><i
						class="fas fa-angle-right"></i> 클래스 관리</a></li>
				<li><a href="/classKing/views/admin/adminMember.jsp"><i
						class="fas fa-angle-right"></i> 회원 관리</a></li>
			</ul>
		</div>

	</div>
</body>
</html>