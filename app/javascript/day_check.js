const day_check = () =>{
  $("td:contains('日')").addClass("check");
  $("td:contains('土')").addClass("check");
  $("td:contains('祝日')").addClass("check");
}
window.addEventListener("load",day_check);