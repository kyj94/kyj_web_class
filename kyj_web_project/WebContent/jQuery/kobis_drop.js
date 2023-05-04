$(document).ready(function() {
	// 실행버튼 이벤트
	$("#btnKobis").click(function(){
		
		if($("#kselect").val() == "defult") {
			alert("박스오피스를 선택해주세요.");
			$("#kselect").focus();
			return false;
		} else if($("input[type='text']").val() == "") {
			alert("날짜를 입력해주세요.");
			$("input[type='text']").focus();
			return false;
		} else {
			// 1. 일별, 주말 박스오피스 JSON 데이터 가져오기
			let kdate = $("input[type='text']").val();
			let ktype = $("#kselect").val();
			let url = "";
			
			if(ktype == "Daily") {
				// 일별 박스오피스 url 생성
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/search" + ktype + "BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			} else {
				// 주말 박스오피스 url 생성
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/search" + ktype + "BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			}
			
			$.getJSON(url, function(kobis) {
				// 2. output 형식 생성
				
				let boxOffice = kobis.boxOfficeResult;
				
				let code = "<div id='d2'>";
				
				code += "<h1>제목 : " + boxOffice.boxofficeType + "</h1>";
				code += "<h2>기간 : "+  boxOffice.showRange +"</h2>";
				code += "<table><tr><th>순위</th><th>제목</th><th>개봉일</th><th>누적 관객수</th><th>상영횟수</th></tr>";
				
				let listName = null;
				
				if(ktype == "Daily") {
					listName = boxOffice.dailyBoxOfficeList;
				} else {
					listName = boxOffice.weeklyBoxOfficeList;
				}
					
				for(score of listName) {
					code += "<tr>";
					code += "<td>" +score.rank + "</td>";
					code += "<td>" +score.movieNm + "</td>";
					code += "<td>" +score.openDt + "</td>";
					code += "<td>" +score.audiAcc + "</td>";
					code += "<td>" +score.showCnt + "</td>";
					code += "</tr>";
				}
				
				code += "</table>";
				code += "</div>";
				
				// 3. body 위치에 append
				// 이전 출력화면 삭제 필요
				$("div#d2").remove();
				/*$("body").append(code);*/
				/*$().before();*/ // p1 앞에 출력
				$("#d1").after(code); //d1 다음에 출력
				$("#p1").css("background", "tomato");
			});	 // getJSON	
			
		}
		
	}); // btnKobis
	
}); // ready
