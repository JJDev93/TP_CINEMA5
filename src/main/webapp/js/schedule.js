function moviescheduleCheck(){
	if(document.frm.movietitle.value.length==0){
		alert("영화를 선택해주세요")
		frm.movietitle.focus();
		return false;
	}
	
	if(document.frm.onDate.value.length==0){
		alert("날짜를 선택해주세요")
		frm.onDate.focus();
		return false;
	}
	if(document.frm.onTime.value.length==0){
		alert("시간를 선택해주세요")
		frm.onTime.focus();
		return false;
	}
	if(document.frm.price.value.length==0){
		alert("가격를 선택해주세요")
		frm.price.focus();
		return false;
	}
}

function ScheduleCheck(){
	if(document.frm.movietitle.value.length==0){
		alert("영화를 수정해주세요")
		frm.movietitle.focus();
		return false;
	}
	
	if(document.frm.onDate.value.length==0){
		alert("날짜를 선택해주세요")
		frm.onDate.focus();
		return false;
	}
	if(document.frm.onTime.value.length==0){
		alert("시간를 선택해주세요")
		frm.onTime.focus();
		return false;
	}
	if(document.frm.price.value.length==0){
		alert("가격를 선택해주세요")
		frm.price.focus();
		return false;
	}
}

function DeleteCheck(){
	var result = confirm("정말 삭제하시겠습니까?");
	
	if(result == true){
		alert("삭제되었습니다");
	}else if(result == false){
		alert("취소되었습니다.")
	}
	
	return result;	

}





