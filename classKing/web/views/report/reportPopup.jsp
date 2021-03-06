<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/main2.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>


<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.lbslider.js"></script>

<title>신고하기</title>

<style>
table {
	width: 100%;
	border: 0;
}

table tr th {
	border: 0;
}

table tr td {
	border: 0;
}
</style>
</head>
<body>

	<!-- 일정추가 시작 -->
	<div id="cal_board" style="margin: 5px;">
		<form action="" method="post">
			<table class="table table-bordered" style="border: 0;">
				<thread>
				<caption
					style="padding-left: 10px; background: #3b64af; color: white;">신고하기</caption>
				<tr>
					<th style="background: #c5cdd7;">사유</th>
					<td><select name="select_event">
							<option value="1" selected="">선택</option>
							<option value="2">불법정보</option>
							<option value="3">욕설/인신공격</option>
							<option value="4">음란성/선정성</option>
							<option value="6">기타</option>
					</select></td>
				</tr>
				<tr>
					<th style="background: #c5cdd7;">내용</th>
					<td><textarea type="text" cols="39" rows="7"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center" style="border: none;"><input
						type="button" class="btn btn_report" value="접수"
						style="background: pink;"></td>
				</tr>
				</thread>
			</table>
		</form>
	</div>
	<!-- 일정추가 끝! -->
</body>
</html>