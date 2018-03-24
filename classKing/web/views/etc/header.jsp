<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="/classKing/css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
		<div id="top">
			<a href="/classKing/main.jsp"><img src=/classKing/images/logo01.png></a>
			<div class="top_right">
				<div class="box_search">
					<input type="text" name="tf_search" class="tf_search"
						placeholder="검색어 입력" />
					<button type="submit" class="btn_search" onclick="location.href='/classKing/views/search/search.jsp'">
						<span class="ico_search">검색</span>
					</button>
				</div>
			</div>
		</div>
</header>

</body>
</html>