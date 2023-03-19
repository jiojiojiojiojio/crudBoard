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
				<!-- 페이지네이션 start-->
				<select id="dataPerPage">
					<option value="10">10개씩보기</option>
					<option value="15">15개씩보기</option>
					<option value="20">20개씩보기</option>
				</select>
				<!-- 페이지네이션 end-->
				
				<c:choose>
					<c:when test="${sessionScope.u_id==null }">
						<button type="button" class="btn btn-dark"
							onclick="location.href='${contextPath}/login'">로그인하고 글을
							써보세요^^</button>
					</c:when>
					<c:when test="${sessionScope.u_id!=null }">
						<button type="button" class="btn btn-dark"
							onclick="location.href='${contextPath}/board/write'">글쓰기</button>
					</c:when>
				</c:choose>
			</div>

			<div align="center">
				<table class="table" id="table">
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
								<th scope="row">${board.rownum }</th>
								<td><a href="board/detail?b_no=${board.b_no}">${board.b_title }</td>
								<td>${board.u_id }</td>
								<td>${board.b_regdate }</td>
								<td>${board.b_readcnt }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- 페이지네이션 start -->
	<div align="center">
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">

				<c:if test="${currentPage > 1 }">
					<li class="page-item"><a class="page-link"
						href="${contextPath}/board?page=${currentPage-1}">Previous</a></li>
				</c:if>

				<c:forEach var="i" begin="1" end="${pageCount}">
					<c:choose>
						<c:when test="${i == currentPage }">
							<li class="page-item"><a class="page-link">${i }</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="${contextPath}/board?page=${i}">${i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${currentPage < pageCount }">
					<li class="page-item"><a class="page-link"
						href="${contextPath}/board?page=${currentPage+1}">Next</a></li>
				</c:if>

			</ul>
		</nav>
	</div>
	<!-- 페이지네이션 end -->

	<div align="center">
		<!-- 검색 시작 -->
		<div>
			<form action="${contextPath}/board" method="POST">
				<select name="type">
					<option selected value="">검색 내용 선택</option>
					<option value="b_title">제목</option>
					<option value="b_content">내용</option>
					<option value="u_id">작성자</option>
				</select> <input type="text" name="keyword" value=""></input>
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
