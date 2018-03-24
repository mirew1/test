<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/board.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/admin.css" rel="stylesheet" type="text/css">


<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
			<div id="alarm_box">
			알람!	
			</div>				
		    <!-- 알람박스 끝 -->
		</div>	
	 	<div id="left_box">
		 	<div class="board_title">
		 		<div class="title"><i class="fas fa-bars"></i> 클래스 리스트</div>	
		 	</div>
		 	<div id="class_list" style="clear:left;">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active" href="#study" role="tab" data-toggle="tab">스터디</a></li>
					<li class="nav-item"><a class="nav-link" href="#exercise" role="tab" data-toggle="tab">운동</a></li>
					<li class="nav-item"><a class="nav-link" href="#company" role="tab" data-toggle="tab">회사</a></li>
					<li class="nav-item"><a class="nav-link" href="#travel" role="tab" data-toggle="tab">여행</a></li>
					<li class="nav-item"><a class="nav-link" href="#hobby" role="tab" data-toggle="tab">취미</a></li>
					<li class="nav-item"><a class="nav-link" href="#pet" role="tab" data-toggle="tab">반려동물</a></li>
					<li class="nav-item"><a class="nav-link" href="#etc" role="tab" data-toggle="tab">기타</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content" style="overflow:hidden;">
					<div role="tabpanel" class="tab-pane active" id="study">
					<table class="table" id="cl_table">
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>클래스장</th>
							<th>회원수</th>
							<th>클래스생일</th>
							<th>신고횟수</th>
							<th>회원삭제</th>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
						<tr>
							<td>1</td>
							<td>클래스팅</td>
							<td>민선김</td>
							<td>6</td>
							<td>2018-01-05</td>
							<td>3</td>
							<td><button name="class_delete" class="btn btn-secondary btn_cdelete"><i class="far fa-trash-alt"></i> 삭제</button>
						</tr>
					</table>
					</div>
					<div role="tabpanel" class="tab-pane" id="exercise">운동</div>
					<div role="tabpanel" class="tab-pane" id="company">회사</div>
					<div role="tabpanel" class="tab-pane" id="travel">여행</div>
					<div role="tabpanel" class="tab-pane" id="hobby">취미</div>
					<div role="tabpanel" class="tab-pane" id="pet">반려동물</div>
					<div role="tabpanel" class="tab-pane" id="etc">기타</div>
				</div>
			</div>
			
	 		<div id="board_searchbox">
	 			<select class="form-control notice_select">
				  <option>클래스</option>
				  <option>이름</option>
				</select>
	 			<input type="text" name="notice_search" class="notice_search form-control">	 
	 			<input type="submit" name="search_submit" class="btn btn-dark" value="검색">	
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
	<%@ include file="../etc/footer.jsp" %>
	
</body>
</html>