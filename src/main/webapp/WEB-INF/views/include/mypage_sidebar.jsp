<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;">
      <span class="fs-4"><label><b>MyPage</b></label></span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a href="${contextPath}/mypage" class="nav-link active" aria-current="page">
          <label>내 정보 수정</label>
        </a>
      </li>
      <li>
        <a href="${contextPath}/mypage/scrap_info" class="nav-link link-dark"> 
          <label>스크랩한 글</label>
        </a>
      </li>
      <li>
        <a href="${contextPath}/mypage/write_info" class="nav-link link-dark">
          <label>내가 작성한 글</label>
        </a>
      </li>
    </ul>
    <hr>
  </div>
