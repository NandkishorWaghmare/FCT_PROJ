<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Monoton&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/898070658c.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/CSS/admin_css.css">
    <title>NB Finance | Contact Us</title>

    <style>
        /* Smooth Page Load */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Navbar Styling */
        .navbar {
            padding: 15px 20px;
            background: linear-gradient(to right, #3498db, #2c3e50);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: white;
        }

        /* Contact Section */
        .contact-container {
            max-width: 1000px;
            margin: 60px auto;
            padding: 40px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            background: white;
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .contact-left {
            flex: 1;
        }

        .contact-left img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            animation: slideInLeft 1s ease-in-out;
        }

        @keyframes slideInLeft {
            from { transform: translateX(-100px); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        .contact-right {
            flex: 1;
            text-align: center;
        }

        .contact-right h2 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .contact-right p {
            font-size: 16px;
            color: #555;
        }

        .contact-form {
            margin-top: 20px;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            transition: 0.3s;
        }

        .contact-form input:focus, .contact-form textarea:focus {
            border-color: #3498db;
            box-shadow: 0px 0px 8px rgba(52, 152, 219, 0.5);
        }

        .contact-form button {
            background: linear-gradient(to right, #3498db, #2c3e50);
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 8px;
            transition: 0.3s;
        }

        .contact-form button:hover {
            background: linear-gradient(to right, #2c3e50, #3498db);
        }

        /* Success Message Styling */
        .success-message {
            display: none;
            background: rgba(76, 175, 80, 0.9);
            color: white;
            padding: 15px;
            margin-top: 15px;
            border-radius: 8px;
            animation: slideIn 0.5s ease-in-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Address Section */
        .contact-details {
            margin-top: 20px;
        }

        .contact-details h3 {
            font-size: 22px;
            color: #2c3e50;
        }

        .contact-details p {
            font-size: 16px;
            color: #555;
        }
    </style>
</head>

<body>

    <!-- NB Finance Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand">NB Finance</a>
        </div>
    </nav>

    <!-- Contact Page -->
    <div class="contact-container">
        <div class="contact-left">
            <img src="/images/banner-1.jpeg" alt="Contact Us">
        </div>

        <div class="contact-right">
            <h2>Contact Us</h2>
            <p>Have any questions? Feel free to reach out!</p>

            <!-- Success Message -->
            <div id="successMessage" class="success-message">
                <i class="fas fa-check-circle"></i> Message Sent Successfully We Wiil Contact you Soon!
            </div>

            <form class="contact-form" action="ContactServlet" method="post" onsubmit="return showSuccessMessage(event)">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>

            <div class="contact-details">
                <h3>Our Address</h3>
                <p>NB Finance, 123 Business Street, Pune, India</p>
                <p><strong>Email:</strong> support@nbfinance.com</p>
                <p><strong>Phone:</strong> +91 7391804531</p>
            </div>
        </div>
    </div>

    <script>
        function showSuccessMessage(event) {
            event.preventDefault(); // Prevent form submission

            // Show success message
            var successMsg = document.getElementById("successMessage");
            successMsg.style.display = "block";

            // Reset form after delay
            setTimeout(function() {
                document.querySelector(".contact-form").reset();
                successMsg.style.display = "none";
            }, 3000);

            return false; // Prevent actual form submission
        }
    </script>

</body>
</html>
