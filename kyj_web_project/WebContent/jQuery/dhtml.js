$(document).ready(function() {
	const gangnam = {title:"강남고등학교", address:"서울시 강남구 강남대로123",
					grade:{gtitle:"2학년 1반",
					list:[{name:"홍길동", kor:100, eng:100, math:100},
					 	  {name:"테스트", kor:90, eng:99, math:70},
					 	  {name:"자바", kor:80, eng:40, math:90},
					 	  {name:"오라클", kor:50, eng:50, math:95},
					 	  {name:"스크립트", kor:30, eng:60, math:60}
			 	  ]}};
	
	/* json 객체인 gangnam 데이터를 테이블 형식으로 출력 
		title - h1
		address, gtitle - h3
		list - 테이블 형식
	*/
	let code = "<h1> 학 교 명 : " + gangnam.title + "</h1>";
	code += "<h3> 주  소 : " + gangnam.address + "</h3>";
	code += "<h3> 학년/반 : " + gangnam.grade.gtitle + "</h3>";
	
	code += "<table><tr><th>번호</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th><th>총점</th><th>평균</th></tr>";
	
	
	for(index in gangnam.grade.list) {
		let no = parseInt(index) + 1;
		let list = gangnam.grade.list[index];
		let tot = list.kor + list.eng + list.math;
		let avg = Math.round(tot/3);
		
		code += "<tr>";
		code += "<td>" + no + "</td>";
		code += "<td>" + list.name + "</td>";
		code += "<td>" + list.kor + "</td>";
		code += "<td>" + list.eng + "</td>";
		code += "<td>" + list.math + "</td>";
		code += "<td>" + tot + "</td>";
		code += "<td>" + avg + "</td>";
		code += "</tr>";
	}
	code += "</table>";
	
	$("body").append(code);
	/* $("body").append(code4); */
});
