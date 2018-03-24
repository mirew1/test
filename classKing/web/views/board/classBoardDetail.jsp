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
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">

<link href="/classKing/css/classBoardDetail.css" rel="stylesheet"
	type="text/css">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<script src="/classKing/js/jquery.lbslider.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<script>
	function showPopupReport() {
		window.open("/classKing/views/report/reportPopup.jsp", "신고",
				"width=400, height=330, left=100, top=50");
	}
</script>
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
					<div class="title detail_title">
						<i class="fas fa-bullhorn"></i> 공지사항
						<div class="button_box">
							<button type="button" name="report" class="btn btn-success"
							onclick="showPopupReport();">신고</button>
							<button type="button" name="modified" class="btn btn-success">수정</button>
							<button type="button" name="delete" class="btn btn-danger">삭제</button>
						</div>
					</div>

				</div>

				<div id="notice_detail">
					<div id="notice_title">
						<div>클래스킹 업데이트에 따른 시스템 점검 안내</div>
						<div>2018-03-05</div>
					</div>
					<div id="notice_cont">네이버(대표 한성숙)는 지난 7일, 뷰스타 100명을 대상으로 ‘네이버
						뷰스타데이’를 개최하고 , 뷰스타들이 동영상 제작 역량을 강화해, 글로벌 진출에 속도를 낼 수 있도록 지원하는
						‘V뷰스타(Video Beaustar) 프로그램’을 발표했다. 네이버는 재능있는 뷰스타의 성장을 지원하기 위해, 지난
						1월 부터 ‘뷰스타 아카데미’를 통해 선배 뷰스타들이 전문 교육과 생생한 노하우를 전달하고 있으며, 다양한 비즈니스
						모델 연계 및 브랜드 콜라보레이션 기회도 제공하고 있다. 현재 네이버에는 1천명 이상의 뷰스타들이 활발하게 활동하고
						있다. 네이버는 동영상을 중심으로 활동하는 뷰스타인 ‘V뷰스타’ 육성을 위해, 뷰스타들이 ‘뷰스타 아카데미’를 통한
						동영상 컨셉 기획, 편집 기술 등을 배울 수 있도록 관련 교육을 강화한다. 또한 네이버 파트너스퀘어에서 뷰티 촬영에
						특화된 전문 스튜디오, 브랜드 신상품을 체험할 수 있는 샘플존, 메이크업 및 스타일링 촬영을 위한 파우더룸 등의 창작
						시설을 제공할 예정이다. 현재 파트너스퀘어 역삼에 해당 공간을 마련하기 위한 리뉴얼을 준비중이다.</div>
					<div style="text-align: center; margin-top: 10px">
						<button type="button" name="notice_list" class="btn btn-secondary">목록</button>
					</div>
				</div>
				<br>
				<form action="" method="post">
					<table class="table" id=boardtable>
						<tr>
							<td><img src="/classKing/images/user.png">김진우
								2018:03:19. 15:32.&nbsp;<a href="" id="reply">└댓글</a></td>
							<td id="tablet"><div style="margin-bottom: 60px;">
									<input type="button" value="신고 " class="btn pull-left"
										style="background: red; color: white; float: right;" onclick="showPopupReport();"/>
								</div></td>
						</tr>
						<tr>
							<td><textArea cols="80" rows="3" placeholder="댓글을 입력하세요"></textArea></td>
							<td><div style="margin-bottom: 60px;">
									<input type="button" value="등록하기 " id="registerbt"
										class="btn pull-left"
										style="background: #3b64af;; color: white; float: right;" />
								</div></td>
						</tr>

					</table>
				</form>
			</div>


</div>
		</div>


	</section>
	<%@ include file="../etc/footer.jsp"%>

</body>
</html>