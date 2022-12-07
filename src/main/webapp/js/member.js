/**
 * <input type="text" name="emailID" onkeyup="noKorean()" size="15">
 */
 
 function noKorean() {
	const regex = /^[ㄱ-ㅎ|가-힣]+$/;
	let str = frm2.emailID.value;//value 값 가져와서
	let last_char = str.substr(str.length-1, 1);//마지막 입력글자 가져와서
    if(regex.test(last_char)){
		alert("한글은 입력할 수 없습니다.");
	}
}

function LoginCheck(){
   if(document.Enjoy.id.value==0){
      alert("아이디를 써주세요")
      Enjoy.id.focus();
      return false;
   }
   if (document.Enjoy.pass.value == "") {
      alert("암호는 반드시 입력해 주세요");
      Enjoy.pass.focus();
      return false;
   }
   return true;
}


function JoinCheck(){
	if (document.Join.id.value == 0) {
		alert("아이디를 써주세요");
		Join.id.focus();
		return false;

	}
	
	if (document.Join.pwed1.value == ""){
		alert("암호를 반드시 입력해주세여");
		Join.pwed1.focus();
		return false;
	}
	
	if(document.Join.pwed1.value != document.Join.pswd2.value){
		alert("암호가 일치하지 않습니다");
		Join.pwed1.focus();
		return false;
	}
	
	if (document.Join.name.value == "") {
		alert("이름을 써주세요");
		Join.name.focus();
		return false;
	}
	
	return true;
	
	
}


function idCheck() {
	if (document.Join.id.value == "") {
		alert("아이디를 입력해주세요");
		document.Join.id.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.Join.id.value;
	window.open(url, "_blnak_1", "toolbar=no , menubar=no , scrollbars=yes , resizable=no , width=450 , height=200");
}



function MemberChange(){
	if (document.Join.id.value == 0) {
		alert("아이디를 써주세요");
		Join.id.focus();
		return false;

	}
	
}






