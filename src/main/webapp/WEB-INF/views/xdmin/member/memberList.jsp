<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/pilates/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" >
	<link href="/pilates/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js" rel="stylesheet" >
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	 
		
	<script src="https://kit.fontawesome.com/916f7eb38d.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="/resources/js/bootstrap.js"></script>

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
		
		
		body{
			font-size:12px
		}
		tr, th{
			/* font-size: 2.2vmin; */
			vertical-align: middle; 
			padding: 10px; 
			text-align: center;
		}
							
		
		.table-wrapper {
		  overflow-x: auto; 
		}
		.table {
		  width: 100%; 
		  border-collapse: collapse;
		text-align: center;
		}
		
	</style> 

	    <title>IzenMoonfactory</title>
  </head>
  
 <body  >

	
	<div class="container justify-content-center ">
	  <div class="row row-sm-12 mt-2  ">
	    <div id ="mainline" class="col p-0">
	       <a class="p-0 nav-link active" aria-current="page" href="# ">
	       <p style="font-size:2vmin; text-align :center">작업종료</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0">
	     <a class=" p-0 nav-link" href="">
	     <p style=" font-size:2vmin; text-align :center">회원등록</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0 ">
	       <a class=" p-0 nav-link" href="#">
	       <p style="font-size:2vmin; text-align :center">회원관리</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0">
	       <a class=" p-0 nav-link" href="#">
	       <p style="font-size:2vmin; text-align :center">예약관리</p></a>
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
	       	<img src="/pilates/resources/xdmin/image/pilates-icon.png" width="50em">
	         PILATES SU
       		  	
	        </p>
	      
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
					       <p style="font-size:2vmin; text-align :center">작업종료</p> </a>
					    </div>
					    <div id ="mainline"  class="col p-0">
					     <a class=" p-0 nav-link" href="#">
					     <p style=" font-size:2vmin; text-align :center">회원등록</p> </a>
					    </div>
				 <!--  <li class="fw-bolder fs-5">
				  	<span>만료일 D-00일</span>
				  		<br>
				  	<span>남은횟수 00회</span>
				  </li>	 -->
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#"></a>
		          </li>
		          <li class="nav-item" >
		            <a class="row-ml-3 nav-link" href="#"><p class=" fs-6 fw-bold" > 회원관리</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 출석관리</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 게시판관리</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > 수강권관리</p></a>
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
		<!-- code -->
<!-- 			<div class="container g-0">
						<div class="row  row-cols-1 row-cols-md-4">
					<div class ="col col-sm-12  col-md-3 ">	
						<div class="input-group mb-2">
						<select  class=" form-select dropdown-toggle" "  data-toggle="dropdown" >
							<div class=" dropdown-menu  " aria-labelledby="dropdownmenu">
						     	<option value="1" selected>가입일</option> 
							 	<option value="2">만료일</p></option>
							 	<option value="3">생일</option>
							   </div> 
						   </select> 
					 	</div>
					</div>
					<div class ="col col-sm-6  col-md-3 ">	
				  		<input  type="date" class=" form-control" aria-label="Text input with dropdown button">
					</div>
					<div class ="col col-sm-6  col-md-3 ">	
				  		<input  type="date" class=" form-control" aria-label="Text input with dropdown button">
					</div>
				</div>
			</div> -->
			
			<div class="accordion" id="accordionExample">
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="headingOne">
			      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			       기간검색
			      </button>
			    </h2>
				    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
	         			<div class="container g-0">
							<div class="row  row-cols-1 row-cols-md-4">
							<div class ="col col-sm-12  col-md-3 ">	
								<div class="input-group mb-2">
								<select  class=" form-select dropdown-toggle" "  data-toggle="dropdown" >
									<div class=" dropdown-menu  " aria-labelledby="dropdownmenu">
								     	<option value="1" selected>가입일</option> 
									 	<option value="2">만료일</p></option>
									 	<option value="3">시작일</option>
									 	<option value="4">생일</option>
									   </div> 
								   </select> 
							 	</div>
							</div>
							<div class ="col col-sm-6  col-md-3 ">	
						  		<input  type="date" class=" form-control" aria-label="Text input with dropdown button">
							</div>
							<div class ="col col-sm-6  col-md-3 ">	
						  		<input  type="date" class=" form-control" aria-label="Text input with dropdown button">
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="input-group">
								  <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon">
								    <option selected>기간선택</option>
								    <option value="1">1일</option>
								    <option value="2">3일</option>
								    <option value="3">5일</option>
								    <option value="4">7일</option>
								    <option value="5">14일</option>
								    <option value="6">20일</option>
								    <option value="7">30일</option>
								  </select>
								  <button class="btn btn-outline-secondary" type="button">검색</button>
								</div>
							</div>
						</div>
					</div>
			      </div>
			    </div>
			  </div>
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="headingTwo">
			      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			        일반검색
			      </button>
			    </h2>
				    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
       			 		<div class="container g-0">
							<div class="row  row-cols-1 row-cols-md-4">
							<div class ="col col-sm-12  col-md-3 ">	
								<div class="input-group mb-2">
								<select  class=" form-select dropdown-toggle" "  data-toggle="dropdown" >
									<div class=" dropdown-menu  " aria-labelledby="dropdownmenu">
								     	<option value="1" selected>회원명</option> 
								  	 	<option value="2">담담자</p></option>
									 	<option value="3">카드번호</option>
									 	<option value="4">잔여횟수</option>
									 	<option value="5">성별</option>
									   </div> 
								   </select> 
							 	</div>
							</div>
								<div class ="col col-sm-6  col-md-3 ">	
						  			<input  type="text" class=" form-control" aria-label="Text input with dropdown button">
								</div>
								<div class="col-sm-6 col-md-3">
									  <button class="btn btn-outline-secondary" type="button">검색</button>
								</div>
							</div>
						</div>
					</div>
	     	   </div>
	    	</div>
	   	 </div>
	  </div>
			
			
			
			
			
		
	<!-- table s -->
		<div class="table-wrapper  ">
			<table  style=" white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" class="table table-striped table-hover" ">
				<colgroup>
					<col width="%"/>	
					<col width="%"/>
					<col width="%"/> <!-- 회원명 -->	
					<col width="%"/> <!-- 성별 -->
					<col width="%"/> <!-- hp -->	
					<col width="%"/> <!-- 재등록 -->
					<col width="%"/>	<!-- 프로그램 -->
					<col width="%"/> <!-- 시작일 -->
					<col width="%"/><!-- 만료일 -->	
					<col width="%"/><!--  잔여 -->
					<col width="%"/> <!-- 상세버튼 -->	
					<col width="%"/> <!-- 티켓버튼 -->
					<col width="%"/> <!-- 카드번호 -->	
					<col width="%"/> <!-- 담당자 -->
					<col width="%"/> <!-- 가입일 -->	
					<col width="%"/> <!-- 등록횟수 -->
					<col width="%"/> <!-- 잔여횟수 -->
				</colgroup>		

		 <thead>
			<tr>
				<th></th>
				<th></th>
				<th>회원명</th>
				<th>성별</th>
				<th>생년월일</th>
				<th>hp</th>
				<th>프로그램</th>
				<th>시작일</th>
				<th>만료일</th>
				<th>잔여</th>
				<th>카드번호</th>
				<th>담당자</th>
				<th>가입일</th>
				<th>등록횟수</th>
				<th>잔여횟수</th>
			</tr>
		</thead>
			<tr>
			<!-- meber list s -->
			<form id="" name="" method="get" action="/infra/member/memberList">
				<c:forEach items="${list}" var="item" varStatus="status">	
				<td><c:out value="${item.pilmmSeq}"/> </td>
				<td><div class="form-check">
				    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1"></td>
				<td><c:out value="${item.pilmmName}"/></td>
				<td><c:out value="${item.pilmmGenderCd}"/></td>
				<td><c:out value="${item.pilmmDob}"/></td>
				<td><c:out value="${item.pilmpNumber}"/></td>
				<td><c:out value="${item.pilpgName}"/></td>	
				<td><c:out value="${item.pilpyStartDate}"/></td>
				<td><c:out value="${item.pilpyEndtDate}"/></td>
				<td>(시작일-마지막날 )</td>				
				<td><c:out value="${item.pilinName}"/></td>				
				<td><c:out value="${item.pilmmMemberNumber}"/></td>	
				<td><c:out value="${item.pilpyDregisterDate}"/></td>	
				<td><c:out value="${item.pilpgNumberCd}"/></td>	
				<td>총횟수-출책</td>			
				
					
				</tr>
				</c:forEach>
					</form>
						</table>
	</div>



<nav aria-label="...">
  <ul class="pagination">
  
		<c:if test="${vo.startPage gt vo.pageNumToShow}">
		                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.startPage - 1}">Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
		                <li class="page-item active"><a class="page-link" href="/pilates/xdmin/member/memberList?thisPage=${i.index}">${i.index}</a></li>
				</c:when>
				<c:otherwise>             
		                <li class="page-item"><a class="page-link" href="/pilates/xdmin/member/memberList?thisPage=${i.index}">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>     
		<c:if test="${vo.endPage ne vo.totalPages}">                
		                <li class="page-item"><a class="page-link" href="/pilates/xdmin/member/memberList?thisPage=${vo.endPage + 1}">Next</a></li>
		</c:if>  
  </ul>
</nav>
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/pilates/resources/common/js/validation.js"></script> <!-- js위치선정 -->

<script type="text/javascript">
	
			</script>
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