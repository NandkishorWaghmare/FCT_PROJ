<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Monoton&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/898070658c.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <title>NB_Finance|Admin_login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/stylee.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <link rel="stylesheet" href="/CSS/admin-login.css">
    <link rel="stylesheet" href="/CSS/loader.css">
    <style>
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
			height:60px;
            z-index: 1000;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 0.5rem 1rem;
        }

        body {
            padding-top: 60px;
        }

        .navbar-brand {
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            font-size: 1.25rem;
        }

        .navbar-nav .nav-link {
            color: #333;
            padding: 0.5rem 1rem;
        }

        .navbar-nav .nav-link:hover {
            color: #007bff;
        }

        .btn-info {
            background-color: #007bff;
            border-color: #007bff;
            padding: 0.375rem 0.75rem;
        }

        .btn-info:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
    </style>
</head>

<body>
	<div id="entire-page-loader">
		<img src="/images/loaderImage.png">
		<div class="inside">
			<span style="--i:0;"></span>
			<span style="--i:1;"></span>
			<span style="--i:2;"></span>
			<span style="--i:3;"></span>
			<span style="--i:4;"></span>
			<span style="--i:5;"></span>
			<span style="--i:6;"></span>
		</div>
	</div>
	<script>
		$(window).on('load', function(){
		   $('#entire-page-loader').hide();
		});
		
	</script>

    <nav class="navbar navbar-expand-lg navbar-light" id="gtco-main-nav">
        <div class="container"><a class="navbar-brand">NB Finance</a>
            <button class="navbar-toggler" data-target="#my-nav" onclick="myFunction(this)" data-toggle="collapse"><span
                    class="bar1"></span> <span class="bar2"></span> <span class="bar3"></span></button>
            <div id="my-nav" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
                   
                   
                    <li class="nav-item"><a class="nav-link" href="Calculator">Calculator</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                </ul>
               
            </div>
        </div>
    </nav>

    <header>
        <h1>NB <img src="/images/graph-icon.svg" alt="" srcset=""> Finance </h1>
    </header>
    <section class="admin-login">
        <div class="container">
            <div class="left">
                <img src="/images/admin-analytics.svg" alt="" srcset="">
                <img src="/images/blob-1.svg" alt="" srcset="">
            </div>
            <div class="right">
                <div class="login-form">
                    <img src="/images/graph.svg" alt="" srcset="" class="bg-graph">
                    <h1 class="title">Login to Admin Dashboard</h1>
                    <div class="message-wrap">
                        <div class="message" id="message"></div>
                    </div>
                    <form action="checkinfo" method="post" class="form" id="customer-login-form">
                        <div class="input">
                            <label for="aemail">Email</label>
                            <i class="fa-regular fa-envelope" for="aemail"></i>
                            <input type="text" name="aemail" id="aemail" class="aemail" autocomplete="nope">
                        </div>
                        <div class="input">
                            <label for="password">Password</label>
                            <i class="fa-solid fa-key" for="password"></i>
                            <input type="password" name="apass" id="password" class="password">
                        </div>

                        <a href="" class="forgot-link">Forgot Password?</a>
                        <button type="button" class="login-submit" onclick="validate()">Login </button>
                    </form>
                </div>
            </div>
        </div>
    </section>


    <script>
        document.querySelectorAll('input').forEach(input => {
            input.addEventListener('focus', () => {
                input.labels.forEach(label => {
                    label.classList.add('focused');
                })
            })

            input.addEventListener('blur', () => {
                if (input.value == "") {
                    input.labels.forEach(label => {
                        label.classList.remove('focused');
                    });
                }
            })
        });

        function show_msg(msg) {
            var cross = '<i class="fa-regular fa-circle-xmark" onclick="msg_fade()"></i>';
            var msg_box = $('#message');
            msg_box.html(msg + cross);
            msg_box.fadeIn();
            setTimeout(() => {
                msg_box.fadeOut();
            }, 5000);
        }

        function msg_fade() {
            console.log(this);
            $('#message').fadeOut();
        }

        function validate() {
            var email = $('#aemail');
            var password = $('#password');

            var form = $('#customer-login-form');

            var validRegex = /^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$/;

            if (email.val() == '') {
                show_msg("Please Enter Your E-Mail ");
                email.focus();
                return false;
            }            
            else if(!email.val().match(validRegex)){
                show_msg("Please Enter Valid E-Mail ");
                email.focus();
                return false;
            }
            else if (password.val() == '') {
                show_msg("Please Enter Your Password ");
                password.focus();
                return false;
            }

            form.submit();
            return true;

        }

        show_msg("This is sample message.");
    </script>
</body>

</html>