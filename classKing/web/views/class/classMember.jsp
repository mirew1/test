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


<title>class_member</title>
<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">

<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script>
   window.module = {}
</script>
<script
   src="/assets/admin-c58b6575f2fb058da6001180625ddd93aaf955ed9ea4478020d64de5545a17dc.js"></script>
<!-- <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
   content="GKXLl7SM44I5mhanYy/7E5veMjLFrvdPBC95cSXcQvmkfxOHEvNqCBOnUkQzmipAt20TlWP8yijAkUnu7yWRvA==" /> -->

<!-- <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script defer
   src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<script src="/classKing/js/jquery-3.3.1.min.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classMember.css" rel="stylesheet" type="text/css">


<title>Class King</title>
</head>
<body>
   <%@ include file="../etc/header.jsp" %>
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
            <!-- 알람박스 시작 -->
            <div id="alarm_box">알람!</div>
            <!-- 알람박스 끝 -->
         </div>
         <div id="left_box">
            <%@ include file="../etc/menuBar.jsp" %>
            <div id="main_box">
               <div class="container">
                  <div class="board_title">
                     <div class="title">
                        <i class="fas fa-bullhorn"></i> 전체멤버(1)
                     </div>
                  </div>
                  <!-- <table class="table table-hover"
               style="width: 663px; heigth: 700px; border: 1px solid lightgray; margin: 0px; padding: 0px">
               <thead>
                  <tr>
                     <th>ID</th>
                     <th>IMAGES</th>
                     <th>신고</th>
                     <th>버튼</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td>로그인한 사람</td>
                     <td><img src="images/smile.png" width="25px" height="25px"></td>
                     <td>0</td>
                     <td><img src="images/x.png" width="20px" height="20px"></td>
                  </tr>
                  <tr>
                     <td>반장</td>
                     <td><img src="images/smile.png" width="25px" height="25px"></td>
                     <td>0</td>
                     <td><img src="images/seting.png" width="30px" height="30px"></td>
                  </tr>
                  <tr>
                     <td>멤버</td>
                     <td><img src="images/smile.png" width="25px" height="25px"></td>
                     <td>0</td>
                     <td><img src="images/x.png" width="20px" height="20px"></td>
                  </tr>
               </tbody>
            </table> -->
            <!-- 멤버리스트!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                  <!-- 권한선택? 셀렉트메뉴 -->
                  <div style="float: right;">
                     <select name="user_type" id="user_type" class="custom-select"
                        style="float: right; width: 130px; height: 40px; font-size: 10pt;"><option
                           value="-1">관리자 권한</option>
                        <option value="2">마스터</option>
                        <option value="1">매니저</option>
                        <option value="0">권한 없음</option></select> <select name="permission_id"
                        id="permission_id" class="custom-select"
                        style="float: right; width: 130px; height: 40px; font-size: 10pt;"><option
                           value="-1">멤버 타입</option>
                        <option value="">멤버</option>
                        <option value="1">제한된 멤버</option>
                        <option value="2">게스트</option></select>

                  </div>
                  <!-- 권한선택? 셀렉트메뉴 -->
                  <table class="table ml_table" id="activated-users"
                     style="">
                     <!-- <colgroup>
                        <col width="*" />
                        <col width="10%" />
                        <col width="10%" />
                        <col width="15%" />
                        <col width="15%" />
                        <col width="8%" />
                     </colgroup> -->
                     <thead>
                        <th>이름</th>
                        <th>권한</th>
                        <th>멤버타입</th>
                        <th>가입일</th>
                        <th>최근접속일</th>
                        <th>관리</th>
                     </thead>
                     <tbody>
                        <tr class="user false">
                           <td><div class="media" style="width: 200px;">
                                 <img class="d-flex mr-3 rounded-circle"
                                    src="https://t1.daumcdn.net/agit_resources/images/empty_profile.png"
                                    style="width: 50px;" />
                                 <div class="media-body" style="font-size: 10pt;">
                                    <div class="media-heading">mirew</div>
                                    gostjo12@naver.com
                                 </div>
                              </div></td>
                           <td><div style="width: 70px;">
                                 <span class="active-users--master">마스터</span>
                              </div></td>
                           <td><div style="width: 70px;">
                                 <span class="active-users--permitted">멤버</span>
                              </div></td>
                           <td><div style="width: 70px;">
                                 <span class="tooltip-trigger" data-placement="top"
                                    data-toggle="tooltip" title="by mirew">18/03/08 16:13</span>
                              </div></td>
                           <td><div style="width: 80px;">18/03/12 20:34</div></td>
                           <td><div style="width: 30px;"><a href="#"><img src="/classKing/images/seting.png" style="width:25px; height:25px;"></a></div></td>
                        </tr>
                     </tbody>
                  </table>
                  <!-- 멤버리스트!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <%@ include file="../etc/footer.jsp" %>
</body>
</html>