# CRUD 게시판

## 목차
 - [주제 및 개요](#주제-및-개요)
 - [개발환경](#개발환경)
 - [DB 구성](#DB-구성)
 - [기능 구현](#기능-구현)
 - [느낀 점](#느낀-점)

## 주제 및 개요

<h3>주제</h3> 
웹 프로그래밍인 Spring MVC의 기본 소양을 다지기 위해 CRUD가 가능하게 제작한 <b>'CRUD 웹 게시판'</b></br></br> 

<h3>프로젝트 문서화 작업</h3>
테이블 명세서, 요구사항 정의서, 잡리스트</br>
https://javapotato.tistory.com/36

**작업기간 :** 2023.02. ~ 2023.03(1개월)</br></br>
**인력 구성 :** 1명(BE/FE 구현 및 모든 문서화 작업까지 전담하여 업무 수행)</br>
- 팀원 김지오

**주요 기능**
* 로그인
  * 회원 로그인
  * ID 찾기 
  * PW 찾기
* 로그아웃
* 회원가입
* 게시판
  * 게시글 작성(Create)
  * 게시글 읽기(Read)
  * 게시글 수정(Update)
  * 게시글 삭제(Delete)
  * 게시글 스크랩
  * 게시글 검색(제목, 내용, 작성자)
* 게시글 댓글
  * 댓글 작성
  * 댓글 수정
  * 댓글 삭제
* 마이페이지
  * 내 정보 조회
  * 내 정보 수정
  * 내가 작성한 글 조회
  * 내가 스크랩한 글 조회
  * 회원 탈퇴

## 개발환경
- JAVA 8</br>
- JDK 1.8.0</br>
- IDE : Eclipse sts4</br>
- Framework : Spring Framework</br>
- Server : Apache Tomcat 9.0</br>
- Database : MySQL</br>
- ORM : Mybatis</br>
- 형상관리 : Github/SourceTree</br>

## DB 구성 
<h3>ERD 다이어그램</h3>
<img width="353" alt="다운로드" src="https://user-images.githubusercontent.com/112611440/222475473-cf45e2b9-f1a4-4cd1-b5eb-4e6252a082f9.png">

<h3>DB 설계 방식 및 과정</h3>
https://javapotato.tistory.com/37

## 기능 구현
<h3>1. 로그인&로그아웃</h3>
