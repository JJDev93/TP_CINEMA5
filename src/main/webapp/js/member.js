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
      id.id.focus();
      return false;
   }
   if (document.Enjoy.pass.value == "") {
      alert("암호는 반드시 입력해 주세요");
      pass.pass.focus();
      return false;
   }
}