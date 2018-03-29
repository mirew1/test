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

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/classKing/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/classKing/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="/classKing/css/component.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.lbslider.js"></script>
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classMake.css" rel="stylesheet"
	type="text/css">

<title>Class King</title>
<script src="/classKing/js/jquery-3.3.1.min.js"></script>

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
</script>
</head>
<body>
	<%@ include file="../etc/header.jsp"%>
	<section>
		<div id="wrap">
			<div id="right_box">
				<!-- 로그인박스 시작 -->
				<%
					if (loginUser != null && loginUser.getMemberId().equals("admin")) {
				%>
				<%@ include file="../etc/loginAdmin.jsp"%>
				<%
					} else if (loginUser != null) {
				%>
				<%@ include file="../etc/loginMember.jsp"%>
				<%
					} else {
				%>
				<%@ include file="../etc/login.jsp"%>
				<%
					}
				%>
				<!-- 로그인박스 끝 -->
				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">
				<div id="main_box">
					<div class="board_title">
						<div class="title">
							<i class="fas fa-bullhorn"></i> 클래스 만들기
						</div>
					</div>
					<form action="/classKing/cmake" method="post"
						encType="multipart/form-data">
						<div class="container">
							<table class="table table-bordered">
								<tbody>

									<tr>
										<th><label for="InputCategory">Category</label></th>
										<td><div class="center">
												<div class='checks'>
													<input name='category' type='radio' id='sports' value="01"
														checked='checked'> <label class='radio-label'>운동</label>
													<input name='category' type='radio' id='study' value="02">
													<label class='radio-label'>스터디</label> <input
														name='category' type='radio' id='company' value="03">
													<label class='radio-label'> 회사</label> <input
														name='category' type='radio' id='travel' value="04">
													<label class='radio-label'> 여행</label> <input
														name='category' type='radio' id='animal' value="05">
													<label class='radio-label'> 반려동물</label> <input
														name='category' type='radio' id='hobby' value="06">
													<label class='radio-label'> 취미</label>
												</div>
											</div></td>
									</tr>
									<tr>
										<th><label for="InputClassName">Class Name</label></th>
										<td><input type="text" class="form-control"
											id="InputClassName" name="className"
											placeholder="클래스명을 입력해주세요."></td>
									</tr>
									<tr>
										<th><label for="InputClassNotice">Class Notice</label></th>
										<td><textarea cols="10" placeholder="클래스 설명을 입력해주세요."
												id="InputClassNotice" name="classNotice"
												class="form-control"></textarea></td>
									</tr>

									<tr>
										<th><label for="InputImage">Image</label></th>
										<td>
											<!-- 이미지 슬라이드 -->
											<div style="text-align: center;">

												<img src="" id="profile" style="text-align: center"></img><br>

												<input type="file" id="file-1" class="inputfile inputfile-1"
													data-multiple-caption="{count} files selected"
													name="upfile" onchange="readURL(this);"
													style="width: 1px; height: 1px;" /> <label for="file-1"><svg
														xmlns="http://www.w3.org/2000/svg" width="20" height="17"
														viewBox="0 0 20 17">
										<path
															d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9
															zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2
															.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2
															.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.
															2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z" /></svg>
													<span>프로필 사진&hellip;</span></label>
											</div>
										</td>
									</tr>
									<tr>
										<th><label>공개여부</label></th>
										<td>
											<!-- 비공개/공개 체크박스 -->
											<div class="checks" style="float: left;">
												<input type="radio" id="ex_rd" name="ex_rds" value="Y">
												<label for="ex_rd">공개</label>
											</div>
											<div class="checks second" style="float: left;">
												<input type="radio" id="ex_rd2" name="ex_rds" value="N">
												<label for="ex_rd2">비공개</label>
											</div> <!--    <p>
                                          <input type="radio" id="test1" name="radio-group" checked>
                                          <label for="test1">공개</label>
                                       </p>
                                       <p>
                                          <input type="radio" id="test2" name="radio-group">
                                          <label for="test2">비공개</label>
                                       </p> --> <!-- 비공개/공개 체크박스 끝-->
										</td>
									</tr>
<input type="hidden" value="<%=loginUser.getMemberId() %>" name="memberid">
								</tbody>
							</table>
							<div class="button">
								<button type="submit" class="btn btn-primary">만들기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp"%>
</body>
</html>