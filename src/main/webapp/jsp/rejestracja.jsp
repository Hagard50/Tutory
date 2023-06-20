<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Rejestracja</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

	<div class="main">


		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h1 class="container"  style="font-size: 80px; color: green" ><i>Tutory</i> </h1>
						<h2 class="form-title">Sign up</h2>
						<form method="post" action="/register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Name" />
							</div>
							<div class="form-group">
								<label for="surname"><i
										class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="surname" id="surname" placeholder="Surname" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">

								<select name="stanowisko" style="font-size: 20px; color: darkblue">
									<option value="Student">Student</option>
									<option value="Teacher">Teacher</option>

								</select>
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="../images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="/jsp/login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="../js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
	var status = document.getElementById("status").value;
	if (status == "success"){
		swal("Congrats", "Account created successfully","success");
	}


</script>



</body>

</html>