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
				<h1 class="fw-bolder">Board Write</h1>
			</div>
		</div>
	</header>
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->
	
	<div align="center">
		<div class="col-lg-10">
			<div align="center" style="background-color: #353A3F;">
				<p style="color: white;">게시글 수정</p>
			</div><br/>

			<form method="post">
				<div class="card">
					<div class="card-body">
						<div align="left">
							<div>
								<hr>
								작성자 : <input type="text" name="u_id" value="${board.u_id }" style="border: none;"
									readonly="readonly" /><br />
								<hr>
							</div>

							<div>
								제목 : <input type="text" name="b_title" value="${board.b_title }" size="100"
									placeholder="제목을 입력해주세요." /><br />
								<hr>
							</div>

							<div>
								<p>내용</p>
								<textarea rows="10" cols="130" name="b_content" placeholder="내용을 입력해주세요.">${board.b_content }</textarea>
								<hr>
							</div>

							<div class="custom-file">
								<input type="file" class="custom-file-input" id="customFile" name="b_img"/>
								<label class="custom-file-label" for="customFile">파일선택</label>
							</div>
							
							<!-- 이거 복붙에다가 추가 한거야! -->
							<!-- 수정에 사용할 글번호 -->
							<input type="hidden" name="b_no" value="${board.b_no }" />

						</div>

					</div>
				</div><br/>
				
				<!-- 글 수정 저장 -->
				<div>
					<button type="submit" class="btn btn-dark"> 수정 완료 </button>
					<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/board'"> 글 목록 </button>
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