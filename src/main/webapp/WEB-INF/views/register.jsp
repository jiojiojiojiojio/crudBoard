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
				<h1 class="fw-bolder">Sign-up</h1>
			</div>
		</div>	
	</header>

	<div align="center">
		<div class="col-lg-6">
			<div align="center" style="background-color: #353A3F;">
				<p style="color: white;">회원가입</p>
			</div><br />
			
		<form action="${contextPath}/register" method="post">
			<div class="card">
				<div class="card-body">
					<div align="left">
						<div class="mb-3">
  							<label for="exampleFormControlInput1" class="form-label">ID </label><label style="font-size: 5pt; color: gray;"> (필수)</label>
  							<input type="text" class="form-control" name="u_id" placeholder="ID를 입력해주세요*"/>
						</div>
						
						<div class="mb-3">
  							<label for="exampleFormControlInput1" class="form-label">PW </label><label style="font-size: 5pt; color: gray;"> (필수)</label>
  							<input type="text" class="form-control" name="u_pw" placeholder="비밀번호를 입력해주세요*"/>
						</div>
						
						<div class="mb-3">
  							<label for="exampleFormControlInput1" class="form-label">이름 </label><label style="font-size: 5pt; color: gray;"> (필수)</label>
  							<input type="text" class="form-control" name="u_name" placeholder="이름을 입력해주세요*"/>
						</div>
						
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">생년월일 </label><label style="font-size: 5pt; color: gray;"> (선택)</label>
							<input type="text" class="form-control" name="u_birth" placeholder="ex)20230101"/>
						</div>

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">성별 </label><label style="font-size: 5pt; color: gray;"> (선택)</label>
							<select class="form-select form-select-sm" aria-label=".form-select-sm example" name="u_sex">
								<option selected>비공개</option>
								<option value="1">여성</option>
								<option value="2">남성</option>
							</select>
						</div>
						
						<div class="mb-3">
  							<label for="exampleFormControlInput1" class="form-label">전화번호 </label><label style="font-size: 5pt; color: gray;"> (필수)</label>
  							<input type="text" class="form-control" name="u_name" placeholder="ex)01012345678*"/>
						</div>		
						
						<div class="mb-3">
  							<label for="exampleFormControlInput1" class="form-label">주소 </label><label style="font-size: 5pt; color: gray;"> (필수)</label>
  							<input type="text" class="form-control" name="u_address" placeholder="주소를 입력해주세요*"/>
						</div>				

						<div class="mb-3">
  							<label for="formFileMultiple" class="form-label">프로필 사진</label><label style="font-size: 5pt; color: gray;"> (선택)</label>
  							<input class="form-control" type="file" name="u_profile" multiple>
						</div>
																							
					</div>
				</div>
			
			</div>
			
			<!-- 가입 버튼 -->
			<br/>
				<div>
					<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/'"> 취소 </button>
					<button type="submit" class="btn btn-dark"> 가입 </button>
				</div><br/>
		</form>	
			
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