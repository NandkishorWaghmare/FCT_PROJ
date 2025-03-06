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
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <title>NBFC Software</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/stylee.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <link rel="stylesheet" href="/CSS/user-login.css">
    <link rel="stylesheet" href="/CSS/loader.css">
    <style>
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
			height: 60px;
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
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Loans</a>
                        <ul class="dropdown-menu" aria-labelledby="servicesDropdown">
                            <li class="dropdown-item"><a href="UserLogin">Home Loan</a></li>
                            <li class="dropdown-item"><a href="UserLogin">Personal Loan</a></li>
                            <li class="dropdown-item"><a href="UserLogin">Business Loan</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="UserLogin">Deposits</a></li>
                    <li class="nav-item"><a class="nav-link" href="Calculator">Calculator</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <a href="UserLogin" class="btn btn-info my-2 my-sm-0 text-uppercase mr-2">Login</a>
                    <a href="UserRegister" class="btn btn-info my-2 my-sm-0 text-uppercase">Register</a>
                </form>
            </div>
        </div>
    </nav>

    <header>
        <h1>NB_Finance </h1>
    </header>
	
	
    <section class="admin-login">
        <div class="container">
            <div class="left">
                <div class="login-form">
                    <img src="/images/graph.svg" alt="" srcset="" class="bg-graph">
                    <h1 class="title">Log into your account</h1>
                    <p class="smsg">Enter your registered Email address and Password to login.</p>
                    <div class="message-wrap">
                        <div class="message" id="message"></div>
                    </div>
                    <form action="checkEmailPass" method="post" class="form" id="customer-login-form">
                        <div class="input">
                            <label for="email">Email</label>
                            <i class="fa-regular fa-envelope" for="email"></i>
                            <input type="text" name="email" id="email" class="email" autocomplete="nope">
                        </div>
                        <div class="input">
                            <label for="password">Password</label>
                            <i class="fa-solid fa-key" for="password"></i>
                            <input type="password" name="password" id="password" class="password">
                        </div>

                        <a href="forgotPassword" class="forgot-link">Forgot Password?</a>
                        <button type="button" class="login-submit" onclick="validate()">Login </button>
                    </form>
                    <div class="register-div">
                        <p class="splitter">- OR -</p>
                        <p>Don't have account? </p>
                        <a href="UserRegister" class="register">Register Now</a>
                    </div>
                </div>
            </div>
            <div class="right">
                <h3 class="upper-title">Nice to see you again</h3>
                <h1 class="wback">Welcome back :)</h1>
                <img src="/images/customer-svg2.svg" alt="" srcset="">
                <img src="/images/blob-1.svg" alt="" srcset="">
                <p>Don't have account? </p>
                <a href="/"><button class="register">Register Now</button></a>
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
            $('#message').fadeOut();
        }

        function validate() {
            var email = $('#email');
            var password = $('#password');

            var form = $('#customer-login-form');

            var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

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

    </script>
</body>

</html>