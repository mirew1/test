//main.js
/*
 * 2018. 02. 21 작성됨
 */

function testShow(){
	alert("main.js 안에 있는 testShow() 실행됨 !");
}

//그림을 클릭하면 실행되는 함수
//그림을 클릭하면, 다른 그림으로 바꿈
function changeImage1(){
	document.getElementById("image1").src = "/testJ/images/Android.gif"
}
//버튼 클릭하면 실행되는 함수
//버튼 클릭하면, CSS속성 바꿈(글자색,테두리선,글자크기,배경색)
function changeCSS(){
	var element = document.getElementById("demo3");
	element.style.color = "#ff00cc";
	element.style.border = "3px double black";
	element.style.fontSize = "24pt";//자바스크립트는 -를 쓰지않는다.대문자로바꿈
	element.style.backgroundColor = "yellow";
}
function calculater(){
	var num1 = document.getElementById("num1").value;
	var num2 = document.getElementById("num2").value;
	//자바스크립트 내장함수 typeof(변수|값|계산식) -> 자료형 확인 함수
	console.log("num1 : " + typeof(num1) + "\n");
	console.log("num2 : " + typeof(num2) + "\n");
	//자바스크립트 내장함수 : Number(문자열숫자) -> 숫자로 파싱함
	var result = Number(num1)+Number(num2);
	document.getElementById("result").value = result;
	document.getElementById("demo4").innerHTML = result;
}
function checkType(){
	console.log(typeof("apple") + "\n" + 
			typeof(123) + "\n" +
			typeof(2.54) + "\n" +
			typeof('A') + "\n" +
			typeof("banana" + 12) + "\n" +
			typeof(34 + "5") + "\n" +
			typeof(3==4) + "\n" +
			typeof(val) + "\n");
}













