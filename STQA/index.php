<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>COVID-19 Information Website</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styles */
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            color: #333;
            padding: 20px;
        }

        /* Header Styles */
        header {
            background: #009688;
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        /* Button Styles */
        .auth-buttons {
            text-align: center;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            background: #2196F3;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s;
        }

        .btn:hover {
            background: #0b7dda;
        }

        /* About Us Section Styles */
        .about-us {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .about-us h2,
        .about-us h3 {
            color: #009688;
        }

        .about-us ul {
            list-style-type: disc;
            margin-left: 20px;
        }

        /* Footer Styles */
        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background: #009688;
            color: white;
            border-radius: 5px;
        }
    </style>
</head>

<body>

    <!-- Welcome Info Section -->
    <header>
        <h1>Welcome to the COVID-19 Information Hub</h1>
        <p>Your one-stop source for up-to-date information on COVID-19, including safety tips, statistics, and guidance.</p>
    </header>

    <!-- Registration and Login Buttons -->
    <section class="auth-buttons">
        <a href="register.html" class="btn">Register</a>
        <a href="login.html" class="btn">Login</a>
    </section>

    <!-- About Us Section -->
    <section class="about-us">
        <h2>About Us</h2>
        <p>We are dedicated to providing reliable and updated information on COVID-19. Our goal is to raise awareness, share essential resources, and support the community in staying informed and safe during the pandemic.</p>
        <h3>Our Mission</h3>
        <p>Our mission is to empower individuals and communities with the knowledge needed to protect themselves and others. We aim to dispel misinformation and promote understanding of COVID-19 through credible sources and expert guidance.</p>

        <h3>What We Offer</h3>
        <ul>
            <li><strong>Latest Statistics:</strong> Get real-time data on COVID-19 cases, recoveries, and vaccination progress globally and locally.</li>
            <li><strong>Safety Guidelines:</strong> Access official guidelines from health authorities to stay safe, including social distancing and hygiene practices.</li>
            <li><strong>Support Resources:</strong> Find links to mental health support, community services, and other resources to help you and your loved ones.</li>
        </ul>

        <h3>Join Our Community</h3>
        <p>We encourage everyone to participate in our discussions and share experiences. Together, we can navigate these challenging times with resilience and solidarity.</p>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 COVID-19 Information Hub. All rights reserved.</p>
    </footer>

</body>

</html>