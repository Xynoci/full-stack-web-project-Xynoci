$(document).ready(function() {
    $(".dropdown.login-menu").on("click", function() {
        $(".login-mask").css("visibility", "visible");
        $(".login-background").css("visibility", "visible");
    });
    $(".ion-close-circled").on("click", function() {
        $(".login-mask").css("visibility", "hidden");
        $(".login-background").css("visibility", "hidden");
    });
    $('#btn-register').click(function() {
        var userName = $('#userName').val(),
            userAccount = $('#userAccount').val(),
            pwd1 = $('#pwd1').val(),
            pwd2 = $('#pwd2').val();
        if (inputValidate(userName, userAccount, pwd1, pwd2)) {
            var data = {
                userName: userName,
                userAccount: userAccount,
                pwd: pwd1
            };
            $.ajax({
                type: 'POST',
                url: "/register",
                data: data,
                success: function(data, textStatus, jqXHR) {
                    console.log("yes.");
                    console.log(data.userName+", "+data.userAccount);
                },
                error: function(jqXHR, textStatus, errorThrown) {},
                dataType: "html"
            });
        }
    });
});

function inputValidate(userName, userAccount, pwd1, pwd2) {
    var allClear = true;
    var RED = "#dd4b39";
    var GREY = "#d2d6de";
    if (userName === "") {
        $('#userName').css("border-color", RED);
        allClear = false;
    } else {
        $('#userName').css("border-color", GREY);
    }
    if (!emailValidate(userAccount)) {
        $('#userAccount').css("border-color", RED);
        allClear = false;
    } else {
        $('#userAccount').css("border-color", GREY);
    }
    if (pwd1 === "") {
        $('#pwd1').css("border-color", RED);
        allClear = false;
    } else {
        $('#pwd1').css("border-color", GREY);
    }
    if (pwd2 === "") {
        $('#pwd2').css("border-color", RED);
        allClear = false;
    } else {
        $('#pwd2').css("border-color", GREY);
    }
    if ((pwd1 === "" && pwd2 === "") || pwd1 !== pwd2) {
        $('#pwd1').css("border-color", RED);
        $('#pwd2').css("border-color", RED);
        allClear = false;
    } else {
        $('#pwd1').css("border-color", GREY);
        $('#pwd2').css("border-color", GREY);
    }
    if (!$(".icheckbox_square-blue").hasClass("checked")) {
        $('#chk-err').html('*');
        allClear = false;
    } else {
        $('#chk-err').html('');
    }
    return allClear;
}

function emailValidate(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
