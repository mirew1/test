<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="member.model.vo.Member"%>
<%
	Member loginUser = (Member) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classBoard.css" rel="stylesheet"
	type="text/css">

<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<script src="/classKing/js/jquery.lbslider.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

<title>Class King</title>
</head>
<body>

	<%@ include file="../etc/header.jsp"%>

	<section>
		<div id="wrap">
			<div id="right_box">
				<!-- 로그인박스 시작 -->
				<% if (loginUser != null && loginUser.getMemberId().equals("admin")) { %>
					<%@ include file="../etc/loginAdmin.jsp"%>
				<% } else if (loginUser != null) { %>
					<%@ include file="../etc/loginMember.jsp" %>
				<% } else { %>
					<%@ include file="../etc/login.jsp"%>
				<% } %>
				<!-- 로그인박스 끝 -->

				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">
				<%@ include file="../etc/menuBar.jsp"%>
				<div id="main_box">
					<div class="board_title">
						<div class="title">
							<i class="fas fa-bullhorn"></i> 게시글
						</div>
						<button type="button" class="btn btn-secondary"
							style="float: right" onclick="location.href='/classKing/views/board/classBoardMake.jsp'">
							<i class="far fa-file-alt"></i> 새글쓰기
						</button>
					</div>

					<div id="notice_table2" class="board_table2">
						<table class="table">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
							<tr>
								<td>10</td>
								<td><a href="classBoardDetail.jsp">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>
							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
							<tr>
								<td>10</td>
								<td><a href="#">게시글</a></td>
								<td>김민선</td>
								<td>2018-02-05</td>
								<td>32</td>

							</tr>
						</table>

					</div>
					<div id="board_searchbox">
						<select class="form-control notice_select">
							<option>제목</option>
							<option>내용</option>
						</select> <input type="text" name="notice_search"
							class="notice_search form-control"> <input type="submit"
							name="search_submit" class="btn btn-dark" value="검색">
					</div>
					<div id="board_page">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp"%>
</body>
</html>