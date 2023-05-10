$(document).ready(function() {
	// 1. json data -- $.getJSON(url, function(JSON 데이터를 담고 있는 변수 이름){});
	let url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20220504";
	
	$.getJSON(url, function(kobis){
		let boxOffice = kobis.boxOfficeResult;
		
		// 2. output code 생성
		let code = "<h1>제목 : " + boxOffice.boxofficeType + "</h1>";
		code += "<h2>기간 : "+  boxOffice.showRange +"</h2>";
		code += "<h2>인기 순위</h2>";
		
		code += "<table><tr><th>순위</th><th>제목</th><th>개봉일</th><th>누적 관객수</th><th>상영횟수</th></tr>";
		
		for(score of boxOffice.dailyBoxOfficeList) {
			code += "<tr>";
			code += "<td>" +score.rank + "</td>";
			code += "<td>" +score.movieNm + "</td>";
			code += "<td>" +score.openDt + "</td>";
			code += "<td>" +score.audiAcc + "</td>";
			code += "<td>" +score.showCnt + "</td>";
			code += "</tr>";
		}
		
		code += "</table>";
		
		// 3. body 위치에 append
		$("body").append(code);
	}); // getJSON
	
}); // ready