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
				<h1 class="fw-bolder">Find ID Result</h1>
			</div>
		</div>
	</header>
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<body class="bg-gradient-primary">                                                                                          
<div class="container">                                                                                                 
<!-- Outer Row -->                                                                                                  
<div class="row justify-content-center">                                                                            
                                                                                            
<div class="col-xl-10 col-lg-12 col-md-9">                                                                      
                                                                                            
<div class="card o-hidden border-0 shadow-lg my-5">                                                         
<div class="card-body p-0">                                                                             
<!-- Nested Row within Card Body -->                                                                
<div class="row">                                                                                   
<div class="col-lg-6 d-none d-lg-block bg-password-image"></div>                                
<div class="col-lg-6">                                                                          
<div class="p-5">                                                                           
    <div class="text-center">                                                               
        <h1 class="h4 text-gray-900 mb-2">Please check your ID</h1><br><br>                 
        <c:choose>                                                                          
            <c:when test="${empty searchVO}">                                                 
                <p class="mb-4">조회결과가 없습니다.</p>                                        
            </c:when>                                                                         
            <c:otherwise>                                                                     
                <p class="mb-4">${searchVO.me_id}</p>                                              
            </c:otherwise>                                                                    
        </c:choose>                                                                         
    </div>                                                                                  
    <hr>                                                                                    
    <div class="text-center">                                                               
        <a class="small" href="${contextPath}/login/find_pw">Forgot Your PW?</a>                      
    </div>                                                                                  
    <div class="text-center">                                                               
        <a class="small" href="${contextPath}/register">Create an Account!</a>                    
    </div>                                                                                  
    <div class="text-center">                                                               
        <a class="small" href="${contextPath}/login">Already have an account? Login!</a>          
    </div>                                                                                  
</div>                                                                                      
</div>                                                                                          
</div>                                                                                              
</div>                                                                                                  
</div>                                                                                                      
                                                                                            
</div>                                                                                                          
                                                                                            
</div>                                                                                                              
                                                                                            
</div>                                                                                                                  
                                                                                            
<!-- Bootstrap core JavaScript-->                                                                                       
<script src="vendor/jquery/jquery.min.js"></script>                                                                     
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>                                                     
                                                                                            
<!-- Core plugin JavaScript-->                                                                                          
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>                                                       
                                                                                            
<!-- Custom scripts for all pages-->                                                                                    
<script src="js/sb-admin-2.min.js"></script>                                                                            
                                                                                            
</body>
	<!-- Footer-->
	<%@include file="include/footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
