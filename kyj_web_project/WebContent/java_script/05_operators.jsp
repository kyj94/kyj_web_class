<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - Operators</title>
	<script>
		/* 산술 연산자 */
		let num1 = 100;
		let num2 = 50;
		
		document.write( "<h5>산술 연산자</h5>");
		document.write( "num1 + num2 = " + (num1 + num2) + '<br>');
		document.write( "num1 - num2 = " + (num1 - num2) + '<br>');
		document.write( "num1 * num2 = " + (num1 * num2) + '<br>');
		document.write( "num1 / num2 = " + (num1 / num2) + '<br>');
		document.write( "num1 % num2 = " + (num1 % num2) + '<br>');
		document.write("<hr>");
		
		
		/* 비교 연산자 */
		document.write( "<h5>비교 연산자</h5>");
		document.write( "num1 == num2 = " + (num1 == num2) + '<br>');
		/* document.write( "num1 === num2 = " + (num1 === num2) + '<br>'); */
		document.write( "num1 != num2 = " + (num1 != num2) + '<br>');
		document.write( "num1 >= num2 = " + (num1 >= num2) + '<br>');
		document.write( "num1 <= num2 = " + (num1 <= num2) + '<br>');
		document.write("<hr>");
		
		
		/* 논리 연산자 */
		document.write( "<h5>논리 연산자</h5>");
		document.write( "(10>9) && (10>5) = " + (10>9) && (10>5) + '<br>');
		document.write( "(10>9) && (10<5) = " + (10>9) && (10<5) + '<br>');
		document.write( "(10<9) && (10>5) = " + (10<9) && (10>5) + '<br>');
		document.write( "(10<9) && (10<5) = " + (10<9) && (10<5) + '<br>');
		
		document.write( "(10>9) || (10>5) = " + (10>9) || (10>5) + '<br>');
		document.write( "(10>9) || (10<5) = " + (10>9) || (10<5) + '<br>');
		document.write( "(10<9) || (10>5) = " + (10<9) || (10>5) + '<br>');
		document.write( "(10<9) || (10<5) = " + (10<9) || (10<5) + '<br>');
		document.write("<hr>");
		
		
		/* 증감 연산자 */
		var i = 10;
		document.write( "<h5>증감 연산자</h5>");
		document.write( "i++ = " + (i++) + '<br>');
		document.write( "++i = " + (++i) + '<br>');
		document.write( "--i = " + (--i) + '<br>');
		document.write("<hr>");
		
		
		/* 중첩 연산자 */
		var sum = 100;
		document.write( "<h5>중첩(누적) 연산자</h5>");
		document.write( "sum = sum+100 ==> " + (sum=sum+100) + '<br>');
		document.write( "sum +sum ==> " + (sum=sum+100) + '<br>');
		document.write("<hr>");
		
		/**/
			
		
		
	</script>
</head>

<body>

</body>
</html>