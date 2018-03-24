<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">

<link rel='stylesheet' type='text/css'
   href='http://www.blueb.co.kr/data/201010/IJ12872423858253/fullcalendar.css' />
<script type='text/javascript'
   src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery.js'></script>
<script type='text/javascript'
   src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery-ui-custom.js'></script>
<script type='text/javascript'
   src='http://www.blueb.co.kr/data/201010/IJ12872423858253/fullcalendar.min.js'></script>

<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classCalendar.css" rel="stylesheet" type="text/css">
<!--  calendar js!!!!!!!!!!!!!!!!!!!!!!!! -->
<script type='text/javascript'>
   $(document).ready(function() {

      var date = new Date();
      var d = date.getDate();
      var m = date.getMonth();
      var y = date.getFullYear();

      $('#calendar').fullCalendar({
         header : {
            left : 'prev,next today',
            center : 'title',
            right : 'month,basicWeek,basicDay'
         },
         editable : true,
         events : [ {
            title : 'All Day Event',
            start : new Date(y, m, 1)
         }, {
            title : 'Long Event',
            start : new Date(y, m, d - 5),
            end : new Date(y, m, d - 2)
         }, {
            id : 999,
            title : 'Repeating Event',
            start : new Date(y, m, d - 3, 16, 0),
            allDay : false
         }, {
            id : 999,
            title : 'Repeating Event',
            start : new Date(y, m, d + 4, 16, 0),
            allDay : false
         }, {
            title : 'Meeting',
            start : new Date(y, m, d, 10, 30),
            allDay : false
         }, {
            title : 'Lunch',
            start : new Date(y, m, d, 12, 0),
            end : new Date(y, m, d, 14, 0),
            allDay : false
         }, {
            title : 'Birthday Party',
            start : new Date(y, m, d + 1, 19, 0),
            end : new Date(y, m, d + 1, 22, 30),
            allDay : false
         }, {
            title : 'Click for Google',
            start : new Date(y, m, 28),
            end : new Date(y, m, 29),
            url : 'http://google.com/'
         }]
      });
   });
</script>
<script language="javascript">
  function showPopupCalen() 
{ window.open("calenPopup.html", "일정추가", "width=400, height=380, left=100, top=50"); }
</script>
<!--  calendar js!!!!!!!!!!!!!!!!!!!!!!!! -->
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
            <%@ include file="../etc/menuBar.jsp" %>
            <div id="main_box">
               <!-- 캘린더 시작 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
               <div id="calendar"></div>
               <!-- 캘린더 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->

               <div style="margin-bottom:60px;">
                  <input type="button" value="일정추가" class="btn pull-left"
                     style="background: #3b64af; color: white;  float:right;" 
                     onclick="showPopupCalen();"/>
               </div>

               <!-- 캘린더 알림창 시작!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
               
               <!-- <div class="container"> -->
                  <!-- <table class="table table-hover table_calendar">
                     <thead>
                        <tr>
                           <th>날짜</th>
                           <th>제목</th>
                           <th>작성자</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>2018/06/21</td>
                           <td>민선누나 생일</td>
                           <td>영민</td>
                        </tr>
                        <tr>
                           <td>Mary</td>
                           <td>Moe</td>
                           <td>mary@example.com</td>
                        </tr>
                        <tr>
                           <td>July</td>
                           <td>Dooley</td>
                           <td>july@example.com</td>
                        </tr>
                     </tbody>
                  </table> -->
               <!-- </div> -->
               <!-- 캘린더 알림창 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
            </div>
         </div>
      </div>
   </section>
   <%@ include file="../etc/footer.jsp" %>
</body>
</html>