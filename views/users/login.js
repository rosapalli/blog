$(document).ready(function () {
    $("#loginForm").validate({
        rules: {
            password: {
                required: true
            },
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            password: {
                required: "Please enter your password"
            },
            email: {
                required: "Please enter your email address"
            }
        }
    });
    $('#loginForm').submit(function (e) {
        e.preventDefault();

        var email = $('input#email').val();
        var password = $('input#password').val();

        var dataArray = {
            'email': email,
            'password': password,
        };

        $.ajax({
            type: 'POST',
            url: 'index.php?controller=user&action=checkCredentials',
            data: {u_data: JSON.stringify(dataArray)},
            success: function (response) {
                content = $(response);
                var routes = content[37].innerHTML;
                console.log(routes);

                if (routes === "1") {
                    $("#loginForm").unbind().submit();
                } else {
                    $("#error").fadeIn();
                    $("#error").html("Wrong Credentials. Try again");
                    $("#error").fadeOut(2000);
                }
            }
        });
    });
    return false;
});
