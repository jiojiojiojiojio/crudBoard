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
				<h1 class="fw-bolder">Reply Update</h1>
			</div>
		</div>
	</header>
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div align="center">
		<div class="col-lg-10">

			<!-- 댓글 수정 -->
			<div class="box-body" align="left">
				<hr>
				<div>
					<b><label>댓글 수정</label></b>
				</div>

				<form action="post">
					<table>
						<tr>
							<td><input type="text" name="u_id" value="김오리" class="form-control" size="10"
								style="border: none;" readonly="readonly" /></td>

							<td rowspan="2" width="70%"><textarea class="form-control"
									name="re_content" id="re_content" placeholder="댓글을 수정하세요"></textarea>
									<input type="hidden" name="b_no" value="1" /><!-- 뭐지 -->
							</td>
							
							<td>
								<input type="hidden" name="b_no" />
								<label>작성일자</label>
								<input type="text" name="re_date" class="form-control"
					 				readonly="readonly" value="2023-02-09">
							</td>

							<td>
								<button type="submit" class="btn btn-outline-dark"
									id="btnReplySave">완료</button> <!-- 뭔가이상하면 여길봐보자 -->
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