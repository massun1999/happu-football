window.addEventListener('DOMContentLoaded', function(){
  window.addEventListener('scroll', function(){
    if (100 < window.scrollY){
      $("td:contains('日')").addClass("check");
      $("td:contains('土')").addClass("check");
      $("td:contains('祝日')").addClass("check");
    }
  })
});



const day_check = () =>{
  $("td:contains('日')").addClass("check");
  $("td:contains('土')").addClass("check");
  $("td:contains('祝日')").addClass("check");
}
window.addEventListener("DOMContentLoaded",day_check);