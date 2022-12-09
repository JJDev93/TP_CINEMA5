/**
 * <input type="text" name="emailID" onkeyup="noKorean()" size="15">
 */
 
function moviewWriteCheck(){
   if(document.frm.movieTitle.value.length==0) {
      alert("영화제목을 입력해주세요");
      frm.movieTitle.focus();
      return false;
   }
   if(document.frm.moviePoster.value.length==0) {
      alert("포스터를 등록해주세요");
      frm.moviePoster.focus();
      return false;
   }
   if(document.frm.movieScenario.value.length==0) {
      alert("시나리오를 입력하세요");
      frm.movieScenario.focus();
      return false;
   } 
   if(document.frm.movieGenre.value.length==0) {
      alert("장르를 선택해주세요");
      frm.movieGenre.focus();
      return false;
   } 
   if(document.frm.movieDirector.value.length==0) {
      alert("영화감독을 입력하세요");
      frm.movieDirector.focus();
      return false;
   } 
   if(document.frm.movieCast.value.length==0) {
      alert("캐스팅 내용을 입력하세요");
      frm.movieCast.focus();
      return false;
   } 
   if(document.frm.movieOpenDate.value.length==0) {
      alert("상영일을 입력하세요");
      frm.movieOpenDate.focus();
      return false;
   } 
   if(document.frm.movieFilmRate.value.length==0) {
      alert("관람가등급나이를 선택해주세요");
      frm.movieFilmRate.focus();
      return false;
   } 
   if(document.frm.movieRunningTime.value.length==0) {
      alert("러닝타임을 입력하세요");
      frm.movieRunningTime.focus();
      return false;
   } 
   if(document.frm.movieScreening.value.length==0) {
      alert("상영여부를 선택해주세요");
      frm.movieScreening.focus();
      return false;
   } 
   return true;
}


function movieUpdateCheck(){
   if(document.frm.movieTitle.value.length==0) {
      alert("영화제목을 입력해주세요");
      frm.movieTitle.focus();
      return false;
   }
   if(document.frm.movieScenario.value.length==0) {
      alert("시나리오를 입력하세요");
      frm.movieScenario.focus();
      return false;
   } 
   if(document.frm.movieGenre.value.length==0) {
      alert("장르를 선택해주세요");
      frm.movieGenre.focus();
      return false;
   } 
   if(document.frm.movieDirector.value.length==0) {
      alert("영화감독을 입력하세요");
      frm.movieDirector.focus();
      return false;
   } 
   if(document.frm.movieCast.value.length==0) {
      alert("캐스팅 내용을 입력하세요");
      frm.movieCast.focus();
      return false;
   } 
   if(document.frm.movieOpenDate.value.length==0) {
      alert("상영일을 입력하세요");
      frm.movieOpenDate.focus();
      return false;
   } 
   if(document.frm.movieFilmRate.value.length==0) {
      alert("관람가등급나이를 선택해주세요");
      frm.movieFilmRate.focus();
      return false;
   } 
   if(document.frm.movieRunningTime.value.length==0) {
      alert("러닝타임을 입력하세요");
      frm.movieRunningTime.focus();
      return false;
   } 
   if(document.frm.movieScreening.value.length==0) {
      alert("상영여부를 선택해주세요");
      frm.movieScreening.focus();
      return false;
   } 
   return true;
}