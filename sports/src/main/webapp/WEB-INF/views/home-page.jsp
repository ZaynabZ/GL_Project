<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
	<head>
		<title>Sports Project</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	</head>
	
	<body>
		<div class="container-fluid">
			<div class="containet">
			<div class="row">
				<div class="col-md-12">
					<h2>Welcome to the home page <security:authentication property="principal.userName"/></h2>
					<span>Your most accurate guide through the sport services in the city of Al-Hoceima.</span>
					
				</div>
			</div>
		</div>
		
		 <div class="container">
                <div class="three_box">
                    <div class="row">
                        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 pppp">
                            <div class="black_box">
                                <h3><a href="#">Regular Activity</a></h3>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 pppp">
                            <div class="black_box yellow_box">
                                <h3><a href="#"></a>Irregular Activity</h3>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 pppp">
                            <div class="black_box">
                                <h3><a href="<c:url value="/users/coaches"/>">Coachs</a></h3>
                            </div>
                        </div>
                        <security:authorize access="hasRole('COACH')">
                        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 pppp">
                            <div class="black_box">
                                <h3><a href="#">Coach's space</a></h3>
                            </div>
                        </div>
                        </security:authorize>
                    </div>
                </div>
            </div>
		<hr>
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<input type="submit" value="Logout" class="btn btn-primary" />
		</form:form>
		</div>
		
	</body>
</html>