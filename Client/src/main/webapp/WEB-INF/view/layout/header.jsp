<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="resourcePath" value="${contextPath }/resources" />
<c:set var="searchString" value="${sessionScope.searchString }" />

<header class="topbar" data-navbarbg="skin5">
	<nav class="navbar top-navbar navbar-expand-md navbar-dark">
		<div class="navbar-collapse collapse row" id="navbarSupportedContent"
			data-navbarbg="skin5">
			<div class="col-2"></div>
			<div class="col-2 ms-5 box-title">${param.pageHeader }</div>
			<div class="col-4"></div>
			<!-- ============================================================== -->
			<!-- Right side toggle and nav items -->
			<!-- ============================================================== -->
			<ul class="navbar-nav ms-auto d-flex col-2 ms-5">
				<li class="text-center p-20 upgrade-btn"><a
					href="${contextPath }/logout" class="btn d-grid" target="_blank">ログアウト</a></li>
			</ul>
		</div>
	</nav>
</header>