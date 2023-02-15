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
				<h1 class="fw-bolder">Board</h1>
			</div>
		</div>
	</header>

	<div align="center">
		<div class="col-lg-11">
			<div align="right">
				<button type="button" class="btn btn-dark"
					onclick="location.href='${contextPath}/board/write'">글쓰기</button>
			</div>

			<div align="center">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일</th>
							<th scope="col">조회</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="board" items="${board }">
						<tr>
							<th scope="row">${board.b_no }</th>
							<td><a href="board/detail?b_no=${board.b_no}">${board.b_title }</td>
							<td>${board.u_id }</td>
							<td>${board.b_regdate }</td>
							<td>${board.b_readcnt }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>

				<!-- 이건 내가 한거! 시작 -->
				<!-- <table class="table">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회</td>
			</tr>
			<tr>
				<td>1</td>
				<td>제목입니다!!!!!!</td>
				<td>지오지오</td>
				<td>2023-02-07</td>
				<td>7</td>
			</tr>
			<tr>
				<td>1</td>
				<td>제목입니다!!!!!!</td>
				<td>지오지오</td>
				<td>2023-02-07</td>
				<td>7</td>
			</tr>
			<tr>
				<td>1</td>
				<td>제목입니다!!!!!!</td>
				<td>지오지오</td>
				<td>2023-02-07</td>
				<td>7</td>
			</tr>
		</table> -->
				<!-- 이건 내가 한거! 끝-->


			</div>
		</div>
	</div>

	<div align="center">
		<!-- 검색 시작 -->
		<div>
			<form action="${contextPath}/board" method="POST">
				<input type="text" name="s_name" value=""></input>
				<button type="submit" class="btn btn-secondary">검색</button>
			</form>
		</div>
		<!-- 끝 -->
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
