# CRUD 게시판

## 목차
 - [주제 및 개요](#주제-및-개요)
 - [개발환경](#개발환경)
 - [DB 구성](#DB-구성)
 - [기능 구현](#기능-구현)

## 주제 및 개요

<h3>주제</h3> 
웹 프로그래밍인 Spring MVC의 기본 소양을 다지기 위해 CRUD가 가능하게 제작한 <b>'CRUD 웹 게시판'</b></br></br> 

<h3>프로젝트 문서화 작업</h3>
테이블 명세서, 요구사항 정의서, 잡리스트</br>
https://javapotato.tistory.com/36

**작업기간 :** 2023.02. ~ 2023.03()</br></br>
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
<img src="https://user-images.githubusercontent.com/112611440/222503454-b9c63521-ce73-4da7-929f-ffaa822fd988.gif">
로그인 창에 회원 ID와 PW를 적고 로그인 버튼을 누르면 로그인이되며, 홈 화면으로 이동 된다.</br> 
Session에 ID를 저장시켜 로그인이 유지되는 동안 상단 네비게이션 바에 회원 ID가 표시되도록 하였다.</br>
로그아웃 버튼을 누르면 session이 끊겨 네비게이션 바에 회원 ID가 사라지고 로그인 버튼으로 바뀐다.</br>

<h3>1-1. 사용자 ID, PW찾기</h3>
<img src="https://user-images.githubusercontent.com/112611440/222505448-d2763952-230e-4606-a56e-467fe7242c32.gif">
<img src="https://user-images.githubusercontent.com/112611440/222505686-6884ed6e-4343-467c-aa9e-fe288cb6e2a7.gif">
회원 정보를 입력한 후 확인 버튼을 누르고 DB에 있는 회원 정보와 일치한다면, 회원이 찾고자 하는 ID와 PW를 출력한다.</br>
만약 회원 정보와 일치하지 않는다면 '조회 결과 없음' 메시지를 출력한다.</br>

<h3>2. 회원가입</h3>
<img src="https://user-images.githubusercontent.com/112611440/222513039-6d2894a3-3b2e-4098-80ea-e53d5a011496.gif">
회원 정보를 입력한 후 가입 버튼을 누르면 회원 가입이 완료된다.</br>
정상적으로 가입되었을 시 홈 화면으로 이동한다.</br>

<h3>3. 게시판</h3>
<h3>3-1. 게시글 조회</h3>
<img src="https://user-images.githubusercontent.com/112611440/222513686-0f8dcb78-1bb5-4591-a81d-ce8d4a12281d.gif">
게시판 페이지에 들어가면 모든 게시글 리스트를 조회할 수 있다.</br>
원하는 게시글을 클릭하면 해당 게시글을 조회할 수 있으며 조회수가 +1씩 증가한다.</br>

<h3>3-2. 게시글 작성</h3>
<img src="https://user-images.githubusercontent.com/112611440/222517747-584885cb-4948-4aa4-a1f2-2cc31f912370.gif">
로그인을 한 사용자만 사용할 수 있는 기능이다.</br>
로그인을하면 게시글을 작성할 수 있다.</br>

<h3>3-3. 게시글 수정</h3>
<img src="https://user-images.githubusercontent.com/112611440/222517680-2b79a5d3-4190-46a1-b20a-f117de3d9b89.gif">
게시글을 작성한 ID와 로그인한 사용자의 ID가 같아야 수정 버튼이 생긴다.</br>
수정 버튼을 눌러 게시글을 수정할 수 있다.</br>

<h3>3-4. 게시글 삭제</h3>
<img src="https://user-images.githubusercontent.com/112611440/222514056-3feb09a2-52f6-42bb-817c-1a56ed60dd0a.gif">
게시글을 작성한 ID와 로그인한 사용자의 ID가 같아야 삭제 버튼이 생긴다.</br>
삭제 버튼을 눌러 게시글을 삭제할 수 있다.</br>

<h3>3-5. 게시글 검색</h3>
<img src="https://user-images.githubusercontent.com/112611440/222516503-91f124f8-64f0-4118-b397-dfd214457b8b.gif">
제목, 내용, 작성자 총 3가지 타입으로 검색할 수 있다.</br>
검색 타입을 고르고 키워드를 작성하면 해당 키워드가 포함된 게시글 리스트를 보여준다.</br>
검색 타입을 고르지 않고 검색 버튼을 눌렀을 경우엔 전체 게시글 리스트가 보여진다.</br>

<h3>3-6. 댓글(작성, 수정, 삭제)</h3>
<img src="https://user-images.githubusercontent.com/112611440/222515529-7d6405e6-f610-4c60-819e-5854f9c48eb0.gif">
댓글 기능은 Ajax를 사용하여 비동기로 개발하였다. 
게시글에 댓글을 작성, 수정, 삭제가 가능하다.</br>

<h3>4. 마이페이지</h3>
<img src="https://user-images.githubusercontent.com/112611440/222519320-e25d8d92-6e15-4b69-813e-2cfb4d1e510d.gif">
모든 마이페이지의 기능은 로그인을 한 사용자만 사용할 수 있다.</br>

<h3>4.1 내 정보 조회</h3>
<img src="https://user-images.githubusercontent.com/112611440/222519818-76639ac8-6378-4e10-b9ea-e544fa7fe29e.gif">
로그인한 회원의 정보를 조회할 수 있다.</br>

<h3>4.1 내 정보 수정</h3>
<img src="https://user-images.githubusercontent.com/112611440/222519744-216e43e0-0a33-4a2b-90c8-747ff25162dd.gif">
원하는 회원 정보를 수정할 수 있다.</br>
회원 정보를 성공적으로 수정하면, 수정된 정보를 즉시 보여준다.</br> 
