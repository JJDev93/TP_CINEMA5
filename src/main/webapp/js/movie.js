/**
 * <input type="text" name="emailID" onkeyup="noKorean()" size="15">
 */
 
function moviewWriteCheck(){
   if(document.frm.movieTitle.value.length==0) {
      alert("영화제목을 입력해주세요");
      frm.name.focus();
      return false;
   }
   if(document.frm.moviePoster.value.length==0) {
      alert("포스터를 등록해주세요");
      frm.pass.focus();
      return false;
   }
   if(document.frm.movieScenario.value.length==0) {
      alert("시나리오를 입력하세요");
      frm.title.focus();
      return false;
   }
   $("input[type=file]").change(function () {
            
            var fileInput = document.getElementById("movieStillcut");
            
            var files = fileInput.files;
            var file;
            
            for (var i = 0; i < files.length; i++) {
                
                file = files[i];
 
                alert(file.name);
            }
            
        });
 
   return true;
}

function StillcutJPG(){
	var InputStillcut = document.getElementById("movieStillcut");        
    var files = InputStillcut.files;
    var file;
    var StillcutName = "";
    for (var i = 0; i < files.length; i++) {
        file = files[i];
        StillcutName += "," + file.name;
    }
    alert(StillcutName);
   	return true;
}