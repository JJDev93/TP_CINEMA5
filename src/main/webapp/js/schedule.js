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