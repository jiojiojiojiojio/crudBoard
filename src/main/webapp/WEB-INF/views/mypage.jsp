<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="include/head.jsp"%>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	function remove_user() {
		if(window.confirm("탈퇴하시겠습니까?")){
			location.href="${contextPath}/remove_user";
		}
	}
</script>

<body>
	<!-- Responsive navbar-->
	<%@include file="include/navbar.jsp"%>

	<header class="py-5 bg-light border-bottom mb-3">
		<div class="container">
			<div class="text-center my-3">
				<h1 class="fw-bolder">MyPage</h1>
			</div>
		</div>
	</header>
	
	<c:choose>
	<c:when test="${sessionScope.u_id!=null }">	
	<div class="container" align="center">
		<div class="row">
			<div class="col-lg-9">
				<!-- <form action="${contextPath}/mypage/user_update" method="post"> -->
				<form action="${contextPath}/mypage/user_info" method="post">
					<div class="card">
						<div class="card-body">
							<div align="center">
								<label style="font-size: 15pt;"><b>회원 정보 수정</b></label><hr>
							</div>							
							
							<!-- 프로필 정보 -->
							<div class="col-lg-5">
								<img class="card-img-top"
								src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." name="u_profile"/>
								<input class="form-control" type="file" name="u_profile" value="${mypageDTO.u_profile }" multiple>
							</div><br/>
							
							<!-- 이름 -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">이름 :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control"
										name="u_name" id="staticEmail" value="${mypageDTO.u_name }" readonly="readonly">
								</div>
							</div>							

							<!-- ID -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">ID :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="u_id" id="u_id" value="${mypageDTO.u_id }">
								</div>
							</div>
													
							<!-- PW -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">PW :</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" name="u_pw" id="u_pw" value="${mypageDTO.u_pw }">
								</div>
							</div>
							
							<!-- 성별 -->
							<!-- <div class="mb-3 row">
							<label class="form-label">성별 </label>
							<select class="form-select form-select-sm" aria-label=".form-select-sm example" name="u_sex">
								<option selected>비공개</option>
								<option value="1">여성</option>
								<option value="2">남성</option>
							</select>
							</div> -->
							
							<!-- 전화번호 -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">전화번호 :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="u_number" id="u_number" value="${mypageDTO.u_number }">
								</div>
							</div>
							
							<!-- 주소 -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">주소 :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="u_address" id="u_address" value="${mypageDTO.u_address }">
								</div>
							</div>
						</div>
					</div>
					
					<!-- 버튼 -->
					<br/>
					<div>
						<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/'"> 취소 </button>
						<button type="submit" class="btn btn-dark"> 수정 완료 </button>
						<button type="button" class="btn btn-danger" onclick="remove_user();"> 회원 탈퇴 </button>
					</div><br/>
										
				</form>
			</div>
			
			<!-- side bar -->
			<%@ include file="include/mypage_sidebar.jsp"%>

		</div>
	</div>
	<br />
	</c:when>
	
	<c:when test="${sessionScope.u_id==null }">
		<div align="center">
			<span><a style="font-size: 20pt;">회원 정보가 없습니다.</a></span><br/>
			<span><a style="font-size: 20pt;">로그인 또는 회원가입을하고 즐겨보세요^^</a></span>
		</div><br/>
		<div align="center">
			<button type="button" class="btn btn-dark"
					onclick="location.href='${contextPath}/login'">로그인</button>
			<button type="button" class="btn btn-dark"
					onclick="location.href='${contextPath}/register'">회원가입</button>
		</div><br/>
	</c:when>
	</c:choose>

	<!-- Footer-->
	<%@include file="include/footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>