<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="include/head.jsp"%>

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
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container" align="center">
		<div class="row">
			<div class="col-lg-9">
				<form action="${contextPath}/mypage" method="post">
					<div class="card">
						<div class="card-body">
							<div align="center">
								<label style="font-size: 15pt;"><b>회원 정보 수정</b></label><hr>
							</div>
							
							<!-- 프로필 정보 -->
							<div class="col-lg-5">
								<img class="card-img-top"
								src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." name="u_profile"/>
								<input class="form-control" type="file" name="u_profile" multiple>
							</div><br/>
							
							<!-- 이름 -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">이름 :</label>
								<div class="col-sm-10">
									<input type="text" readonly class="form-control-plaintext"
										id="staticEmail" value="김오리">
								</div>
							</div>
							
							<!-- ID -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">ID :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="u_id">
								</div>
							</div>
							
							<!-- PW -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">PW :</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="u_pw">
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
									<input type="text" class="form-control" id="u_number">
								</div>
							</div>
							
							<!-- 주소 -->
							<div class="mb-3 row">
								<label class="col-sm-2 col-form-label">주소 :</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="u_address">
								</div>
							</div>
						</div>
					</div>
					
					<!-- 버튼 -->
					<br/>
					<div>
						<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/'"> 취소 </button>
						<button type="submit" class="btn btn-dark"> 수정 완료 </button>
						<button type="button" class="btn btn-danger"> 회원 탈퇴 </button>
					</div><br/>
										
				</form>

			</div>
			
			<!-- side bar -->
			<%@ include file="include/mypage_sidebar.jsp"%>

		</div>
	</div>
	<br />


	<!-- Footer-->
	<%@include file="include/footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>