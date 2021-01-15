<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<!--===============================================================================================-->
<style>
	.error {
		color:red;
	}
</style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.jpg" alt="IMG">
				</div>

				<form:form action="${pageContext.request.contextPath}/register/process-registration-form" 
							class="login100-form validate-form"
							modelAttribute="crmUser">
					<span class="login100-form-title">
						Registeration Info
					</span>
					
					<div class="form-group">
						<div class="col-xs-15">
							<div>
								<c:if test="${registrationError != null}">
									<div class="alert alert-danger col-xs-offset-1 col-xs-10">
										${registrationError}
									</div>
								</c:if>
							</div>
						</div>
					</div>
					
					<!--Username-->
                    <div class="wrap-input100 validate-input" data-validate = "Username required">
						<form:errors path="userName" cssClass="error" />
						<form:input path="userName" class="input100" type="text" name="userName" placeholder="Username (*)" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<!--Password Field-->
					<div class="wrap-input100 validate-input" data-validate = "Password required">
						<form:errors path="password" cssClass="error" />
						<form:password path="password" class="input100" name="password" placeholder="Password (*)" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<!--Confirm Password-->
					<div class="wrap-input100 validate-input" data-validate = "Password required">
						<form:errors path="matchingPassword" cssClass="error" />
						<form:password class="input100" path="matchingPassword" name="password" placeholder="Password (*)" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
				
					</div>

					<!--First Name Field-->
                    <div class="wrap-input100 validate-input" data-validate = "First name required">
						<form:errors path="firstName" cssClass="error" />
						<form:input path="firstName" class="input100" type="text" name="firstName" placeholder="First Name (*)" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
                    </div>
					
					<!--Last Name-->
					<div class="wrap-input100 validate-input" data-validate = "Last Name required">
						<form:errors path="lastName" cssClass="error" />
						<form:input path="lastName" class="input100" type="text" name="lastName" placeholder="Last Name (*)" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<!--Email-->
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<form:errors path="email" cssClass="error" />
						<form:input path="email" class="input100" name="email" placeholder="Email (*)" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
					<!--Age-->
					<div class="wrap-input100 validate-input" data-validate = "Age should be greater">
						<form:input path="age" class="input100" name="age" placeholder="Age" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
                            Register
						</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>
</html>




