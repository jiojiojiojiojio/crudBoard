<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html>
<html lang="en">
	<%@include file="include/head.jsp" %>
    <body>
        <!-- Responsive navbar-->
        <%@include file="include/navbar.jsp" %>
        <!-- Page header with logo and tagline-->
        <%@include file="include/tagline.jsp" %>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">                    
                    <!-- 실시간 조회수가 높은 글 -->
                    <div>
                    	<div align="center">
                    		<h4>실시간 조회수 급 상승 글</h4><br>
                    	</div>
                    </div>
                    
                    <!-- 실시간 조회수 급 상승 글 상세 리스트 -->
                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <div class="col-lg-6">
                            <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <!-- 게시물 작성 시간 -->
                                    <div class="small text-muted">
                                    <input type="text" name="b_regdate" value="2023-02-05" size="15" style="border: none;" readonly="readonly"/>
                                    작성자 : <input type="text" name="u_id" value="김오리" size="10" style="border: none;" readonly="readonly"/>
                                    </div>
                                    <!-- 게시물 제목 -->
                                    <div class="card-title">
                                    <input type="text" name="b_title" value="제목입니당" size="35" style="border: none;" readonly="readonly"/>
                                    </div>
                                    <!-- 게시물 내용 미리보기 -->
                                    <a class="btn btn-primary" href="#!">글 자세히 보기 →</a>
                                </div>
                            </div>
                           
                           <!-- Blog post-->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <!-- 게시물 작성 시간 -->
                                    <div class="small text-muted">
                                    <input type="text" name="b_regdate" value="2023-02-05" size="15" style="border: none;" readonly="readonly"/>
                                    작성자 : <input type="text" name="u_id" value="김오리" size="10" style="border: none;" readonly="readonly"/>
                                    </div>
                                    <!-- 게시물 제목 -->
                                    <div class="card-title">
                                    <input type="text" name="b_title" value="제목입니당" size="35" style="border: none;" readonly="readonly"/>
                                    </div>
                                    <!-- 게시물 내용 미리보기 -->
                                    <a class="btn btn-primary" href="#!">글 자세히 보기 →</a>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header" align="center">
                        	<p>로그인하고 더 많은 기능을 누려보세요^^</p>
                        </div>
                        <div class="card-body">
                            <div align="center">
                            	<input class="btn btn-primary" type="button" value="Login"/>
                            </div>
                        </div>
                    </div>
				</div>

                </div>
            </div>
        </div>
        <!-- Footer-->
        <%@include file="include/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
