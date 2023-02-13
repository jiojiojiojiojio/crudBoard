<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
댓글 목록
<br>
<table class="table">
	<form>
		<div class="form-group1">
	<tr>
		<td>작성자 : 김오리 작성일자 : 2023-02-09</td>
	</tr>
	<tr>
		<td><textarea name="re_content" rows="5" cols="40"
				readonly="readonly" class="form-control1">${boardReply.rememo}</textarea>
		</td>
		<td><a href="#">댓글수정</a>
		<td><a href="#">댓글삭제</a> <script>
			
			$(function(){
				//댓글수정 버튼을 눌렀을 때 처리
				$(".btn-defalut").click(function(){
					location.href="#"
				});
			})		
			</script></td>
	</tr>
	</div>
</table>

<!-- <table class="table">
	<form>
		<div class="form-group1">
	<tr>
		<td>작성자 : ${boardReply.rewriter} 작성일자 : ${boardReply.redate}</td>
	</tr>
	<tr>
		<td><textarea name="rememo" rows="5" cols="40"
				readonly="readonly" class="form-control1">${boardReply.rememo}</textarea>
		</td>
		<td><a href="replyupdate?reno=${boardReply.reno}">댓글수정</a>
		<td><a href="replydelete?reno=${boardReply.reno}">댓글삭제</a> <script>
			
			$(function(){
				//댓글수정 버튼을 눌렀을 때 처리
				$(".btn-defalut").click(function(){
					location.href="replyupdate?reno=" + ${boardReply.reno}; 
				});
			})		
			</script></td>
	</tr>
	</div>
</table> -->