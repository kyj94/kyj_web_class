<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - Const:Object</title>
	<script>
		/* Array */
		/* let x = 100;
		let y = 100; */
		const x_arr = ["java", "oracle"];
		const y_arr = ["java", "oracle"];
		/* const z_arr = {"java", "oracle"}; */ //script에서 배열은 [] 
		
		
		/* JSON(JavaScript Object notation) */
		// REST 데이터
		const josn1 = {"subjct1":"java", 'subject2':"oracle"};
		const score = {name:"홍길동", kor:100, eng:99, math:100, tot:300, agv:100.0};
		// {}은 JOSN타입에서 사용 : {name:value, name:value...}
		
		
		/* JSON + Array */
		const scoreList = {hong:[{name:"홍길동"}, 10, 10, 10], test:["테스트", 20, 20, 20]}
		
		
		
		/* const x_arr = ["java", "oracle", "html"]; */ // const 키워드는 재정의 불가
		
		/* document.write('x--> ' + x + '<br>');
		document.write('y--> ' + y + '<br>'); */
		document.write('Array <br><hr>');
		document.write('x_arr --> ' + x_arr + '<br>');
		document.write('x_arr[0] --> ' + x_arr[0] + '<br>');
		document.write('y_arr --> ' + y_arr + '<br>');
		document.write('y_arr[1] --> ' + y_arr[1] + '<br><hr>');
		/* document.write('z_arr --> ' + z_arr + '<br>'); */
		
		document.write('josn1 --> ' + josn1 + '<br>');
		document.write('score --> ' + score + '<br>');
		
		document.write('score.name --> ' + score.name + '<br>');
		document.write('score.kor --> ' + score.kor + '<br><hr>');
		
		document.write('JSON + Array <br><hr>');
		document.write('scoreList.hong[0] --> ' + scoreList.hong[0] + '<br>');
		document.write('scoreList.hong[0].name --> ' + scoreList.hong[0].name + '<br>');
		document.write('scoreList.hong[1] --> ' + scoreList.hong[1] + '<br>');
		document.write('scoreList.hong[2] --> ' + scoreList.hong[2] + '<br>');
		document.write('scoreList.hong[3] --> ' + scoreList.hong[3] + '<br><hr>');
		
		document.write('scoreList.test[0] --> ' + scoreList.test[0] + '<br>');
		document.write('scoreList.test[1] --> ' + scoreList.test[1] + '<br>');
		document.write('scoreList.test[2] --> ' + scoreList.test[2] + '<br>');
		document.write('scoreList.test[3] --> ' + scoreList.test[3] + '<br><hr>');
		
	</script>
</head>

<body>

</body>
</html>