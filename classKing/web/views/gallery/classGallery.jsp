<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classGallery.css" rel="stylesheet" type="text/css">
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
	<!-- 메뉴바 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				<%@ include file="../etc/menuBar.jsp" %>
    <!-- 메뉴바 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
			<div id="main_box">
	<!--gallery title 시작!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
          <div class="board_title">
             <div class="title" ><i class="fas fa-bullhorn"></i> Gallery</div>   
             <button type="button" class="btn btn-secondary" onclick="location.href='/classKing/views/gallery/classGalleryMake.jsp'"><i class="far fa-file-alt" ></i> UpLoad</button>
          </div>
	<!--gallery title 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<!-- 앨범 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->		
<div class="container">
  <table class="table table-condensed"  >  
    <tbody>
      <tr>
        <td ><div class="">
							<div class="thumbnail">
								<a href="/w3images/lights.jpg" target="_blank"> <img
									src="/w3images/lights.jpg" alt="Lights">
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
        <td><div class="gallery" >
							<div class="thumbnail" >
								<a href="/w3images/nature.jpg" target="_blank"> <img
									src="/w3images/nature.jpg" alt="Nature">
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
        <td><div class="gallery" >
							<div class="thumbnail">
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords" >
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
      </tr>
      <tr>
        <td><div class="gallery" >
							<div class="thumbnail" >
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords" >
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
        <td><div class="gallery" >
							<div class="thumbnail">
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords">
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
        <td><div class="gallery" >
							<div class="thumbnail" >
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords">
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
      </tr>
      <tr id="table_bottom">
        <td><div class="gallery" >
							<div class="thumbnail">
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords">
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
        <td><div class="gallery" >
							<div class="thumbnail" >
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords" >
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
								</a>
							</div>
						</div></td>
        <td><div class="gallery" >
							<div class="thumbnail" >
								<a href="/w3images/fjords.jpg" target="_blank"> <img
									src="/w3images/fjords.jpg" alt="Fjords">
									<div class="caption">
										<p>Lorem ipsum donec id elit non mi porta gravida at eget
											metus.</p>
									</div>
									
								</a>
							</div>
						</div></td>
      </tr>
    </tbody>
  </table>
</div>
<!-- 앨범 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
<!-- 하단 페이지 번호 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="board_searchbox">
             <select class="form-control notice_select">
              <option>제목</option>
              <option>내용</option>
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
<!-- 하단 페이지 번호 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				</div>
				 <!-- left-box 끝 -->
			</div>
	</div>
	</section>
	<%@ include file="../etc/footer.jsp" %>
</body>
</html>