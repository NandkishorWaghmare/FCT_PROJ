<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
<script src="https://kit.fontawesome.com/898070658c.js"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<script src="/CSS/chart-utils.min.js"></script>
<script src="/CSS/adminJS.js"></script>

<link rel="stylesheet" href="/CSS/admin_css.css">
<link rel="stylesheet" href="/CSS/calender.css">
<link rel="stylesheet" href="/CSS/loader.css">

<title>NB_Finance |Admin Dashboard</title>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
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
<nav class="navbar navbar-expand-lg navbar-light bg-light bg-transparent" id="gtco-main-nav">
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
                <li class="nav-item"><a class="nav-link" href="cal">Calculator</a></li>
                <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
            </ul>
            
<form class="form-inline my-2 my-lg-0">
    <a href="UserLogin" class="btn btn-info my-2 my-sm-0 text-uppercase mr-2">Login</a>
    <a href="UserRegister" class="btn btn-info my-2 my-sm-0 text-uppercase">Register</a>
</form>


            
        </div>
    </div>
</nav>

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




				<div class="content emi-calculator">
					<div id="section-name">
						<h1>EMI Calculator ></h1>
					</div>
					<div id="emi-calculator-div">
						<div class="left">
							<div class="loan-input loan-type-div">
								<label for="loan-type">Loan Type</label>
								<div class="select-container">
									<div class="select" onclick="select_loan_type()">
										<input type="text" name="loan-type" id="loan-type"
											placeholder="Select" onfocus="this.blur();">
									</div>
									<div class="option-container">
										<div class="option">
											<label> Home Loan </label>
										</div>
										<div class="option">
											<label> Car Loan</label>
										</div>
										<div class="option">
											<label>Personal Loan</label>
										</div>
									</div>
								</div>
							</div>
							<div class="loan-input loan-amount-div">
								<label for="loan-amount">Loan Amount (&#8377) </label> <input
									type="number" name="loan-amount" id="loan-amount"
									value="100000" min="10000" max="1000000"
									oninput="amount_change(this.value)"> <input
									type="range" name="loan-amount-slider" id="loan-amount-slider"
									value="100000" min="10000" max="1000000"
									oninput="amount_change(this.value)">
							</div>
							<div class="loan-input loan-interest-rate-div">
								<label for="loan-interest-rate">Interest Rate % (p.a)</label> <input
									type="number" name="loan-interest-rate" id="loan-interest-rate"
									value=36 onkeyup="calculateEMI()" disabled>
							</div>
							<div class="loan-input loan-tenure-div">
								<label for="loan-tenure">Loan Tenure (Yrs)</label> <input
									type="number" name="loan-tenure" id="loan-tenure"
									oninput="yr_change(this.value)" value="5" min="1" max="32">
								<input type="range" name="loan-tenure-slider"
									id="loan-tenure-slider" oninput="yr_change(this.value)"
									value="5" min="1" max="32">
							</div>
						</div>
						<div class="right">
							<div id="interest-pie-chart" class="interest-pie-chart">
								<canvas id="interest-pie-chart-canvas"></canvas>
							</div>
							<div class="interest-details">
								<div class="legends">
									<p>
										<span style="background-color: rgb(0, 208, 0);"></span> Total
										Interest
									</p>
									<p>
										<span style="background-color: rgb(225, 225, 225);"></span>
										Principal Amount
									</p>
								</div>
								<div class="counts">
									<div>
										<p>Monthly EMI :</p>
										<p id="monthly-emi-box"></p>
									</div>
									<div>
										<p>Total Interest :</p>
										<p id="total-interest-box"></p>
									</div>
									<div>
										<p>Total Amount :</p>
										<p id="total-amount-box"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
	            let selectContainer = document.querySelector(".loan-type-div .select-container");
	            let select = document.querySelector(".loan-type-div .select-container .select");
	            let input = document.getElementById("loan-type");
	            let options = document.querySelectorAll(".loan-type-div .select-container .option");
	            options.forEach((e) => {
	                e.addEventListener("click", () => {
	                    input.value = e.innerText;
	                    loan_type_changed(input.value);
	                    calculateEMI();
	                    selectContainer.classList.remove("active");
	                    options.forEach((en) => {
	                        en.classList.remove("selected");
	                    });
	                    e.classList.add("selected");
	                });
	            });
	            var pie_chart = show_data([50, 50]);
	
	            calculateEMI();</script>

	</section>

</body>

</html>
