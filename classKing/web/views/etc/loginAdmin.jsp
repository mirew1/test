<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="member.model.vo.Member" %>
	<%
		Member loginUser2 = (Member)session.getAttribute("loginUser");
		String url = request.getRequestURL().toString();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login2</title>
<link href="/classKing/css/adminLogin.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="admin_box">
		<table class="user_table">
			<tr>
				<td colspan="2" id="user_img"><img src="/classKing/images/user.png">
					<span class="username"><%= loginUser2.getMemberId() %>님, 반갑습니다.</span></td>
			</tr>
			<tr>
				<td><a href="/classKing/views/member/memberMypage.jsp"><img
						src="/classKing/images/setting.png"></a>
				<p>설정</p></td>
				<td><a href="/classKing/mlogout?url=<%= url %>"><img src="/classKing/images/logout.png"></a>
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