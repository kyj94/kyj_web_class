<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - window Object</title>
<script>
	/* 1. window.alert(메시지) */
	// alert('window.alert test');
	
	
	/* 2. window.confirm(메시지) */
	/* let result = window.confirm('계속 진행하시겠습니까?');
	if(result) {
		document.write('계속 진행하겠습니다.');
	} else {
		document.write('작업을 중단합니다.');
	} */
	
	
	/* 3. window.prompt(메시지) - 데이터를 입력받아 처리 */
	let name = window.prompt('이름을 입력해주세요. (예: 홍길동)');
	document.write('<h1>이름: ' + name + '</h1>');
</script>
</head>

<body>

</body>
</html>