$(".dropdown.login-menu").on("click",function(){
  $(".login-mask").css("visibility","visible");
  $(".login-background").css("visibility","visible");
});

$(".ion-close-circled").on("click",function(){
    $(".login-mask").css("visibility","hidden");
    $(".login-background").css("visibility","hidden");
});
