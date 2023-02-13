<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="include/head.jsp"%>
<body>
	<!-- Responsive navbar-->
	<%@include file="include/navbar.jsp"%>

	<header class="py-5 bg-light border-bottom mb-4">
		<div class="container">
			<div class="text-center my-5">
				<h1 class="fw-bolder">Login</h1>
			</div>
		</div>
	</header>
	
	<div align="center">

		<div>
		<form method="post">
			<table>
				<tr align="center">
					<td colspan="6"><h4>로그인</h4></td>		
				</tr>
				<tr>
					<td>ID : </td>
					<td colspan="3"><input type="text" name="u_id"/></td>
				</tr>
				<tr>
					<td>PW : </td>
					<td colspan="3"><input type="text" name="u_pw"/></td>	
					<td colspan="2"><input type="submit" value="로그인"/></td>				
				</tr>
				<tr>
					<!-- <td colspan="1"><input type="text" value="ID찾기" onclick="location.href='${contextPath}/login/find_id'"/></td> -->
					<td colspan="1"><a href="${contextPath}/login/find_id">ID 찾기</a></td>
					<td colspan="1"><a href="${contextPath}/login/find_pw">PW 찾기</a></td>
					<td colspan="1"><a href="${contextPath}/register">회원가입</a></td>
				</tr>
			</table>
		</form>
		</div>
		
		<br><div>
			<!-- <div>
				<h5>카카오 로그인</h5>
			</div> -->
			<div>
			
			</div>
		</div>
		
	</div>



	<!-- Footer-->
	<%@include file="include/footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
