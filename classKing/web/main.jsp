<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.vo.Member,classes.model.vo.Classes,java.util.*"%>
<%
	Member loginUser = (Member) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

<!-- Owl Stylesheets -->
<link rel="stylesheet" href="resources/owlcarousel/owl.carousel.css">
<link rel="stylesheet" href="resources/owlcarousel/owl.carousel.min.css">


<script type="text/javascript">
	
	
	;(function($){
		<% if(loginUser != null){%>
		$.ajax({
			url : "/classKing/mclist",
			data : {memberid : "<%= loginUser.getMemberId() %>"},
			type : "get",
			datatype: "json",
			success : function(data){
				console.log(data);
				var jsonStr = JSON.stringify(data);
				var json = JSON.parse(jsonStr);
				var values = "";
				//values = $("#ul_mc").html();
				for(var i in json.list){
					values += "<li class='item'><div class='class_img_top' style='margin: none;'><a href='/classKing/sclasses?no="
							+ json.list[i].no + "'><img style='width:100px;height:100px' src='/classKing/upload/class_upload/" + json.list[i].img +"'></a></div>"
							+ "<p>" + json.list[i].title +"</p></li>";
				}
				//values += "</ul><div class='owl-nav'><div class='btn-prev'><i class='fas fa-caret-left'></i></div>"
						//+ "<div class='btn-next'><i class='fas fa-caret-right'></i></div></div>";
				console.log(values);
				$("#ul_mc").append(values);
			},erroe(a,b,c){
				console.log("error: " + a + ", " + b + ", " + c)
			}
		});
		<% } %>
	})($);
	//얘를 더 늦게 실행이가능한가?
	$(document).ready(function() {
		$('.owl-carousel').owlCarousel({
			//loop : true,
			nav : true,
			autoWidth : false,
			navText : [ $('.btn-prev'), $('.btn-next') ],
			responsive : {
				0 : {
					items : 1
				},
				600 : {
					items : 3
				},
				1000 : {
					items : 4
				}
			}
		});

	});
</script>
<!-- javascript -->
<script src="resources/owlcarousel/owl.carousel.js"></script>
<script src="resources/owlcarousel/owl.carousel.min.js"></script>

<title>Class King</title>
</head>
<body>
	<%@ include file="views/etc/header.jsp"%>
	<section>
		<div id="wrap">
			<div id="right_box">
				<!-- 로그인박스 시작 -->
				<% if (loginUser != null && loginUser.getMemberId().equals("admin")) { %>
					<%@ include file="views/etc/loginAdmin.jsp"%>
				<% } else if (loginUser != null) { %>
					<%@ include file="views/etc/loginMember.jsp" %>
				<% } else { %>
					<%@ include file="views/etc/login.jsp"%>
				<% } %>
				<!-- 로그인박스 끝 -->

				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">
				<!-- 공지사항 -->
				<img src="images/notice2.jpg">
				<div id="notice_box">
					<p>
						공지사항<span class="btn_more"><a
							href="/classKing/views/notice/notice.jsp">more <i
								class="fas fa-angle-right" style="vertical-align: middle;"></i></a></span>
					</p>
					<ul>
						<li><a href="#">클래스킹 업데이트에 따른 시스템 점검 안내</a><span
							class="notice_date">2018-01-02</span></li>
						<li><a href="#">클래스킹 업데이트에 따른 시스템 점검 안내</a><span
							class="notice_date">2018-01-02</span></li>
						<li><a href="#">클래스킹 업데이트에 따른 시스템 점검 안내</a><span
							class="notice_date">2018-01-02</span></li>
						<li><a href="#">클래스킹 업데이트에 따른 시스템 점검 안내</a><span
							class="notice_date">2018-01-02</span></li>
						<li><a href="#">클래스킹 업데이트에 따른 시스템 점검 안내</a><span
							class="notice_date">2018-01-02</span></li>
					</ul>
				</div>
				<!-- 추천클래스 -->
				<div id="best_class">
					<p>추천 클래스</p>
					<div class="card-group">
						<div class="card">
							<div class="card-img-top">
								<a href="#"><img src="images/best_c.png" alt="Card image cap" class="circle"></a>
							</div>
							<div class="card-body">
								<h5 class="card-title">클래스 이름</h5>
								<p class="card-text">이 클래스는 클래스킹을 위한 클래스이며 클래스를 위한 클래스 공부
									열심히 하기 위한 클래스임</p>
							</div>
						</div>
						<div class="card">
							<div class="card-img-top">
								<img src="images/best_c.png" alt="Card image cap" class="circle">
							</div>
							<div class="card-body">
								<h5 class="card-title">클래스 이름</h5>
								<p class="card-text">이 클래스는 클래스킹을 위한 클래스이며 클래스를 위한 클래스 공부
									열심히 하기 위한 클래스임</p>
							</div>
						</div>
						<div class="card">
							<div class="card-img-top">
								<img src="images/best_c.png" alt="Card image cap" class="circle">
							</div>
							<div class="card-body">
								<h5 class="card-title">클래스 이름</h5>
								<p class="card-text">이 클래스는 클래스킹을 위한 클래스이며 클래스를 위한 클래스 공부
									열심히 하기 위한 클래스임</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 마이클래스 -->
				<div id="my_class" class="slider">
					<p>마이 클래스</p>
					<ul id="ul_mc" class="owl-carousel owl-theme"
						style="padding: 0px 20px">
						<li class="item">
							<div class="class_img_top" style="margin: none;">
								<a href="/classKing/views/class/classMake.jsp"><i
									class="fas fa-plus"></i></a>
							</div>
							<p>클래스 만들기</p>
						</li>

					</ul>
					<div class="owl-nav">
						<div class="btn-prev">
							<i class="fas fa-caret-left"></i>
						</div>
						<div class="btn-next">
							<i class="fas fa-caret-right"></i>
						</div>
					</div>
				</div>
			</div>
			<!-- right box 끝 -->
		</div>
		<!-- wrap 끝 -->
	</section>
	<%@ include file="views/etc/footer.jsp"%>
</body>
</html>