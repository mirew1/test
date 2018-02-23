/*
 * main2.js
 */

function showAlert(){
	alert("메세지만 출력되는 알림창입니다.");
}

function showConfirm(){
	var returnValue = confirm("찬성하면 확인, 반대하면 취소를 누르시오.");
	document.getElementById("result").innerHTML = 
		"리턴값 확인 : " + returnValue;
}

function showPrompt(){
	var inputValue = prompt("주소를 입력하세요.");
	document.getElementById("result").innerHTML = 
		"입력된 주소 확인 : " + inputValue;
}
function inputValue(){
	var userName = document.getElementById("username").value;
	alert("입력된 이름 : " + userName);
}
function calculator2(op){
	var num1 = document.getElementById("n1").value;
	var num2 = document.getElementById("n2").value;
	var result = document.getElementById("result2");

	switch(op){
	case '+' : result.innerHTML = (num1 + " " + op + " " + num2 + " = "+(Number(num1)+Number(num2))); break;
	case '-' : result.innerHTML = (num1 + " " + op + " " + num2 + " = "+(Number(num1)-Number(num2))); break;
	case '*' : result.innerHTML = (num1 + " " + op + " " + num2 + " = "+(Number(num1)*Number(num2))); break;
	case '/' : result.innerHTML = (num1 + " " + op + " " + num2 + " = "+(Number(num1)/Number(num2))); break;
	case '%' : result.innerHTML = (num1 + " " + op + " " + num2 + " = "+(Number(num1)%Number(num2))); break;
	}
}

function equalCheck(){
	alert("== 연산자 : " + ('' == false) + ", " + 
			('' == 0) + ", " + 
			(0 == false) + ", " + 
			("273" == 273) + "\n" + 
			"=== 연산자 : " + ('' === false) + ", " + 
					('' === 0) + ", " + 
					(0 === false) + ", " + 
					("273" === 273));
}
function switchCheck(){
	var today = new Date();
	var currentHour = today.getHours();
	console.log(currentHour);
	switch(true){
	case currentHour == 9 : alert("업무시작 시간!");break;
	case currentHour < 11: alert("오전 간식 시간!");break;
	case currentHour < 15 : alert("오후 업무 시간!");break;
	case currentHour > 18 : alert("퇴근 시간!");break;
	default: alert("일할 시간!"); break;
	}
}
function logicCheck(){
	var value = Number(prompt("숫자를 입력하시오"));
	//짧은 조건문 : ||는 거짓이면 실행,  &&는 참이면 실행됨
	value % 2 == 0 || alert("홀수입니다.");
	value % 2 == 0 && alert("짝수입니다.");
}


























