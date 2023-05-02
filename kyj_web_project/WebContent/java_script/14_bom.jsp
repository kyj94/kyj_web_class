<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - BOM(Browser Object Model)</title>
<script>
	let w = window.innerWidth;
	let h = window.innerHeight;
	
	document.write("height -> " + h +'<br>');
	document.write("width -> " + w +'<br>');
</script>

<style>
	button {
		width:120px;
		padding:10px 0;
		background:cyan;
		border:1px solid lightgray;
		border-radius:4px;
		cursor:pointer;
	}
	
	button:hover {
		text-decoration:underline;
	}
</style>

<script>
	/* function locationPage1() {
		window.location.href = 'http://www.naver.com';		
	}
	
	function locationPage2() {
		window.location.href = 'http://www.google.com';		
	}
	
	function locationPage3() {
		window.location.href = 'http://www.daum.net';		
	} */
	
	/* 매개변수를 사용해서 한줄로 만들 수 있음 */
	function locationPage(page) {
		if(page == 'naver') {
			window.open('about:blank').location.href = 'http://www.naver.com';
		} else if(page == 'google') {
			window.open('about:blank').location.href = 'http://www.google.com';		
		} else if(page == 'daum') {
			window.open('about:blank').location.href = 'http://www.daum.net';	
		}
	}
	
	function historyPage(page){
		let hlength = window.history.length;
		alert(hlength);
		if(page == 'prev'){
			window.history.back();
		}else if(page == 'next'){
			window.history.forward();
		}else if(page == 'go2'){
			window.history.go(2);
		}
	}
</script>
</head>

<body>
	<h1>Browser Object Model</h1>
	<button type="button" onclick='locationPage("naver")'>네이버</button>
	<button type="button" onclick="locationPage('google')">구글</button>
	<button type="button" onclick='locationPage("daum")'>다음</button>
	
	<button type="button" onclick='historyPage("prev")'>Prev</button>
	<button type="button" onclick='historyPage("next")'>Next</button>
	<button type="button" onclick='historyPage("go2")'>Go page 2</button>
</body>
</html>