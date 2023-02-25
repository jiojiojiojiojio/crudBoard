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
				<h1 class="fw-bolder">Find ID</h1>
			</div>
		</div>
	</header>
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container login-container" align="center">
            <div align="center">
                <div class="col-md-6 login-form-1" align="center">
                    <div><h4>다음 정보를 입력해주세요.</h4></div>
                    
                    <form id="find_id" action="${contextPath}/login/find_id/find_id_result" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="u_name" id="u_name" placeholder="Your Name *"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="u_number" id="u_number" placeholder="Your Number *" value="" />
                        </div>
                        <div class="form-group">
                        	<button type="submit" class="btn btn-dark" onclick="idSubmit(); return false;"> 확인 </button>

						<!-- <a href="javascript:void(0)" onclick="idSubmit(); return false;"
							class="btn btn-primary btn-user btn-block"> Search ID </a> -->

					</div>
                        <div class="form-group">
                            <a href="${contextPath}/login/find_pw" class="ForgetPwd">Forget Password?</a>
                            <a href="${contextPath}/" class="ForgetPwd">Go Home</a>
                        </div>
                    </form>
                    
                    <script>
                    	function idSubmit() {
							var form=document.find_id;
							if(!form.u_name.value){
								alert("이름을 입력해주세요.")
								form.u_name.focus();
							return;
							}
							if(!form.u_number.value){
								alert("전화번호를 입력해주세요.")
								form.u_number.focus();
							return;
							}
							form.method="post";
							form.action="${contextPath}/login/find_id/find_id_result";
							form.submit();
						}
                    </script>
                    
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
