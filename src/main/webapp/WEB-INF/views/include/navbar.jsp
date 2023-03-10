<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="${contextPath}">Jio Board</a>
		
		<div>
		<c:choose>
			<c:when test="${sessionScope.u_id==null }">
			<a href="${contextPath }/login"><label>로그인</label></a>
			</c:when>
			<c:when test="${sessionScope.u_id!=null }">
			<a style="color: white;">${sessionScope.u_id }님 환영합니다. </a>
			<a href="${contextPath}/logout"> <h3 class="box-title">로그아웃</h3></a>
			</c:when>		
		</c:choose>
		</div>
		
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="${contextPath}">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="${contextPath}/board">Board</a></li>
				<li class="nav-item"><a class="nav-link" href="${contextPath}/mypage">MyPage</a></li>
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="${contextPath}/register">Sign-up</a></li>
			</ul>
		</div>
	</div>
</nav>