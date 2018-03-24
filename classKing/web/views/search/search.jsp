<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="/classKing/css/allSearch.css" rel="stylesheet" type="text/css">


<script src="js/jquery-3.3.1.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<title>Class King</title>
</head>
<body>

	<%@ include file="../etc/header.jsp"%>

	<section>
		<div id="wrap">



			<div id="right_box">
				<!-- 로그인박스 시작 -->
				<%@ include file="../etc/login.jsp"%>
				<!-- 로그인박스 끝 -->

				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">
				<div class="board_title">
					<div class="title">
						<i class="fas fa-bars"></i>&nbsp; 통합검색 결과
					</div>
				</div>
				<div id="class_list" style="clear: left;">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active" href="#study"
							role="tab" data-toggle="tab">클래스</a></li>
						<li class="nav-item"><a class="nav-link" href="#exercise"
							role="tab" data-toggle="tab">게시글</a></li>
						<li class="nav-item"><a class="nav-link" href="#company"
							role="tab" data-toggle="tab">댓글</a></li>
						<li class="nav-item"><a class="nav-link" href="#travel"
							role="tab" data-toggle="tab">기타1</a></li>
						<li class="nav-item"><a class="nav-link" href="#hobby"
							role="tab" data-toggle="tab">기타2</a></li>
						<li class="nav-item"><a class="nav-link" href="#pet"
							role="tab" data-toggle="tab">기타3</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content" style="overflow: hidden;">
						<div role="tabpanel" class="tab-pane active" id="study">
							<br>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table class="in_table">
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사랑</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<hr>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table class="in_table">
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<hr>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table class="in_table">
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<hr>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table class="in_table">
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<hr>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table class="in_table">
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<hr>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table>
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<hr>
							<table class="table" id="cl_table">
								<tr>
									<td id="img_box"><i class="far fa-frown fa-3x"></i></td>
									<td>
										<table>
											<tr>
												<td>클래스설명:이명박(77) 전 대통령은 14일 A4 용지 한 장에 인쇄된 입장문을 들고
													서울중앙지검 포토라인에 섰다. 그는 “참담한 심정”이라며 “심려를 끼쳐 죄송하다”고 말했다.</td>
											</tr>
											<tr>
												<td>클래스이름: 꼬북칩사</td>
											</tr>
											<tr>
												<td>회원수: 100</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

							<br>
							<br>
						</div>
						<div role="tabpanel" class="tab-pane" id="exercise">운동</div>
						<div role="tabpanel" class="tab-pane" id="company">회사</div>
						<div role="tabpanel" class="tab-pane" id="travel">여행</div>
						<div role="tabpanel" class="tab-pane" id="hobby">취미</div>
						<div role="tabpanel" class="tab-pane" id="pet">반려동물</div>
						<div role="tabpanel" class="tab-pane" id="etc">기타</div>
					</div>
				</div>


				<div id="notice_page">
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
	</section>
	<%@ include file="../etc/footer.jsp"%>

</body>
</html>