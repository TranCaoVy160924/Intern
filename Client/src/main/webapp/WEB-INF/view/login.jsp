<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="resourcePath" value="${contextPath }/resources" />

<!doctype html>
<html lang="en">
<head>
<title>会員管理</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="${resourcePath }/css/login.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

</head>
<body class="img js-fullheight"
	style="background-image: url(${resourcePath }/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">会員管理</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<form action="${contextPath }/login" method="post"
							class="signin-form">
							<div class="form-group">
								<input type="text" name="username" class="form-control"
									placeholder="メール" required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" name="password"
									class="form-control" placeholder="パスワード" required> <span
									toggle="#password-field"></span>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<div class="form-group">
								<button type="submit"
									class="form-control btn btn-primary submit px-3">ログイン</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="${resourcePath}/js/jquery.min.js"></script>
	<script src="${resourcePath}/js/popper.js"></script>
	<script src="${resourcePath}/js/bootstrap.min.js"></script>
	<script src="${resourcePath}/js/main.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<c:if test="${not empty loginError}">
		<script>
			$(document).ready(function() {
				toastr.error('${loginError}', 'Login Fail');
			});
		</script>
	</c:if>
</body>
</html>

