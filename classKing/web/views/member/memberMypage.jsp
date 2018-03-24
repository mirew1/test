<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="/classKing/js/jquery-3.3.1.min.js"></script>

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/mypage.css" rel="stylesheet" type="text/css">

<title>Class King</title>
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

				<div id="area_box">
				 	<div>
				 		<div class="title">설정</div>	
				 	</div>

					<div id="mypage" style="clear: left;">     <!--tab 목록 -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								href="#class" role="tab" data-toggle="tab">My Class</a></li>
							<li class="nav-item"><a class="nav-link" href="#info"
								role="tab" data-toggle="tab">My Info</a></li>
							<li class="nav-item"><a class="nav-link" href="#post"
								role="tab" data-toggle="tab">My Post</a></li>
							<li class="nav-item"><a class="nav-link" href="#comment"
								role="tab" data-toggle="tab">My Comment</a></li>
							<li class="nav-item"><a class="nav-link" href="#qanda"
								role="tab" data-toggle="tab">My Q&A</a></li>
							<li class="nav-item"><a class="nav-link" href="#report"
								role="tab" data-toggle="tab">My Report</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content" style="overflow: hidden;">

							<div role="tabpanel" class="tab-pane active" id="class"> <!-- my class tab -->

								<table class="table" id="classtable">
									<tr> 
										
										<th>No.</th>
										<th>클래스 명</th>
										<th>클래스 개설일</th>
										<th>멤버수</th>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">난 좀 짱인 듯</a></td>
										<td>그 런 듯</td>
										<td>3</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">난 좀 짱인 듯</a></td>
										<td>그 런 듯</td>
										<td>5</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">난 좀 짱인 듯</a></td>
										<td>그 런 듯</td>
										<td>3</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">난 좀 짱인 듯</a></td>
										<td>그 런 듯</td>
										<td>21</td>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">난 좀 짱인 듯</a></td>
										<td>그 런 듯</td>
										<td>12</td>
									</tr>

								</table>
								<div id="notice_page1" class="pageList">
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

							</div> <!--ㅡmt class tab 끝  -->

							<div role="tabpanel" class="tab-pane" id="info"> <!--info tab  -->

								<form id="mainform">
									<!-- 사진을 추가하는 영역 -->
									<div class="image-group">
										<img src="" id="profile">				
										<div align="center"><input type="file"
											value="파일 선택" id="find" name="find"></div>
									</div>
									<!-- 사진을 추가하는 영역 -->

									<br>
									<!--이름/주민번호 부분을 같이 묶어놓은 div-->
									<div class="nameAndBirthday">
										<div class="form-group">
											<label for="username">이름</label> <input type="text"
												class="form-control" id="userName" name="userName"
												placeholder="이름을 입력해 주세요">
										</div>
										<div class="form-group">
											<label for="username">주민번호 앞자리 6개</label> <input type="text"
												class="form-control" id="userBirth" name="userBirth"
												placeholder="주민번호 앞자리 6자리를 적어주세요">
										</div>
									</div>
									<!--이름/주민번호 부분을 같이 묶어놓은 div끝-->

									<!-- 이메일 주소 -->
									<div class="form-group">
										<label for="InputEmail">이메일 주소</label> <input type="email"
											class="form-control" id="userEmail" name="userEmail"
											placeholder="이메일 주소">
									</div>
									<!-- 이메일 주소 -->


									<!-- 비밀번호 수정 부분 -->
									<!-- 비밀번호 1-->
									<div class="form-group">
										<label for="InputPassword1">비밀번호</label>
										<!--passwordInput-->
										<input type="password" class="form-control" id="inputPwd1"
											name="inputPwd1" placeholder="비밀번호">
									</div>
									<!-- 비밀번호 1-->

									<!-- 비밀번호 재확인-->
									<div class="form-group">
										<label for="InputPassword2">비밀번호 확인</label> <input
											type="password" class="form-control" id="inputPwd2"
											name="inputPwd2" placeholder="비밀번호 확인">
										<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
									</div>
									<!-- 비밀번호 재확인-->

									<!-- 비밀번호 찾기 질문 저장하는 부분 -->
									<div class="form-group">
										<label for="InputPassword2">비밀번호 분실 시 질문</label> <br> <select
											id="optionQ" name="optionQ" class="form-control">
											<!--차후에 옵션을 추가할 것!!-->
											<option>선택해주세요</option>
											<option>가장 기억에 남는 장소는?</option>
										</select>
										<!-- 비밀번호 찾기 질문 저장하는 부분 -->

										<!-- 비밀번호 찾기 답적는 부분-->
										<input type="text" class="form-control" id="userA" name="userA" placeholder="질문에 대한 답" style="margin-top:10px;">
									</div>

									<div class="form-group text-center">
										<button type="submit" class="btn btn-info">저장</button>
										<button type="submit" class="btn btn-danger">취소</button>
									</div>
									<!-- 비밀번호 찾기 답적는 부분-->
								</form>
							</div> <!--ㅡmyinfo tab 끝  -->
					
					<div role="tabpanel" class="tab-pane" id="post"> <!--my post tab 시작   -->  
                                 
                          <table class="table" id="post_table">
                             <tr>
                                <th>No.</th>
                                <th>클래스명</th>
                                <th>제목</th>
                                <th>작성일자</th>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                             <tr>
                                <td>1</td>
                                <td>나의조</td>
                                <td><a href="#">오늘의 일정</a></td>
                                <td>2018.03.14</td>
                             </tr>
                       </table>
                       <div id="notice_page2" class="pageList">
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
                    </div><!--my post tab 끝  -->
                 
                       <div role="tabpanel" class="tab-pane" id="comment"> <!--my comment tab 시작  -->
                              <table class="table" id="comment_table">
                                 <tr>
                                    <th>No.</th>
                                    <th>클래스명</th>
                                    <th>내용</th>
                                    <th>작성일자</th>
                                 </tr>

                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 <tr>
                                    <td>글번호</td>
                                    <td>클래스명</td>
                                    <td><a href="">내용</a></td>
                                    <td>작성일자</td>
                                 </tr>
                                 

                              </table>

                           <div id="notice_page3" class="pageList">
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
                         <!-- my comment tab 끝 -->
							<div role="tabpanel" class="tab-pane" id="qanda"> <!--Q & A TAB 시작 -->

								<table  class="table" id="qnatable"> <!--qanda 테이블의 id 값을 주어 열의 크기를 조절함  -->

									<tr>
										<th>No.</th>
										<th>제목</th>
										<th>날짜</th>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">클래스는 어떻게 만드나요</td>
										<td>2018-03-10</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href="">불량 이용자 신고 문의</td>
										<td>2018-03-05</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href="">비밀번호 변경 문의</td>
										<td>2017-03-01</td>
									</tr>
									<tr>
										<td>4</td>
										<td><a href="">프로필 사진 변경 문의</td>
										<td>2018-03-01</td>
									</tr>
									<tr>
										<td>5</td>
										<td><a href="">클래스 생성에 제한이 있나요?</td>
										<td>2018-01-02</td>
									</tr>
								</table>
								<div id="notice_page4" class="pageList">
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
							</div><!-- QnA TAB 끝 -->
							<div role="tabpanel" class="tab-pane" id="report"><!--my report tab 시작 -->
								<table class="table" id="reporttable"> <!--my report tab의 열크기를 id값으로 지정  -->

									<tr>
										<th>No.</th>
										<th>제목</th>
										<th>날짜</th>
									</tr>
									<tr>
										<td>1</td>
										<td><a href="">불량이용자 신고 문의</a></td>
										<td>2018-03-11</td>
									</tr>
									<tr>
										<td>2</td>
										<td><a href="">불량 이용자 신고</a> </td>
										<td>2018-03-05</td>
									</tr>
									<tr>
										<td>3</td>
										<td><a href="">불량 이용자 신고 문의</a></td>
										<td>2017-02-25</td>
									</tr>
									<tr>
										<td>4</td>
										<td><a href="">불량 이용자 신고합니다</a></td>
										<td>2018-02-08</td>
									</tr>
									<tr>
										<td>5</td>
										<td><a href="">불량 이용자 신고</a></td>
										<td>2018-01-02</td>
									</tr>
								</table>
								
								<div id="notice_page5" class="pageList">
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
							</div> <!--my report tab 끝  -->
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp" %>

</body>
</html>