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
    <title>Nb_finance</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/stylee.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <link rel="stylesheet" href="/CSS/customer-register.css">
    <link rel="stylesheet" href="/CSS/calender.css">
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
        }

        body {
            padding-top: 70px;
        }

        .navbar-brand {
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
        }

        .navbar-nav .nav-link {
            color: #333;
        }

        .navbar-nav .nav-link:hover {
            color: #007bff;
        }

        .btn-info {
            background-color: #007bff;
            border-color: #007bff;
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
        <h1>NB <img src="/images/graph-icon.svg" alt="" srcset=""> Finance</h1>
    </header>
    <section class="customer-register">
        <div class="container">
            <div class="left">
                <div class="register-form">
                    <h1 class="title">Create Your Account</h1>
                    <p class="smsg">Experience a hassle-free application process in just few steps.</p>
                    <div class="message-wrap">
                        <div class="message" id="message"></div>
                    </div>
                    <form action="checkUser" method="post" class="form" id="customer-registration-form">
                        <div class="input">
                            <label for="fullname">Full Name</label>
                            <i class="fa-regular fa-user" for="fullname"></i>
                            <input type="text" name="fullname" id="fullname" class="fullname" autocomplete="nope">
                        </div>
                        <div class="input">
                            <label for="email">Email</label>
                            <i class="fa-regular fa-envelope" for="email"></i>
                            <input type="text" name="email" id="email" class="email" autocomplete="nope">
                        </div>
                        <div class="input">
                            <label for="phoneno">Mobile</label>
                            <i class="fa-solid fa-phone" for="phoneno"></i>
                            <span>+91 - </span>
                            <input type="number" name="contact" id="phoneno" class="phoneno" autocomplete="nope">
                        </div>
                        <div class="dob-input">
                            <div id="date_picker">
                                <div id="date_picker_input">
                                    <label><i class="fa-solid fa-calendar-days"></i> Date of Birth</label>
                                    <input type="text" id="date" name="dob" class="onFocus" readonly />
                                    <p class="up-down-icon"><i class="fa-solid fa-caret-down"></i></p>
                                </div>
                                <div id="date_picker_calendar" class="hidden">
                                    <div id="calendar_header">
                                        <div class="back-btns">
                                            <button type="button" class="cal-btn yr-back"> << </button>
                                            <button type="button" class="cal-btn back"><</button>
                                        </div>
                                        <span></span>
                                        <div class="front-btns">
                                            <button type="button" class="cal-btn front">></button>
                                            <button type="button" class="cal-btn yr-front">>></button>
                                        </div>
                                    </div>
                                    <div id="cal_wrapper">
                                        <div id="cal_days"></div>
                                        <div id="calendar_main"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="gender-input">
                            <i class="fa-solid fa-venus-mars"></i>
                            <p class="gender-label"> Gender </p>
                            <input type="radio" name="gender" id="male" class="male" value="Male">
                            <label for="male"><i class="fa-solid fa-mars"></i> Male</label>
                            <input type="radio" name="gender" id="female" class="female" value="Female">
                            <label for="female"><i class="fa-solid fa-venus"></i> Female</label>
                        </div>
                        <div class="input">
                            <label for="address">Address</label><i class="fa-solid fa-location-dot"></i>
                            <input type="text" name="address" id="address" class="address" autocomplete="nope">
                        </div>
                        <div class="input">
                            <label for="password">Password</label>
                            <i class="fa-solid fa-key" for="password"></i>
                            <input type="password" name="password" id="password" class="password">
                        </div>
                        <div class="input">
                            <label for="cpassword">Confirm Password</label>
                            <i class="fa-solid fa-key" for="cpassword"></i>
                            <input type="password" name="cpassword" id="cpassword" class="cpassword">
                        </div>

                        <div class="checkbox-input">
                            <input type="checkbox" name="terms" value="terms" id="terms">
                            <label for="terms">I agree to the <span style="color: var(--link-color);">Terms and
                                    Conditions.</span></label>
                        </div>
                        <button type="button" class="register-submit" onclick="validate()">Register</button>
                    </form>
                    <div class="login-div">
                        <p class="splitter">- OR -</p>
                        <p>Already have account? </p>
                        <a href="checkEmailPass"><button class="login">Login Now</button></a>
                    </div>
                </div>
            </div>
            <div class="right">
                <h1 class="wback">Welcome to </h1>
                <h1 class="logo">NB <img src="/images/graph-icon.svg" alt="" srcset=""> Finance </h1>
                <h3 class="sub-heading">Thank you for choosing us to meet your financial needs.</h3>
                <img src="/images/main-image.png" alt="" srcset="">
                <img src="/images/blob-1.svg" alt="" srcset="">
                <p>Already have account? </p>
                <a href="UserLogin"><button class="login">Login Now</button></a>
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
            $(window).scrollTop(0);
            msg_box.fadeIn();
            setTimeout(() => {
                msg_box.fadeOut();
            }, 5000);
        }

        function msg_fade() {
            $('#message').fadeOut();
        }

        function gender_focus() {
            $('.gender-input').addClass("active-border");
            setTimeout(() => {
                $('.gender-input').removeClass("active-border");
            }, 5000);
        }

        function validate() {
            var fullname = $('#fullname');
            var email = $('#email');
            var phone = $('#phoneno');
            var gender = $('input[name="gender"]:checked');
            var address = $("#address");
            var password = $('#password');
            var cpassword = $('#cpassword');
            var terms = $('#terms');

            var form = $('#customer-registration-form');

            var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

            if (fullname.val() == '') {
                show_msg("Please Enter Your Full Name.");
                fullname.focus();
                return false;
            }
            else if (email.val() == '') {
                show_msg("Please Enter Your E-Mail.");
                email.focus();
                return false;
            }
            else if (!email.val().match(validRegex)) {
                show_msg("Please Enter Valid E-Mail.");
                email.focus();
                return false;
            }
            else if (phone.val().length != 10) {
                show_msg("Please Enter Valid Mobile No. ");
                phone.focus();
                return false;
            }
            else if (gender.val() == undefined) {
                show_msg("Please Select Your Gender.");
                gender_focus();
                return false;
            }
            else if (password.val() == '') {
                show_msg("Please Enter Your Password.");
                password.focus();
                return false;
            }
            else if (cpassword.val() == '') {
                show_msg("Please Enter Your Confirm Password.");
                cpassword.focus();
                return false;
            }
            else if (password.val() != cpassword.val()) {
                show_msg("Password and Confirm Password must be same.");
                password.focus();
                return false;
            }
            else if (!terms.is(":checked")) {
                show_msg("Please agree to the terms & conditions.")
                return false;
            }

            form.submit();
            return true;
        }

    </script>

    <script src="/CSS/calender.js"></script>

</body>

</html>