<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classBoardMake.css" rel="stylesheet" type="text/css">

<script src="/classKing/js/jquery-3.3.1.min.js"></script>

<title>classKing</title>

</head>
<body>

	<%@ include file="../etc/header.jsp" %>


	<section>
		<div id="wrap">

			<div id="right_box">
				<!-- 로그인박스 시작 -->
				<%@ include file="../etc/login.jsp" %>
				<!-- 로그인박스 끝 -->

				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">

				<!-- menu -->
				<%@ include file="../etc/menuBar.jsp" %>
					<!-- menu -->

				<!-- 게시판 시작 -->
		<div id="main_box">
					<div id="container">
						<table class="table table-bordered">
							<thead>
							<!-- <caption>
								<h2 style="text-align: center">글쓰기</h2>
							</caption> -->
							<div class="board_title">
						<div class="title">
							<i class="fas fa-bullhorn"></i> 글쓰기
						</div>
					</div>
							<tbody>
								<form action="write_ok.jsp" method="post"
									encType="multiplart/form-data">

									<tr>
										<th style="border: 0; color:#777">주제</th>
										<td style="border: 0;"><select name="menuid" class="form-control"
											class="step01" style="width: 156px;"
											onchange="BoardCategoryMgr.onChangeBoardCategory(); return false;"
											id="boardCategory">

												<option value="1" selected="">말머리선택</option>
												<option wf="" wfid="" value="2">운동</option>
												<option wf="" wfid="" value="3">반려동물</option>
												<option wf="" wfid="" value="4">회사</option>
												<option wf="" wfid="" value="4">취미</option>

										</select>
										</td>
									</tr>
									<tr>
										<th style="border: 0; color:#777">설정</th>
										<td style="border: 0; "><select name="menuid" class="form-control"
											class="step01" style="padding-left: 15px; width: 156px; float:left"
											onchange="BoardCategoryMgr.onChangeBoardCategory(); return false;"
											id="boardCategory">

												<option value="1" selected="">글꼴</option>
												<option fs="" fsid="" value="2">돋움체</option>
												<option fs="" sfid="" value="3">굴림체</option>
												<option fs="" sfid="" value="4">궁서체</option>

										</select> <span><img src="images/image_icon.png"
											style="width: 15px; height: 15px;"><a href="#"> 사진
												&nbsp; &nbsp;</a></span>
										</td>
									</tr>
									<tr>
										<th style="border: 0;color:#777;">제목</th>
										<td style="border: 0;"><input type="text"
											placeholder="제목을 입력하세요. " name="subject" class="form-control" /></td>
									</tr>
									<tr>
										<th style="border: 0;color:#777">내용</th>
										<td style="border: 0;"><textarea id="contents" cols="50"
												placeholder="내용을 입력하세요. " name="content"
												class="form-control"></textarea></td>
									</tr>
									<tr>
										<th style="border: 0;color:#777">첨부파일</th>
										<td style="border: 0;"><input type="text"
											placeholder="파일을 선택하세요. " name="filename"
											class="form-control" /></td>
									</tr>

									<tr>
										<td colspan="2" style="border: 0;">
											<input
											type="button" value="글목록" class="btn pull-left" style="background:#3b64af;color:white;" />
											
											<input type="button"
											value="등록" class="btn pull-right" style="margin-right:5px; background:red; color:white;"/>
											<input
											type="button" value="지우기" class="btn pull-right"
											 style="margin-right:5px; background:#3b64af;color:white;"/>
											
											 <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
										</td>
									</tr>
								</form>
							</tbody>

						</table>
					</div>
					<!-- 게시판 끝 -->

				</div>
				
				</div>



		
	</section>


	<%@ include file="../etc/footer.jsp" %>

</body>
</html>