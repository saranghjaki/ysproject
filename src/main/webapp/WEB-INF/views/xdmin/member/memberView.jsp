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

<!-- member form s-->

	<form id=goForm " method="post" action="/pilates/xdmin/member/memberInst"> 
	 <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
     <input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
     <input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">  
     <input type="hidden" name="" >  
		<div class="container ">
			<table class="table table-bordered table-lg ">
				<colgroup>
					<col width="25%"/>	
					<col width="75%"/>
				</colgroup>		
				<tr class="table-light ">
					<th colspan="2">기본정보 </th>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
							<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmmId}"/> </p>
							</div>
							
						</div>
					</td>
				</tr>
			

				</tr>
				<tr>
					<td>비밀번호 질문</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.piljqQuestionCd}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>비밀번호 답변</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.piljqAnswer}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmmName}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td rowspan="3">주소</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmaZipcode}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				
				<tr>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmaAddress1}"/> </p>
							</div>
						</div>
					</td>
				</tr>	
				<tr>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmaAddress2}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>일반전화</td>
					<td>
						<div class="container g-0">
  							<div class="row  row-cols-1 row-cols-md-2">
								<div class ="col col-sm-12  col-md-6 ">	
									<div class="input-group mb-2">
										<select class=" form-select dropdown-toggle"  "data-toggle="dropdown"  name=" pilatesmemberphoneCd" id="pilatesmemberphoneCd">
										<div class=" dropdown-menu "  aria-labelledby="dropdownmenu">
										<option value="">::전화번호::</option>
											<c:forEach items="${codeNumber}" var="itemNumber" varStatus="statusNumber">
												<option value="<c:out value="${itemNumber.pilcdSeq}"/>"<c:if test="${itemNumber.pilmmSeq eq itemNumber.pilcdSeq}">selected</c:if>> <c:out value="${itemNumber.pilcdName}"></c:out></option>
												</c:forEach>	
												</div>
											</select>
										</div> 
								<div class ="col col-sm-12  col-md-6 ">	
								  
								  	<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmpTypeCd}"/>||
								  	 	<c:out value="${item.pilmpDeviceCd}"/>||
								  	 	<c:out value="${item.pilmpTelecomCd}"/> ||
										<c:out value="${item. pilatesmemberphoneCd}"/> ||
								 	<c:out value="${item.pilmpNumber}"/> </p>
								</div>
							</div>
						</div>	
					</td>
				</tr>
				
				<tr>
					<td>이메일</td>
						<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmaoUrl}"/> </p>
							</div>
						</div></td>
				</tr>
			</table>
		</div>
		<div class="container ">
			<table class="table table-bordered table-lg ">
				<colgroup>
					<col width="25%"/>	
					<col width="75%"/>
				</colgroup>	
				<tr class="table-light ">
					<th colspan="2">생년월일</th>
				</tr>
				<tr>
					<td>생년월일 </td>
							<td><div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmaoUrl}"/> </p>
								</div>
							</div>
						 </div> 							
					</div> 
					</td>
				<tr>
			</table>

			</div>
			
    <input type="submit" id="btnSubmit" value="제출">

			<!-- Button trigger modal -->
	<div class="container justify-content-center ">
		<div class="row  row-cols-1 row-cols-md-3  justify-content-center">
			<div class ="col col-sm-10  col-md-4 ">	
				 <div class="d-grid gap-5">
 					<a  type="button" class="btn btn-primary" data-bs-toggle="modal"
					role="button" data-bs-target="#list"> 목록 </a> <a type="button"></a>
				</div>
			</div>
		</div>	
		
		<div class="container justify-content-center ">
		<div class="row  row-cols-1 row-cols-md-3  justify-content-center">
			<div class ="col col-sm-10  col-md-4 ">	
				 <div class="d-grid gap-5">
 					<a type="button" class="btn btn-primary" data-bs-toggle="modal"
					role="button" data-bs-target="#list"> 목록 </a> <a type="button"></a>
				</div>
			</div>
		</div>	
			<!-- Modal -->
			<div class="modal fade" id="list" tabindex="-1" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">알림</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">회원관리 리스트로 이동하시겠습니까? 확인 클릭 시 회원관리 페이지로
							이동합니다</div>
						<div class="modal-footer">
							<a type="button" class="btn btn-primary" href="/pilates/xdmin/member/memberList?thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">확인</a>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
	
						</div>
					</div>
				</div>
			</div>
	
	 	</div>
				

			</div>		
	</form>
	
	<!-- test s-->
	
<a href="/pilates/xdmin/member/memberList?thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">목록</a>
<a href="/pilates/xdmin/member/memberForm2?pilmmSeq=<c:out value="${item.pilmmSeq}"/>&thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">수정</a>

<a href="/pilates/xdmin/member/memberForm2?pilmmSeq=<c:out value="${item.pilmmSeq}"/>"> 수정</a>
<a  href="/pilates/xdmin/member/memberDele?pilmmSeq=<c:out value="${item.pilmmSeq}"/>&thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"id="btnDelete" > 삭제(진짜)</a>
<a href="/ipilates/xdmin/member/memberNele?pilmmSeq=<c:out value="${item.pilmmSeq}"/>&thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"id="btnDelete1"> 삭제(가짜)</a>
	
	
	
				
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/pilates/resources/common/js/validation.js"></script> <!-- js위치선정 -->
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	$("#btnAdderss").on("click" , function(){
		
	 sample6_execDaumPostcode();
	});
	
	$("#btnAdderssClear").on("click" , function(){
		$("#sample6_address").val('');
		$("#sample6_postcode").val('');
	
	});
	
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<!-- test s -->
<script type="text/javascript">
	$("#btnDelete").on("click", function(){
		var answer = confirm("삭제하시겠습니까");
		if(answer){
		
		
		}else{
	
			return false;
		}
	});
	$("#btnDelete1").on("click", function(){
		var answer = confirm("가짜삭제하시겠습니까");
		if(answer){
		
		
		}else{
	
			return false;
		}
	});
	
	goList = function(seq){
		alert(seq);
		//form 객체를 가져온다
		$("#thisPage").val(seq);
		$("#formList").submit();
		//가져온 객체를 전달한다
	}
	
	goForm = function(seq){
		alert(seq);
		$("#pilmmSeq").val(seq);
		$("#formList").attr("action","/pilates/xdmin/member/memberList");
		$("#formList").submit();
	}
	
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