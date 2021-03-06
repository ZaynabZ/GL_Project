<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value="resources/images/icons/favicon.ico" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="resources/css/util.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="resources/css/main.css" />">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="resources/images/login-img.jpg" alt="IMG">
				</div>

				<form:form class="login100-form validate-form"
							action="${pageContext.request.contextPath}/authenticate-user" 
							method="POST">
					<span class="login100-form-title">
						Member Login
					</span>
					<div>
								
						<!-- Check for login error -->
					
						<c:if test="${param.error != null}">
							
							<div class="alert alert-danger col-xs-offset-1 col-xs-10">
								Invalid username and password.
							</div>

						</c:if>
							
						<!-- Check for logout -->

						<c:if test="${param.logout != null}">
										
							<div class="alert alert-success col-xs-offset-1 col-xs-10">
								You have been logged out.
							</div>
						
						</c:if>
						
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="userName" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
                            Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="${pageContext.request.contextPath}/register/show-registration-form">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
							
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	

	
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<c:url value="resources/js/main.js" />"></script>

</body>
</html>
