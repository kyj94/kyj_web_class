$(document).ready(function() {
	
	/*******************************************************************************
		Login Form Check
	 ******************************************************************************/
	$("#btnLogin").click(function() {
		if($("#id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		} else if ($("#pass").val() == "") {
			alert("패스워드를 입력해주세요.");
			$("#pass").focus();
			return false;
		} else {
			// 서버전송
			loginForm.submit();
		}
	}); //click
	
	/*******************************************************************************
		Login Form - 다시쓰기
	 ******************************************************************************/
	$("#btnLoginReset").click(function() {
		$("#id").val("").focus();
		$("#pass").val("");
	}); // btnLoginReset click
	
	/*******************************************************************************
		회원가입 폼 체크 - 유효성 체크(값의 유무만 확인)
	 ******************************************************************************/
	$("#btnJoin").click(function() {
		if($("#id").val() == "") {
			alert("아이디를 입력해주세요");
			$("#id").focus();
			return false;
		} else if($("#pass").val() == "") {
			alert("비밀번호를 입력해주세요");
			$("#pass").focus();
			return false;
		} else if($("#cpass").val() == "") {
			alert("비밀번호 확인을 입력해주세요");
			$("#cpass").focus();
			return false;
		} else if($("#name").val() == "") {
			alert("이름을 입력해주세요");
			$("#name").focus();
			return false;
		} else if($("input[name='gender']:checked").length == 0) {
			alert("성별을 선택해주세요");
			$("li:nth-child(5) span").css("border", "3px solid red");
		} else if($("#email1").val() == "") {
			alert("이메일을 입력해주세요");
			$("#email1").focus();
			return false;
		} else if($("#addr1").val() == "") {
			alert("주소찾기를 해주세요");
			$("#btnSearchAddr").css("border", "3px solid red");
			return false;
		} else if($("#addr2").val() == "") {
			alert("상세주소를 입력해주세요");
			$("#addr2").focus();
			return false;
		} else if($("input[name='tel']:checked").length == 0) {
			alert("통신사를 선택해주세요");
			return false;
		} else if($("#phone1").val() == "default") {
			alert("휴대폰 번호를 선택해주세요");
			$("#phone1").focus();
			return false;
		} else if($("#phone2").val() == "") {
			alert("휴대폰 번호를 입력해주세요");
			$("#phone2").focus();
			return false;
		} else if($("#phone3").val() == "") {
			alert("휴대폰 번호를 입력해주세요");
			$("#phone3").focus();
			return false;
		} else if($("input[name='hobby']:checked").length == 0) {
			alert("취미를 선택해주세요");
			return false;
		} else {
			// 서버전송
			joinForm.submit();
		}
		
	}); // btnJoin click
	
	/*******************************************************************************
		회원가입 폼 체크 -비밀번호 & 비밀번호 확인
	******************************************************************************/
	$("#cpass").on("blur", function() {
		/*alert("test");*/
		if($("#pass").val() != "" && $("#cpass").val()!= "") {
			if($("#pass").val() == $("#cpass").val()) {
				$("#cmsg").text("비밀번호가 일치합니다").css("color", "blue").css("fontSize", "11px").css("display", "block");
				$("#name").focus();
			} else {
				$("#cmsg").text("비밀번호가 일치하지 않습니다. 다시 입력해주세요.").css("color", "red").css("fontSize", "11px").css("display", "block");
				$("#pass").val("").focus();
				$("#cpass").val("");
			}
		}
		
		
	}); // cpass blur
	
	
	/*******************************************************************************
		회원가입 폼 체크 - 이메일 체크
	******************************************************************************/
	$("#email3").on("change", function() {
		if($("#email3").val() == "default") {
			alert("이메일을 선택해주세요");
			$("#email2").val("");
			$("#email3").focus();			
		} else if ($("#email3").val() == "self") {
			$("#email2").val("").focus();
		} else {
			$("#email2").val($("#email3").val());
		}
	}); // email address
	
	
	/*******************************************************************************
		주소API
	******************************************************************************/
	$("#btnSearchAddr").click(function() {
		new daum.Postcode({
	        oncomplete: function(data) {
	        	$("#addr1").val("(" + data.zonecode + ") " + data.address);
	        	$("#addr2").focus();
	        	/*document.getElementById("addr1").value = "(" + data.zonecode + ") " + data.address;
	        	document.getElementById("addr2").focus();*/
	        }
	    }).open();
	});	// btnSearchAddr
	
	/*******************************************************************************
		게시판 글쓰기 폼
	******************************************************************************/
	
	
	
	/*******************************************************************************
		관리자 공지사항
	******************************************************************************/




}); // ready