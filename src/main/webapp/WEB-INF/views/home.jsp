<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="include/head.jsp"%>
<body>
	<!-- Responsive navbar-->
	<%@include file="include/navbar.jsp"%>
	<!-- Page header with logo and tagline-->
	<%@include file="include/tagline.jsp"%>

	<div align="left">
		<div class="col-lg-6" align="center">
			<div align="center">
				<label style="font-size: 15pt;"><b>실시간 조회수 급 상승 글</b></label>
				<hr>
			</div>
		</div>
	</div>
	
	<!-- Page content-->
	<div class="container" align="center">
		<div class="row">

			<!-- 실시간 조회수 급 상승 글 상세 리스트 -->
			<!-- Nested row for non-featured blog posts-->
			<!-- c태그 여기서 부터 -->
			<div class="col-lg-4">
				<div class="row">
					<!-- Blog post start-->
					<div class="card mb-4">
						<a href="#!"><img class="card-img-top"
							src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
						<div class="card-body">

							<!-- 스크랩 버튼 -->
							<form method="post">
								<div align="left">
									<span>
										<button type="button" class="btn btn-outline-warning" id="scrapCheck" onclick="javascript: form.action='${pageContext.request.contextPath }/add_scrap';">스크랩</button>
									</span>
								</div>
							</form>

							<!-- 게시물 작성 시간 -->
							<div class="small text-muted">
								<input type="text" name="b_regdate" value="2023-02-05" size="10"
									style="border: none;" readonly="readonly" /> <label>작성자
									:</label><input type="text" name="u_id" value="김오리" size="10"
									style="border: none;" readonly="readonly" />
							</div>
							<!-- 게시물 제목 -->
							<div class="card-title" align="center">
								<input type="text" name="b_title" value="제목입니당" size="25"
									style="border: none;" readonly="readonly" />
							</div>
							<!-- 게시물 내용 미리보기 -->
							<a class="btn btn-primary" href="detail?b_no=${board.b_no}">글 자세히 보기 →</a>
						</div>
					</div>
					<!-- Blog post end-->
				</div>
			</div>
			<!-- c태그 여기까지 돌리기 -->


			<!-- c태그 여기서 부터 -->
			<div class="col-lg-4">
				<div class="row">
					<!-- Blog post start-->
					<div class="card mb-4">
						<a href="#!"><img class="card-img-top"
							src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
						<div class="card-body">
							<!-- 게시물 작성 시간 -->
							<div class="small text-muted">
								<input type="text" name="b_regdate" value="2023-02-05" size="10"
									style="border: none;" readonly="readonly" /> <label>작성자
									:</label><input type="text" name="u_id" value="김오리" size="10"
									style="border: none;" readonly="readonly" />
							</div>
							<!-- 게시물 제목 -->
							<div class="card-title" align="center">
								<input type="text" name="b_title" value="제목입니당" size="25"
									style="border: none;" readonly="readonly" />
							</div>
							<!-- 게시물 내용 미리보기 -->
							<a class="btn btn-primary" href="#!">글 자세히 보기 →</a>
						</div>
					</div>
					<!-- Blog post end-->
				</div>
			</div>
			<!-- c태그 여기까지 돌리기 -->


			<!-- Search widget-->
			<div class="col-lg-4">
				<div class="card mb-4">
					<div class="card-header" align="center">
						<p>로그인하고 더 많은 기능을 누려보세요^^</p>
					</div>
					<div class="card-body">
						<div align="center">
							<button type="button" class="btn btn-dark"
								onclick="location.href='${contextPath}/login'">로그인</button>
						</div>
					</div>
				</div>
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
