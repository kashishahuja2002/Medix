<html>
    <head>
        <title>Medix | Sign-up</title>

        <link rel="stylesheet" href="./assets/css/Style.css">
    </head>

<body>
    
    <!-- Header -->
    <div class="header">
        <img src="./assets/images/logo.png" alt="" width="5%" class="logo">
        <h1>Medix</h1>

        <img src="./assets/images/call.png" alt="" width="2.5%" class="call-icon">
        <h3 class="call"><a href="tel:9876543210">Call: 9876543210</a></h3>

        <img src="./assets/images/mail.jpg" alt="" width="3%" class="mail-icon">
        <h3 class="mail"><a href="mailto:medix@gmail.com">Email: medix@gmail.com</a></h3>
    </div>

    <!-- Sub-header -->
    <div class="sub-header">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About us</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="contact.jsp">Contact us</a></li>
            <li><a href="signup.jsp" class="login active">Sign-up</a></li>
        </ul>
    </div>

    <!-- Sign-up -->
    <div class="login">
        <h1>Sign-up</h1>

        <!-- Box -->
        <div class="box" style="height: 1100px;">
            <form action="signupCode.jsp" style="text-align: center;">
                <p>User Id</p>
                <input type="number" name="userId" placeholder="User Id" required> <br> <br>
                <p>Name</p>
                <input type="text" name="name" placeholder="Name" required> <br> <br>
                <p>Contact</p>
                <input type="tel" name="contact" placeholder="Contact" required> <br> <br>
                <p>Email</p>
                <input type="email" name="email" placeholder="Email" required> <br> <br>
                <p>Password</p>
                <input type="password" name="pass" placeholder="Password" required> <br> <br>
                <p>Gender</p>
                <select name="gender" class="select-style" required>
                    <option>M</option>
                    <option>F</option>
                </select> <br> <br>
                <p>DOB</p>
                <input type="date" name="dob" placeholder="DOB" required> <br> <br>
                <p>Age</p>
                <input type="number" name="age" placeholder="Age" required> <br> <br>
                <button type="submit" value="login">Sign-up</button>
                <br>
                <a href="login.jsp" style="color:black">Already have an account? Login</a>
            </form>
        </div>  
    
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="section">
            <img src="./assets/images/logo.png" alt="" width="40%" height="20%" class="logo">
            <h1 style="margin: 0; margin-top: 20px;">Medix</h1>
        </div>
        <div class="section">
            <h4>Links</h4>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About us</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="contact.jsp">Contact us</a></li>
            </ul>
        </div>
        <div class="section">
            <h4>Contact Us</h4>
            <ul>
                <li><a href="tel:9876543210">Call: 9876543210</a></li>
                <li><a href="mailto:medix@gmail.com">Email: medix@gmail.com</a></li>
                <li><p>Address: F-13, Ratlam Kothi, Geeta Bhawan, Indore, M.P.</p></li>
            </ul>
        </div>
        <div class="section">
            <h4>Handles</h4>
            <ul>
                <li><a href="https://www.facebook.com/login/" target="_blank">Facebook</a></li>
                <li><a href="https://twitter.com/?lang=en" target="_blank">Twitter</a></li>
                <li><a href="https://www.instagram.com/accounts/login/" target="_blank">Instagram</a></li>
                <li><a href="https://www.whatsapp.com/?lang=en" target="_blank">WhatsApp</a></li>
            </ul>
        </div>
    </div>

    <!-- Sub-footer -->
    <div class="sub-footer">
        <p>&copy; Medix. Designed and developed by Kashish Ahuja.</p>
    </div>

</body>
</html>