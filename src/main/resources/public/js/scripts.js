/**
 * Created by Xynoci.
 */
$(document).ready(function () {
    $.getJSON("/loggedUserId", function(data){
        if(data.hasOwnProperty("userId")){
            $('.login-menu').css('display','none');
            $(".user-menu .dropdown-toggle").css("display","block");
        }else{
            $('.login-menu a').html('Sign In');
            $('.login-menu').css('display','block');
            $(".user-menu .dropdown-toggle").css("display","none");
        }
    });
    
    

});

// Sign out
$('.pull-right a').on("click", function () {
    $.get("/logout", function () {
        console.log('feedback.');
    });
    window.location = '/index.html';
});

// Sign in mask switch on/off
$(".dropdown.login-menu").on("click", function () {
    $(".login-mask").css("visibility", "visible");
    $(".login-background").css("visibility", "visible");
});

$(".ion-close-circled").on("click", function () {
    $(".login-mask").css("visibility", "hidden");
    $(".login-background").css("visibility", "hidden");
});