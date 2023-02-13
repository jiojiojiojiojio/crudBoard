<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="include/head.jsp"%>

<!-- 스크립트 -->



<body>
	<!-- Responsive navbar-->
	<%@include file="include/navbar.jsp"%>

	<header class="py-5 bg-light border-bottom mb-3">
		<div class="container">
			<div class="text-center my-3">
				<h1 class="fw-bolder">Read Posts</h1>
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
				<p style="color: white;">게시글 읽기</p>
			</div><br/>

				<div class="card">
					<div class="card-body">
						<div align="left">
							
							<div>
								<label>제목 : </label><input type="text" name="b_title" style="border: none;" readonly="readonly"/>
								<hr>
							</div>
							<div>
								<label>작성자 : </label><input type="text" name="b_title" value="지오지오" style="border: none;" readonly="readonly"/>
								<label>작성 시간 : </label><input type="text" name="b_regdate" value="2023-02-08" style="border: none;" readonly="readonly"/>
								<div align="right">
									<label>조회수 : </label><input type="text" name="b_readcnt" value="7" size="3" style="border: none;" readonly="readonly"/>
								</div>
								<hr>
							</div>
							
							<div>
								<p>내용</p>
								
								<!-- 이미지ㅠㅠ -->
								<!-- <div>
									<p><img alt="..." src="/resources/img/jio.png"></p>
								</div> -->
								
								<textarea rows="10" cols="130" name="b_content" readonly="readonly">이거는 여기에 벨류해서 값을 넣으면 된대 지오야</textarea>
								<hr>
							</div>

						</div>
					</div>
				</div><br/>
				
				<!-- 버튼들 -->
				<div align="right">
					<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/board'"> 글 목록 </button>
					<button class="btn btn-dark"> 수정 </button>
					<button class="btn btn-dark"> 삭제 </button>
				</div><br/>

			<!-- 댓글 작성 -->
			<div class="box-body" align="left">
				<hr>
				<div>
					<b><label>댓글 작성</label></b>
				</div>

				<form action="post">
					<table>
						<tr>
							<td><input type="text" name="u_id" value="김오리" size="10"
								style="border: none;" readonly="readonly" /></td>

							<td rowspan="2" width="70%"><textarea class="form-control"
									name="re_content" id="rememo" placeholder="댓글을 입력하세요"></textarea></td>

							<td>
								<button type="submit" class="btn btn-outline-dark"
									id="btnReplySave">저장</button>
							</td>
						</tr>
					</table>
				</form>
				<hr>
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