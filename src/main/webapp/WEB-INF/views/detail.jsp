<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="include/head.jsp"%>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	// ajax 댓글 기능
	$(document).ready(function(){
		console.log('되엇니?');
		//댓글 목록 불러오기
		replylist();
		
//		$('#btnReplySave').click(function(){
//		$('#btnReplySave').on('click',function(){
		$(document).on('click','#btnReplySave',function(){
			var re_content = $("#re_content").val();
			var u_id = $("#u_id").val();
			
			var url = "${pageContext.request.contextPath}/board/reply";  // ajax 쓰기
			var paramData = {
					"u_id" : '${sessionScope.u_id}',
					"re_content" : re_content,
					"b_no" : '${board.b_no}'
			}// 추가데이터 작성하기
			
			$.ajax({
				url : url,
				data : paramData,
				dataType : 'json',
				type : 'POST',
				success : function(result){
					replylist();
					$("#re_content").val('');
					$("#u_id").val('');
				},
				error : function(result){
					alert('에러가 발생했습니다.');
				}			
			});  // ajax end			
		});  // end of $(document).on('
	});
		
	// 댓글 목록 불러오기 : ajax  -> board/reply , b_no
	function replylist(){
		var url = "${pageContext.request.contextPath}/board/replylist";
		var paramData = {
				"b_no" : "${board.b_no}"
		};
		$.ajax({
			url: url,  // 전송주소  -> controller 매핑주소
			data : paramData,  // 요청데이터
			dataType : 'json', //데이터타입
			type : 'POST', // 전송방식(POST/GET)
			success : function(result){
				//alert('성공');
				//alert(result);
				var htmls = "";  //문서꾸미기
				if(result.length < 1){
					htmls += '<h5>댓글이 없습니다.</h5>';
				}
				else{
					$(result).each(function(){
						htmls = htmls + '<div class="" id="re_no' +this.re_no + '">';
				       htmls += '<span class="d-block">';
				       htmls += this.re_no + ' - ';
				       htmls += '<strong class="text-gray-dark">' + this.u_id + '</strong>';
				       htmls += '<span style="padding-left: 7px; font-size: 9pt">';
				       htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + this.re_no + ', \'' + this.u_id + '\', \'' + this.re_content + '\' )" style="padding-right:5px">수정</a>';
				       htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + this.re_no + ')" >삭제</a>';
				       htmls += '</span>';
				       htmls += '</span><br>';
				       htmls += this.re_content;
				       htmls += '</p>';
				       htmls += '</div>';   						
					});
				}
				
				$("#replylist").html(htmls);  //댓글위치에 html로 보여주기
			},
			error : function(result){
				alert('실패');
			}
		});
		
	}// end of replylist()	

	//댓글 수정하기(form)
	function fn_editReply(re_no, u_id, re_content){
		
		   var htmls = "";
		   htmls = htmls + '<div class="" id="re_no' +re_no + '">';
	       htmls += '<span class="d-block">';
	       htmls += re_no + ' - ';
	       htmls += '<strong class="text-gray-dark">' + u_id + '</strong>';
	       htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	       htmls += '<a href="javascript:void(0)" onclick="fn_updateReply(' + re_no + ', \'' + u_id + '\' )" style="padding-right:5px">저장</a>';
	       htmls += '<a href="javascript:void(0)" onclick="replylist()" >취소</a>';
	       htmls += '</span>';
	       htmls += '</span><br>';
	       htmls += '<textarea id="editmemo" name="editmemo" rows="3">';
	       htmls += re_content;
	       htmls += '</textarea>'
	       htmls += '</p>';
	       htmls += '</div>';
	       // 선택한 요소를 다른것으로 바꿉니다.(변경)
	       $('#re_no'+re_no).replaceWith(htmls);
	       $('#re_no'+re_no +'#editmemo').focus();
		}
		
		function fn_updateReply(re_no,u_id){
			var editmemo = $('#editmemo').val();
			var url = "${pageContext.request.contextPath}/board/reply_update";
			var paramData = {
					"re_no" : re_no,
					"u_id" : '${sessionScope.u_id}',
					"re_content" : editmemo
			}; // 수정데이터
			$.ajax({
				url : url,
				data : paramData,
				dataType : 'json',
				type : 'POST',
				success : function(result){
					console.log(result);
					replylist();
				},
				error : function(result){
					console.log(result);
					alert('에러가 발생했습니다.');
				}
			});		
		}
		
		
	
</script>

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
								<label>제목 : </label><input type="text" name="b_title" value="${board.b_title }" style="border: none;" readonly="readonly"/>
								<hr>
							</div>
							<div>
								<label>작성자 : </label><input type="text" name="b_title" value="${board.u_id }" style="border: none;" readonly="readonly"/>
								<label>작성 시간 : </label><input type="text" name="b_regdate" value="${board.b_regdate }" style="border: none;" readonly="readonly"/>
								<div align="right">
									<label>조회수 : </label><input type="text" name="b_readcnt" value="${board.b_readcnt }" size="3" style="border: none;" readonly="readonly"/>
								</div>
								<hr>
							</div>
							
							<div>
								<p>내용</p>
								
								<!-- 이미지ㅠㅠ -->
								<!-- <div>
									<p><img alt="..." src="/resources/img/jio.png"></p>
								</div> -->
								
								<textarea rows="10" cols="130" name="b_content" readonly="readonly">${board.b_content }</textarea>
								<hr>
							</div>

						</div>
					</div>
				</div><br/>

			<!-- 버튼들 -->
			<div align="right">
				<button type="button" class="btn btn-dark"
					onclick="location.href='${contextPath}/board'">글 목록</button>
				<c:if test="${sessionScope.u_id==board.u_id}">
				<button type="submit" class="btn btn-dark" onclick="location.href='${contextPath}/board/update?b_no='+${board.b_no}">수정</button>
				<button class="btn btn-danger" onclick="location.href='${contextPath}/board/delete?b_no='+${board.b_no}">삭제</button>
				</c:if>

				<!-- 스크랩 버튼 -->
				<form method="post">
					<div align="center">
						<span>
							<button type="button" class="btn btn-outline-warning"
								id="scrapCheck"
								onclick="javascript: form.action='${pageContext.request.contextPath }/add_scrap';">스크랩</button>
						</span>
					</div>
				</form>

			</div>
			<br />
			
			<!-- 댓글 작성 -->
			<div class="box-body" align="left">
				<hr>
				<div>
					<b><label>댓글 작성</label></b>
				</div>

					<table>
						<tr>
							<td><input type="text" name="u_id" value="${sessionScope.u_id }" size="10"
								style="border: none;" readonly="readonly" /></td>

							<td rowspan="2" width="70%"><textarea class="form-control"
									name="re_content" id="re_content" placeholder="댓글을 입력하세요"></textarea></td>
							
							<td><input type="hidden" name="b_no"/></td>
							<td>
								<button type="button" id="btnReplySave">저장</button>
							</td>
						</tr>
					</table>
				<hr>
			</div>
			
			<div id="replylist" align="left"></div>
			
		<!-- 댓글 목록 리스트 start -->
		<!-- <div align="left">
			<label><b>댓글 목록</b></label>
			<table>
				<form>
					<div class="form-group1">
						<c:forEach var="reply_list" items="${reply_list }">
							<tr>
								<td>작성자 : ${reply_list.u_id } 작성일자 : ${reply_list.re_date }</td>
							</tr>
							<tr>
								<td><textarea name="re_content" rows="3" cols="40"
										readonly="readonly" class="form-control1">${reply_list.re_content}</textarea>
								</td>
								<td><a href="#">댓글수정</a>
								<td><a href="#">댓글삭제</a> 
								
								<script>
									$(function() {
										//댓글수정 버튼을 눌렀을 때 처리
										$(".btn-defalut").click(function() {
											location.href = "#"
										});
									})
								</script>
								</td>
							</tr>
						</c:forEach>
					</div>
			</table>
		</div> -->
		<!-- 댓글 목록 리스트 end -->
			
		</div>

		<!-- 버튼 함수 -->
		<!-- <script>
			$(function() {
				
				//수정 버튼 함수
				$(".btn-dark").click(function() {
					location.href="update?b_no=" + ${board.b_no};
				});
				
				//삭제 버튼 함수
				$(".btn-danger").click(function() {
					location.href="delete?b_no="+${board.b_no};
				});
			}
			</script> -->

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