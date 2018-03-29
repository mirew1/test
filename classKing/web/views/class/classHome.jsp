<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.vo.Member"%>
<% Member loginUser = (Member) session.getAttribute("loginUser"); %>
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
<link href="/classKing/css/classHome.css" rel="stylesheet" type="text/css">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>

<script>
function showClassJoin() {
	window.open("/classKing/views/class/classJoin.html", "클래스 가입신청", "width=350, height=330, left=100, top=50");
	window.close();
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
				<%@ include file="../etc/loginMember.jsp"%>
				<% } else { %>
				<%@ include file="../etc/login.jsp"%>
				<% } %>
				<!-- 로그인박스 끝 -->
				<input type="button" name="login_btn" id="login_btn" onclick="showClassJoin()"
			class="btn btn-primary" value="가입신청" style="width:260px">
				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">
				<!--메뉴 및 최신글,최신 이미지 테이블을 담고 있음  -->
				<%@ include file="../etc/menuBar.jsp"%>
				<div id="main_box">
					<div id="class_name">
						클래스 이름
					</div>
					
					<div id="main_event">
						최근공지사항이나, 해당일자의 일정 띄워주기
					</div>
					<div class="more_btn">						
						<a href="">more > </a>
					</div>		
					<ul id="classHome_l">						
					 	<li class="recent_board">
					 		<div class="recent_title"><a href="">지금 만나러 갑니다.</a></div>
					 		<div class="recent_cont">
					 			비가 오는 날 다시 돌아오겠다는 믿기 힘든 약속을 남기고 세상을 떠난 ‘수아’. 
					 			그로부터 1년 뒤 장마가 시작되는 어느 여름 날, 
					 			세상을 떠나기 전과 다름없는 모습의 ‘수아’가 나타난다. 
					 		</div>
					 		<div>
					 			<div class="recent_writer">강백호</div>
					 			<div class="recent_date">2018-03-26</div>
					 		</div>
					 		
					 	</li>					
					 	<li class="recent_board">
					 		<div class="recent_title"><a href="">지금 만나러 갑니다.</a></div>
					 		<div class="recent_cont">
					 			비가 오는 날 다시 돌아오겠다는 믿기 힘든 약속을 남기고 세상을 떠난 ‘수아’. 
					 			그로부터 1년 뒤 장마가 시작되는 어느 여름 날, 
					 		</div>
					 		<div>
					 			<div class="recent_writer">강백호</div>
					 			<div class="recent_date">2018-03-26</div>
					 		</div>
					 		
					 	</li>
					 	<li class="recent_board" style="margin:0px">
					 		<div class="recent_title"><a href="">레디 플레이어 원</a></div>
					 		<div class="recent_cont">
					 		2045년, 암울한 현실과 달리 가상현실 오아시스(OASIS)에서는 
							 누구든 원하는 캐릭터로 어디든지 갈 수 있고, 뭐든지 할 수 있고 상상하는 모든 게 가능하다. 
							 웨이드 와츠(타이 쉐리던) 역시 유일한 낙은 대부분의 사람들이 하루를 보내는 오아시스에 접속하는 것이다. 
							 어느 날 오아시스의 창시자인 괴짜 천재 제임스 할리데이(마크 라이런스)는 자신이 가상현실 속에 숨겨둔 
							 3개의 미션에서 우승하는 사람에게 오아시스의 소유권과 막대한 유산을 상속한다는 유언을 남기고, 
					 		</div>
					 		<div>
					 			<div class="recent_writer">강백호</div>
					 			<div class="recent_date">2018-03-26</div>
					 		</div>					 		
					 	</li>					 				
					</ul>
					
					<div class="more_btn">						
						<a href="">more > </a>
					</div>	
					<ul id="classHome_r">						
					 	<li class="recent_img">
					 		<div class="thumnail" style="background-image:url('/classKing/images/032.jpg')"></div>
					 		<div class="img_title"><a href="">레디 플레이어 원</a></div>					 		
					 		<div class="img_cont">
					 		2045년, 암울한 현실과 달리 가상현실 오아시스(OASIS)에서는 
							 누구든 원하는 캐릭터로 어디든지 갈 수 있고, 뭐든지 할 수 있고 상상하는 모든 게 가능하다. 
					 		</div>
					 		<div>					 		
					 			<div class="recent_date">2018-03-26</div>
					 		</div>					 		
					 	</li>						
					 	<li class="recent_img">
					 		<div class="thumnail" style="background-image:url('/classKing/images/033.jpg')"></div>
					 		<div class="img_title"><a href="">레디 플레이어 원</a></div>					 		
					 		<div class="img_cont">
					 		2045년, 암울한 현실과 달리 가상현실
					 		</div>
					 		<div>
					 			<div class="recent_date">2018-03-26</div>
					 		</div>					 		
					 	</li>						
					 	<li class="recent_img">
					 		<div class="thumnail" style="background-image:url('/classKing/images/031.jpg')"></div>
					 		<div class="img_title"><a href="">지만갑</a></div>					 		
					 		<div class="img_cont">
					 			비가 오는 날 다시 돌아오겠다는 믿기 힘든 약속을 남기고 세상을 떠난 ‘수아’. 
					 			그로부터 1년 뒤 장마가 시작되는 어느 여름 날, 
					 		</div>
					 		<div>
					 			<div class="recent_date">2018-03-26</div>
					 		</div>					 		
					 	</li>
					
					</ul>

					
					<!-- wrap끝 -->
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp"%>
</body>
</html>