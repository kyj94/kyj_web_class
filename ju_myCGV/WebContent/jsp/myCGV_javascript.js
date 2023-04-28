/*******************************************************************************
 * Login Form Check
 ******************************************************************************/
function loginCheck() {
	let id = document.getElementById("id");
	let pass = document.getElementById("pass");

	if (id.value == "") {
		alert("아이디를 입력해주세요.");
		id.focus();
		return false;
	} else if (pass.value == "") {
		alert("패스워드를 입력해주세요.");
		pass.focus();
		return false;
	} else { // 아이디, 패스워드가 모두 입력된 상태 --> 서버 전송
		loginForm.submit();
	}
}

/*******************************************************************************
 * Login Form - 다시쓰기
 ******************************************************************************/
function loginReset() {
	document.getElementById("id").value = "";
	document.getElementById("pass").value = "";
	document.getElementById("id").focus();
}

/*******************************************************************************
 * 회원가입 폼 체크
 ******************************************************************************/
function joinCheck() {

}

function joinCheck() {
	let id = document.getElementById("id");
	let pass = document.getElementById("pass");
	let cpass = document.getElementById("cpass");
	let name = document.getElementById("name");
	let email1 = document.getElementById("email1");
	let email2 = document.getElementById("email2");
	let email3 = document.getElementById("email3"); // select box
	let addr1 = document.getElementById("addr1");
	let addr2 = document.getElementById("addr2");
	let phone1 = document.getElementById("phone1");
	let phone2 = document.getElementById("phone2");
	let phone3 = document.getElementById("phone3");

	if (id.value == "") {
		alert("아이디를 입력해주세요.");
		id.focus();
		return false;
	} else if (pass.value == "") {
		alert("패스워드를 입력해주세요.");
		pass.focus();
		return false;
	} else if (cpass.value == "") {
		alert("패스워드를 입력해주세요.");
		cpass.focus();
		return false;
	} else if (name.value == "") {
		alert("성명을 입력해주세요.");
		name.focus();
		return false;
	} else if (checkCount("gender") == 0) {
		alert("성별을 선택해 주세요.");
		/*document.getElementsByName('gender')[0].focus().style.border='1px dotted red';*/
		return false;
	} else if (email1.value == "") {
		alert("이메일을 입력해주세요.");
		email1.focus();
		return false;
	} else if (email2.value == "") {
		alert("이메일을 선택해주세요.");
		email3.focus().style.border='1px solid red';
		return false;
	} else if (addr1.value == "") {
		alert("주소를 선택해주세요.");
		addr1.focus();
		return false;
	} else if (addr2.value == "") {
		alert("상세주소를 입력해주세요.");
		addr2.focus();
		return false;
	} else if (checkCount("tel") == 0) {
		alert("통신사를 선택해 주세요.");
		/*document.getElementById("phoneCheck").style.border="5px solid red";*/
		return false;
	} else if (phone1.value == "default") {
		alert("핸드폰번호를 선택해주세요.");
		phone1.focus();
		return false;
	} else if (phone2.value == "") {
		alert("핸드폰번호를 입력해주세요.");
		phone2.focus();
		return false;
	} else if (phone3.value == "") {
		alert("핸드폰번호를 입력해주세요.");
		phone3.focus();
		return false;
	} else if (checkCount("hobby") == 0) {
		alert("취미를 선택해 주세요.");
		return false;
	} else {
		joinForm.submit();
	}
}

function checkCount(tagName) {
	const tagList = document.getElementsByName(tagName);
	let count = 0;
	
	for(element of tagList) {
		if(element.checked) {
			count++;
		} // if
	} // for
	return count;
}
