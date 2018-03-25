<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ page import="member.model.vo.Member" %>
	<%
		Member loginUser1 = (Member)session.getAttribute("loginUser");
		String url = request.getRequestURL().toString();
		System.out.println(url);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/classKing/css/adminLogin.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="admin_box">
		<table class="user_table">
			<tr>
				<td colspan="2" id="user_img"><img src="/classKing/images/user.png">
					<span class="username"><%= loginUser1.getMemberId() %>님, 반갑습니다.</span></td>
			</tr>
			<tr>
				<td><a href="/classKing/views/member/memberMypage.jsp"><img
						src="/classKing/images/setting.png"></a>
				<p>설정</p></td>
				<td><a href="/classKing/mlogout?url=<%= url %>"><img src="/classKing/images/logout.png"></a>
				<p>로그아웃</p></td>
			</tr>
		</table>
	</div>
</body>
</html>