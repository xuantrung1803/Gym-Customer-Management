<!DOCTYPE html>
<html xmlns:th="https://www.thymeleaf.org">
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
h1 {
	color: #868787 font-family: sans-serfif;
}
</style>

<body>
	<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		<div class="card card0 border-0">
			<div class="row d-flex">
				<div class="col-lg-6">
					<div class="card1 pb-5">
						<div class="row">
							<img src="https://i.imgur.com/CXQmsmF.png" class="logo">
						</div>
						<div class="row px-3 justify-content-center mt-4 mb-5 border-line">
							<img src="resources/images/trai.jpg" class="image">
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card2 card border-0 px-4 py-5">
						<div class="row mb-4 px-3">
							<a style="text-decoration none" href="?language=en"><img width="30px" height="30px"
								src="resources/img/english.png"> English</a> &nbsp | &nbsp<a style="text-decoration none"
								href="?language=vi"><img width="30px" height="30px"
								src="resources/img/vietnam.png"> VietNamese </a>

						</div>
						<div class="text-center">
							<h2 class="fw-bold mb-2 text-uppercase">LOGIN</h2>
						</div>
						<br>
						<div class="row px-4 mb-3">
							<div class="line"></div>
							<div class="line"></div>
						</div>
						<br>
						<form:form action="login" modelAttribute="account" id="form">

							<div class="row px-3">
								<label class="mb-1"> <spring:message code="EmailAddress"
										text="Default Username: " />
								</label>
								<input name="userName" type="text" placeholder="Enter a valid email address" />
								<form:errors path="userName" style="color: red" />
							</div>
							<div class="row px-3">
								<label class="mb-1"> <spring:message code="Password"
										text="Default Password: " />
								</label>
								<input name="password" type="password" placeholder="Enter password" />
								<form:errors path="password" style="color: red"/>
							</div>


							<div class="row px-3 mb-4">
								<div
									class="custom-control custom-checkbox custom-control-inline">
									<input id="chk1" type="checkbox" name="chk"
										class="custom-control-input"> <label for="chk1"
										class="custom-control-label text-sm"> <spring:message
											code="Rememberme" text="Default Remember me: " /></label>
								</div>
								<a href="#" class="ml-auto mb-0 text-sm"><spring:message
										code="Forgetpassword" text="Default Forgot Password: " /></a>
							</div>

							<div class="g-recaptcha"
								data-sitekey="6LcqtQcjAAAAACVzyTequYYaQx2XdkHlVLaD8P6M"></div>
							<div id="error1"></div>
							<br>

							<div class="row mb-3 px-3">
								<button type="submit" class="btn btn-blue text-center">
									<spring:message code="Login" text="Default Login: " />
								</button>
							</div>
							<div class="row mb-3 px-3">
								<p>
								<h6 style="color: red">${error}</h6>
								</p>
							</div>
							<script src="https://www.google.com/recaptcha/api.js" async defer></script>
							<script>
								window.onload = function() {
									let isValid = false;
									const form = document
											.getElementById("form");
									const error1 = document
											.getElementById("error1");

									form
											.addEventListener(
													"submit",
													function(event) {
														event.preventDefault();
														const response = grecaptcha
																.getResponse();
														if (response) {
															form.submit();
														} else {
															error1.innerHTML = "Xác thực Captcha thất bại. Hãy thử lại !!";
														}

													});
								}
							</script>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>

