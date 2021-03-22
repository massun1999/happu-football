 window.addEventListener('load', function(){
  $('.mv').slick({
    autoplay:true,
    autoplaySpeed:5000,
    dots:false,
  });

  $('.sp-mv').slick({
    autoplay:true,
    autoplaySpeed:5000,
    dots:false,
  });
//ハンバーガーメニュー
  $('.burger-btn').on('click',function(){
    $('.burger-btn').toggleClass('close');
    $('.nav-wrapper').fadeToggle(500);
    $('body').toggleClass('noscroll');
  });
 });

