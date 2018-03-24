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
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classHome.css" rel="stylesheet" type="text/css">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>


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
         <div id="left_box"> <!--메뉴 및 최신글,최신 이미지 테이블을 담고 있음  --> 
            <%@ include file="../etc/menuBar.jsp" %>
            <div id="main_box">
               <!-- <p>최신글</p>    -->
               <!-- <h2 id="textTitle">최신글</h2> -->
            
            <div class="board_title">
             <div class="title"><i class="fas fa-bullhorn"></i> 최신글</div>      
          </div>
               <!--최신 글의 타이틀-->
               <table id="textTable" class="table">
                  <!--최신 글 테이블  -->
                  <tr>
                     <th></th>
                     <th>제목</th>
                     <th>작성자</th>
                     <th>날짜</th>
                  </tr>
                  <tr class="selectTr">
                     <td>1</td>
                     <td>abcdefghijklmn</td>
                     <td>가나다라마</td>
                     <td>2018-01-01</td>
                  </tr>
                  <tr class="selectTr">
                     <td>2</td>
                     <td>abcdefghijklmn</td>
                     <td>abcdef</td>
                     <td>2018-01-01</td>
                  </tr>
                  <tr class="selectTr">
                     <td>3</td>
                     <td>abcdefghijklmn</td>
                     <td>zxcvb</td>
                     <td>2018-01-01</td>
                  </tr>
                  <tr class="selectTr">
                     <td>4</td>
                     <td>abcdefghijklmn</td>
                     <td>qwerty</td>
                     <td>2018-01-01</td>
                  </tr>
                  <tr class="selectTr">
                     <td>5</td>
                     <td>abcdefghijklmn</td>
                     <td>qwerty</td>
                     <td>2018-01-01</td>
                  </tr>
               </table>
               <a href="/classKing/views/class/classBoard.jsp" id="tableButtonA">more</a>
               <!--최신글의 더보기  -->
               <br>
               
               <div class="board_title" style="margin-bottom:40px;">
             <div class="title"><i class="fas fa-bullhorn"></i> 최신이미지</div>      
          </div>
               <div id="my_class" class="slider">
                  
             <ul id="ul_mc" class="owl-carousel owl-theme" style="padding:0px 0px;">
                <li class="item">
                   <div class="class_img_top" style="margin:none; padding:none;">
                      <a href="#">
                         <img src="images/best_c.png">
                      </a>
                   </div>
                   <p>클래스 이름1</p>                   
                </li>
                <li class="item">
                   <div class="class_img_top" style="margin:none; padding:none;">
                      <a href="#">
                         <img src="images/best_c.png">
                      </a>
                   </div>
                   <p>클래스 이름2</p>                   
                </li>
                <li class="item">
                   <div class="class_img_top" style="margin:none; padding:none;">
                      <a href="#">
                         <img src="images/best_c.png">
                      </a>
                   </div>
                   <p>클래스 이름3</p>                   
                </li>
                <li class="item" >
                   <div class="class_img_top" style="margin:none; padding:none;">
                      <a href="#">
                         <img src="images/best_c.png">
                      </a>
                   </div>
                   <p>클래스 이름4</p>
                </li>
                
             </ul>
             <a href="/classKing/views/class/classGallery.jsp" id="tableButtonB">more</a>
         </div>
         
              
               <!-- 최신이미지를 더보기 위한 바로 밑에 위치한 버튼  -->

               <!-- wrap끝 -->
            </div>
         </div>
   </section>
   <%@ include file="../etc/footer.jsp" %>
</body>
</html>