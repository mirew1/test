<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/classKing/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="/classKing/js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.lbslider.js"></script>
<link href="/classKing/css/main.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/menuBar.css" rel="stylesheet" type="text/css">
<link href="/classKing/css/classMake.css" rel="stylesheet"
	type="text/css">

<title>Class King</title>
</head>
<body>
	<%@ include file="../etc/header.jsp"%>
	<section>
		<div id="wrap">
			<div id="right_box">
				<!-- 로그인박스 시작 -->
				<%@ include file="../etc/login.jsp"%>
				<!-- 로그인박스 끝 -->

				<!-- 알람박스 시작 -->
				<div id="alarm_box">알람!</div>
				<!-- 알람박스 끝 -->
			</div>
			<div id="left_box">
				<%@ include file="../etc/menuBar.jsp"%>
				<div id="main_box">
					<div class="board_title">
						<div class="title">
							<i class="fas fa-bullhorn"></i> 클래스 만들기
						</div>
					</div>
					<div class="container">
						<table class="table table-bordered">
							<tbody>
								<form action="write_ok.jsp" method="post"
									encType="multiplart/form-data">
									<tr>
										<th><label for="InputCategory">Category</label></th>
										<td><div class="center">
												<div class='checks'>
													<input name='category' type='radio' id='sports'
														checked='checked'> <label class='radio-label'>운동</label>
													<input name='category' type='radio' id='study'> <label
														class='radio-label'>스터디</label> <input name='category'
														type='radio' id='company'> <label
														class='radio-label'> 회사</label> <input name='category'
														type='radio' id='travel'> <label
														class='radio-label'> 여행</label> <input name='category'
														type='radio' id='animal'> <label
														class='radio-label'> 반려동물</label> <input name='category'
														type='radio' id='hobby'> <label
														class='radio-label'> 취미</label>
												</div>
											</div></td>
									</tr>
									<tr>
										<th><label for="InputClassName">Class Name</label></th>
										<td><input type="text" class="form-control"
											id="InputClassName" name="className"
											placeholder="클래스명을 입력해주세요."></td>
									</tr>
									<tr>
										<th><label for="InputClassNotice">Class Notice</label></th>
										<td><textarea cols="10" placeholder="클래스 설명을 입력해주세요."
												id="InputClassNotice" name="classNotice"
												class="form-control"></textarea></td>
									</tr>

									<tr>
										<th><label for="InputImage">Image</label></th>
										<td>
											<!-- 이미지 슬라이드 -->
											<div class="container is2">

												<!-- #region Jssor Slider Begin -->
												<!-- Generator: Jssor Slider Maker -->
												<!-- Source: https://www.jssor.com -->
												<script src="/classKing/js/jssor.slider-27.1.0.min.js"
													type="text/javascript"></script>
												<script type="text/javascript">
													jssor_1_slider_init = function() {

														var jssor_1_SlideshowTransitions = [
																{
																	$Duration : 800,
																	x : 0.3,
																	$During : {
																		$Left : [
																				0.3,
																				0.7 ]
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : -0.3,
																	$SlideOut : true,
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : -0.3,
																	$During : {
																		$Left : [
																				0.3,
																				0.7 ]
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : 0.3,
																	$SlideOut : true,
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : 0.3,
																	$During : {
																		$Top : [
																				0.3,
																				0.7 ]
																	},
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : -0.3,
																	$SlideOut : true,
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : -0.3,
																	$During : {
																		$Top : [
																				0.3,
																				0.7 ]
																	},
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : 0.3,
																	$SlideOut : true,
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : 0.3,
																	$Cols : 2,
																	$During : {
																		$Left : [
																				0.3,
																				0.7 ]
																	},
																	$ChessMode : {
																		$Column : 3
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : 0.3,
																	$Cols : 2,
																	$SlideOut : true,
																	$ChessMode : {
																		$Column : 3
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : 0.3,
																	$Rows : 2,
																	$During : {
																		$Top : [
																				0.3,
																				0.7 ]
																	},
																	$ChessMode : {
																		$Row : 12
																	},
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : 0.3,
																	$Rows : 2,
																	$SlideOut : true,
																	$ChessMode : {
																		$Row : 12
																	},
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : 0.3,
																	$Cols : 2,
																	$During : {
																		$Top : [
																				0.3,
																				0.7 ]
																	},
																	$ChessMode : {
																		$Column : 12
																	},
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	y : -0.3,
																	$Cols : 2,
																	$SlideOut : true,
																	$ChessMode : {
																		$Column : 12
																	},
																	$Easing : {
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : 0.3,
																	$Rows : 2,
																	$During : {
																		$Left : [
																				0.3,
																				0.7 ]
																	},
																	$ChessMode : {
																		$Row : 3
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : -0.3,
																	$Rows : 2,
																	$SlideOut : true,
																	$ChessMode : {
																		$Row : 3
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : 0.3,
																	y : 0.3,
																	$Cols : 2,
																	$Rows : 2,
																	$During : {
																		$Left : [
																				0.3,
																				0.7 ],
																		$Top : [
																				0.3,
																				0.7 ]
																	},
																	$ChessMode : {
																		$Column : 3,
																		$Row : 12
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	x : 0.3,
																	y : 0.3,
																	$Cols : 2,
																	$Rows : 2,
																	$During : {
																		$Left : [
																				0.3,
																				0.7 ],
																		$Top : [
																				0.3,
																				0.7 ]
																	},
																	$SlideOut : true,
																	$ChessMode : {
																		$Column : 3,
																		$Row : 12
																	},
																	$Easing : {
																		$Left : $Jease$.$InCubic,
																		$Top : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	$Delay : 20,
																	$Clip : 3,
																	$Assembly : 260,
																	$Easing : {
																		$Clip : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	$Delay : 20,
																	$Clip : 3,
																	$SlideOut : true,
																	$Assembly : 260,
																	$Easing : {
																		$Clip : $Jease$.$OutCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	$Delay : 20,
																	$Clip : 12,
																	$Assembly : 260,
																	$Easing : {
																		$Clip : $Jease$.$InCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																},
																{
																	$Duration : 800,
																	$Delay : 20,
																	$Clip : 12,
																	$SlideOut : true,
																	$Assembly : 260,
																	$Easing : {
																		$Clip : $Jease$.$OutCubic,
																		$Opacity : $Jease$.$Linear
																	},
																	$Opacity : 2
																} ];

														var jssor_1_options = {
															$AutoPlay : 1,
															$SlideshowOptions : {
																$Class : $JssorSlideshowRunner$,
																$Transitions : jssor_1_SlideshowTransitions,
																$TransitionsOrder : 1
															},
															$ArrowNavigatorOptions : {
																$Class : $JssorArrowNavigator$
															},
															$ThumbnailNavigatorOptions : {
																$Class : $JssorThumbnailNavigator$,
																$SpacingX : 5,
																$SpacingY : 5
															}
														};

														var jssor_1_slider = new $JssorSlider$(
																"jssor_1",
																jssor_1_options);

														/*#region responsive code begin*/

														var MAX_WIDTH = 980;

														function ScaleSlider() {
															var containerElement = jssor_1_slider.$Elmt.parentNode;
															var containerWidth = containerElement.clientWidth;

															if (containerWidth) {

																var expectedWidth = Math
																		.min(
																				MAX_WIDTH
																						|| containerWidth,
																				containerWidth);

																jssor_1_slider
																		.$ScaleWidth(expectedWidth);
															} else {
																window
																		.setTimeout(
																				ScaleSlider,
																				30);
															}
														}

														ScaleSlider();

														$Jssor$.$AddEvent(
																window, "load",
																ScaleSlider);
														$Jssor$.$AddEvent(
																window,
																"resize",
																ScaleSlider);
														$Jssor$
																.$AddEvent(
																		window,
																		"orientationchange",
																		ScaleSlider);
														/*#endregion responsive code end*/
													};
												</script>

												<div id="jssor_1">
													<!-- Loading Screen -->
													<div data-u="loading" class="jssorl-009-spin">
														<img src="/classKing/images/spin.svg" />
													</div>
													<div id="js2" data-u="slides">
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/031.jpg" /> <img
																data-u="thumb" src="/classKing/images/031-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/032.jpg" /> <img
																data-u="thumb" src="/classKing/images/032-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/033.jpg" /> <img
																data-u="thumb" src="/classKing/images/033-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/034.jpg" /> <img
																data-u="thumb" src="/classKing/images/034-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/035.jpg" /> <img
																data-u="thumb" src="/classKing/images/035-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/036.jpg" /> <img
																data-u="thumb" src="/classKing/images/036-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/037.jpg" /> <img
																data-u="thumb" src="/classKing/images/037-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/038.jpg" /> <img
																data-u="thumb" src="/classKing/images/038-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/039.jpg" /> <img
																data-u="thumb" src="/classKing/images/039-s190x90.jpg" />
														</div>
														<div data-p="170.00">
															<img data-u="image" src="/classKing/images/040.jpg" /> <img
																data-u="thumb" src="/classKing/images/040-s190x90.jpg" />
														</div>
													</div>
													<!-- Thumbnail Navigator -->
													<div data-u="thumbnavigator" class="jssort101"
														data-autocenter="1" data-scale-bottom="0.75">
														<div data-u="slides">
															<div data-u="prototype" class="p">
																<div data-u="thumbnailtemplate" class="t"></div>
																<svg viewbox="0 0 16000 16000" class="cv">
                        <circle class="a" cx="8000" cy="8000" r="3238.1"></circle>
                        <line class="a" x1="6190.5" y1="8000"
																		x2="9809.5" y2="8000"></line>
                        <line class="a" x1="8000" y1="9809.5" x2="8000"
																		y2="6190.5"></line>
                    </svg>
															</div>
														</div>
													</div>
													<!-- Arrow Navigator -->
													<div data-u="arrowleft" class="jssora106" data-scale="0.75">
														<svg class="svg1" viewbox="0 0 16000 16000">
                <circle class="c" cx="8000" cy="8000" r="6260.9"></circle>
                <polyline class="a"
																points="7930.4,5495.7 5426.1,8000 7930.4,10504.3 "></polyline>
                <line class="a" x1="10573.9" y1="8000" x2="5426.1"
																y2="8000"></line>
            </svg>
													</div>
													<div data-u="arrowright" class="jssora106"
														data-scale="0.75">
														<svg class="svg1" viewbox="0 0 16000 16000">
                <circle class="c" cx="8000" cy="8000" r="6260.9"></circle>
                <polyline class="a"
																points="8069.6,5495.7 10573.9,8000 8069.6,10504.3 "></polyline>
                <line class="a" x1="5426.1" y1="8000" x2="10573.9"
																y2="8000"></line>
            </svg>
													</div>
												</div>
												<script type="text/javascript">
													jssor_1_slider_init();
												</script>
												<!-- #endregion Jssor Slider End -->
											</div>
										</td>
									</tr>
									<tr>
										<th><label>공개여부</label></th>
										<td>
											<!-- 비공개/공개 체크박스 -->
											<div class="checks" style="float: left;">
												<input type="radio" id="ex_rd" name="ex_rds"> <label
													for="ex_rd">공개</label>
											</div>
											<div class="checks second" style="float: left;">
												<input type="radio" id="ex_rd2" name="ex_rds"> <label
													for="ex_rd2">비공개</label>
											</div> <!--    <p>
                                          <input type="radio" id="test1" name="radio-group" checked>
                                          <label for="test1">공개</label>
                                       </p>
                                       <p>
                                          <input type="radio" id="test2" name="radio-group">
                                          <label for="test2">비공개</label>
                                       </p> --> <!-- 비공개/공개 체크박스 끝-->
										</td>
									</tr>
								</form>
							</tbody>
						</table>
						<div class="button">
							<button type="button" class="btn btn-primary">만들기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<%@ include file="../etc/footer.jsp"%>
</body>
</html>