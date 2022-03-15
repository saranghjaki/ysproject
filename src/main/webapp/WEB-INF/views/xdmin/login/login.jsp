<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/pilates/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" >
	
    <!-- Bootstrap CSS -->
 <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">  -->
	
	<link href="/pilates/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" >
		
	<script src="https://kit.fontawesome.com/916f7eb38d.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="/resources/js/bootstrap.js"></script>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
		<style type= text/css>
		a:link {
		  color : pink;
		}
		a:visited {
		  color : black;
		}
		a:hover {
		  color : red;
		}
		a:active {
		  color : green
		}
		table {
		  width: 50%;
		}
		
		body{
			font-size:12px
		}

	</style> 

	    <title>IzenMoonfactory</title>
  </head>
  
 <body  >

	
	<div class="container justify-content-center ">
	  <div class="row row-sm-12 mt-2  ">
	    <div id ="mainline" class="col p-0">
	       <a class="p-0 nav-link active" aria-current="page" href="# ">
	       <p style="font-size:2vmin; text-align :center">로그인</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0">
	     <a class=" p-0 nav-link" href="">
	     <p style=" font-size:2vmin; text-align :center">회원가입</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0 ">
	       <a class=" p-0 nav-link" href="#">
	       <p style="font-size:2vmin; text-align :center">수업예약</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0">
	       <a class=" p-0 nav-link" href="#">
	       <p style="font-size:2vmin; text-align :center">수업결재</p></a>
	    </div>
	  </div>
	</div>
	
	
	<!-- nav s -->
	
	<nav class="navbar navbar-light bg-light sticky-top h-25 d-inline-block w-100 mb-5">
	  <div class="container-fluid">
	  	<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	       <p class="text-center fw-bold fs-2"> 
	       	  	<img src="../../../images/xdmin/member/pilates-icon.png" width="50em">
	       PILATES SU </p>
	      
	    <a class="navbar-brand p-0 fs-1em mt-3  mr-0  ml-3 " href="#">
	    	<p style="font-size:2vmin; ">김땡땡님</p>
	    </a>

	    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
	      <div class="offcanvas-header">
	        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">pilates su</h5>
	        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	      </div>
	      <div class="offcanvas-body">
	       
	        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3 ">
	        	 <li ><img src="../../../images/xdmin/member/people.jpg" width=50em style="vertical-align:middle">
	        	  <span style="margin-top:20px;font-size:1em;" > 로그인이필요합니다</span>
	        	 </i>
	        	 <li>
	        	 	<div class="container justify-content-center">
					  <div class="row row-sm-12 mt-2  p-0 ">
					    <div id ="mainline" class="col p-0">
					       <a class="p-0 nav-link active" aria-current="page" href="# ">
					       <p style="font-size:2vmin; text-align :center">로그인</p> </a>
					    </div>
					    <div id ="mainline"  class="col p-0">
					     <a class=" p-0 nav-link" href="#">
					     <p style=" font-size:2vmin; text-align :center">회원가입</p> </a>
					    </div>
				  <li class="fw-bolder fs-5">
				  	<span>만료일 D-00일</span>
				  		<br>
				  	<span>남은횟수 00회</span>
				  </li>	
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#"></a>
		          </li>
		          <li class="nav-item" >
		            <a class="row-ml-3 nav-link" href="#"><p class=" fs-6 fw-bold" > 센터소개</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 수업결재</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 예약관리</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 공지사항</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 문의사항</p></a>
		          </li>
	        	  </ul> 
		        <form class="d-flex">
		          <input class="form-control me-2" type="search" placeholder="필라테스" aria-label="Search">
		          <button class="btn btn-outline-success" type="submit">검색</button>
		        </form>
		      </div>
		    </div>
		  </div>
		</nav>

		<!-- login s -->
		<p class="text-center fs-4 fw-bold">LOGIN</p>
		<hr>
	
		<div class="container">
		 <div class="row md-2 justify-content-center mb-3 mt-5 ">
	 			  <div class="col-12 col-md-6 col-lg-4">
				    <input type="email" class="form-control" id="inputEmail3" placeholder="아이디">  
				   </div>
			   </div>
		  </div>
		 <div class="container">
 			<div class="row md-2 justify-content-center ">
	  		   <div class="col-12 col-md-6 col-lg-4">
				        <input type="password" class="form-control" id="inputPassword3"  placeholder="비밀번호">
					  </div>
				   </div>
				  </div>
	<div class="container">
		 <div class="row md-2 justify-content-center mt-3 ml-3 ">	
			  <div class="col-12 col-md-6 col-lg-4">			  
				<div class="form-check">
				  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				  <label class="form-check-label" for="flexCheckDefault">
				   로그인 상태 유지
				  </label>
				</div>
			</div>
	 	 </div>
	</div>
	<div class="container">
		 <div class="row md-2 justify-content-center  ml-3 ">	
		  <div class="col-12 col-md-6 col-lg-4">	
		 	<div class="form-check form-switch">
	  			<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
	  			<label class="form-check-label" for="flexSwitchCheckDefault">보안접속</label>
				</div>
			</div>
	 	 </div>
	</div>
	<div class="container">
		 <div class="row md-2 justify-content-center  ml-3 ">	
		<div class="d-grid gap-2 col-12 col-md-6 col-lg-4">
		  <button class="btn btn-secondary" type="button">로그인</button>
	  	</div>
			</div>
	 	 </div>
	</div>
	
	<div class="container">
		 <div class="row md-2 justify-content-center mt-3 ml-3 g-2">	
		<div class="d-grid gap-2 col-6 col-md-3 col-lg-2">
		  <button class="btn "style="background-color:#06BD34;" type="button" >
		  <span style="color:white">NAVER</span></button>
		 </div>
		<div class="d-grid gap-2 col-6 col-md-3 col-lg-2">
		  <button class="btn  " type="button" style="background-color:#f7e600;">
		  KAKAO</button>
		 </div>
			</div>
	 	 </div>
	</div>
	<div class="container">
		 <div class="row md-2 justify-content-center mt-3 ml-3 g-2">	
		<div class="d-grid gap-2 col-6 col-md-3 col-lg-2">
		  <button class="btn btn-outline-dark " type="button">아이디 찾기</button>
		 </div>
		<div class="d-grid gap-2 col-6 col-md-3 col-lg-2">
		  <button class="btn btn-outline-dark p-1 " type="button">비밀번호 찾기</button>
		 </div>
			</div>
	 	 </div>
	</div>
	<div class="container">
		 <div class="row md-2 justify-content-center mt-3 ml-3 ">	
		<div class="d-grid gap-2 col-12 col-md-6 col-lg-4">
		  <button class="btn btn-outline-dark " type="button">회원가입</button>
	  	</div>
			</div>
	 	 </div>
	</div>
		
	<form id="" name="" method="get" action="/infra/member/memberList">
<select name="shPilmmDelNy">
	<option value="">::삭제여부::
	<option value="1">::Y::
	<option value="0">::N::</option>
</select>
	회원이름: <input type="text" name="shPilmmName">
 <input type="submit" name="search">
 <br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="${item.pilmmSeq}"/> 
		<a href="/infra/member/memberView?pilmmSeq=<c:out value="${item.pilmmSeq}"/>">
		<c:out value="${item.pilmmName}"/></a>
		| <c:out value="${item.pilmmId}"/> <br>
	
		</c:forEach>
	</c:otherwise>
</c:choose>	 
</form>	
		
		  
    <!-- e -->

    <!-- Optional JavaScript; choose one of the two! -->
	
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
	<script src="../../../bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js" ></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>