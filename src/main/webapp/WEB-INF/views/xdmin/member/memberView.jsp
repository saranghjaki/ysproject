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

	
	
	<form id=goForm " method="post" action="/pilates/xdmin/member/memberInst"> 
	 <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
     <input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
     <input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">  
     <input type="hidden" name="" >  
			<div class="accordion" id="accordionExample">
			  <div class="accordion-item">
	
	<div class="container justify-content-center ">
	  <div class="row row-sm-12 mt-2  ">
	    <div id ="mainline" class="col p-0">
	       <a class="p-0 nav-link active" aria-current="page"  href="/pilates/xdmin/member/memberForm?&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" >
	       <p style="font-size:2vmin; text-align :center">????????????</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0">
	     <a class=" p-0 nav-link"  href="/pilates/xdmin/member/memberForm?&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" >
	     <p style="font-size:2vmin; text-align :center">????????????</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0 ">
	       <a class=" p-0 nav-link"  href="javascript:goList()">
	       <p style="font-size:2vmin; text-align :center">????????????</p> </a>
	    </div>
	    <div id ="mainline"  class="col p-0">
	       <a class=" p-0 nav-link"  href="/pilates/xdmin/member/memberForm?&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" >
	       <p style="font-size:2vmin; text-align :center">????????????</p></a>
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
	    	<p style="font-size:2vmin; ">????????????</p>
	    </a>

	    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
	      <div class="offcanvas-header">
	        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">pilates su</h5>
	        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	      </div>
	      <div class="offcanvas-body">
	       
	        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3 ">
	        	 <li ><img src="../../../images/xdmin/member/people.jpg" width=50em style="vertical-align:middle">
	        	  <span style="margin-top:20px;font-size:1em;" > ???????????????????????????</span>
	        	 </i>
	        	 <li>
	        	 	<div class="container justify-content-center">
					  <div class="row row-sm-12 mt-2  p-0 ">
					    <div id ="mainline" class="col p-0">
					       <a class="p-0 nav-link active" aria-current="page" href="# ">
					       <p style="font-size:2vmin; text-align :center">????????????</p> </a>
					    </div>
					    <div id ="mainline"  class="col p-0">
					     <a class=" p-0 nav-link" href="#">
					     <a href="/pilates/xdmin/member/memberForm?&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" p style=" font-size:2vmin; text-align :center">????????????</p> </a>
					    </div>
					
				 <!--  <li class="fw-bolder fs-5">
				  	<span>????????? D-00???</span>
				  		<br>
				  	<span>???????????? 00???</span>
				  </li>	 -->
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#"></a>
		          </li>
		          <li class="nav-item" >
		            <a class="row-ml-3 nav-link" href="#"><p class=" fs-6 fw-bold" > ????????????</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > ????????????</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > ???????????????</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > ???????????????</p></a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#"><p class=" fs-6 fw-bold" > ????????????</p></a>
		          </li>
	        	  </ul> 
		        <form class="d-flex">
		          <input class="form-control me-2" type="search" placeholder="????????????" aria-label="Search">
		          <button class="btn btn-outline-success" type="submit">??????</button>
		        </form>
		      </div>
		    </div>
		  </div>
		</nav>

<!-- member form s-->

		<div class="container ">
			<table class="table table-bordered table-lg ">
				<colgroup>
					<col width="25%"/>	
					<col width="75%"/>
				</colgroup>		
				<tr class="table-light ">
					<th colspan="2">???????????? </th>
				</tr>
				<tr>
					<td>?????????</td>
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
					<td>???????????? ??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.piljqQuestionCd}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>???????????? ??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.piljqAnswer}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<p class= " align-middle fs-4 text-start">	<c:out value="${item.pilmmName}"/> </p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td rowspan="3">??????</td>
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
					<td>????????????</td>
					<td>
						<div class="container g-0">
  							<div class="row  row-cols-1 row-cols-md-2">
								<div class ="col col-sm-12  col-md-6 ">	
									<div class="input-group mb-2">
										<select class=" form-select dropdown-toggle"  "data-toggle="dropdown"  name=" pilatesmemberphoneCd" id="pilatesmemberphoneCd">
										<div class=" dropdown-menu "  aria-labelledby="dropdownmenu">
										<option value="">::????????????::</option>
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
					<td>?????????</td>
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
					<th colspan="2">????????????</th>
				</tr>
				<tr>
					<td>???????????? </td>
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
			
    <input type="submit" id="btnSubmit" value="??????">

			<!-- Button trigger modal -->
	<div class="container justify-content-center ">
		<div class="row  row-cols-1 row-cols-md-3  justify-content-center">
			<div class ="col col-sm-10  col-md-4 ">	
				 <div class="d-grid gap-5">
 					<a  type="button" class="btn btn-primary" data-bs-toggle="modal"
					role="button" data-bs-target="#list"> ?????? </a> <a type="button"></a>
				</div>
			</div>
		</div>	
		
		<div class="container justify-content-center ">
		<div class="row  row-cols-1 row-cols-md-3  justify-content-center">
			<div class ="col col-sm-10  col-md-4 ">	
				 <div class="d-grid gap-5">
 					<a type="button" class="btn btn-primary" data-bs-toggle="modal"
					role="button" data-bs-target="#list"> ?????? </a> <a type="button"></a>
				</div>
			</div>
		</div>	
			<!-- Modal -->
			<div class="modal fade" id="list" tabindex="-1" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">??????</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">???????????? ???????????? ????????????????????????? ?????? ?????? ??? ???????????? ????????????
							???????????????</div>
						<div class="modal-footer">
							<a type="button" class="btn btn-primary" href="/pilates/xdmin/member/memberList?thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">??????</a>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">??????</button>
	
						</div>
					</div>
				</div>
			</div>
	
	 	</div>
				

			</div>		
	</form>
	
	<!-- test s-->
	
<a href="/pilates/xdmin/member/memberList?thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">??????</a>
<a href="/pilates/xdmin/member/memberForm2?pilmmSeq=<c:out value="${item.pilmmSeq}"/>&thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">??????</a>

<a href="/pilates/xdmin/member/memberForm2?pilmmSeq=<c:out value="${item.pilmmSeq}"/>"> ??????</a>
<a  href="/pilates/xdmin/member/memberDele?pilmmSeq=<c:out value="${item.pilmmSeq}"/>&thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"id="btnDelete" > ??????(??????)</a>
<a href="/ipilates/xdmin/member/memberNele?pilmmSeq=<c:out value="${item.pilmmSeq}"/>&thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"id="btnDelete1"> ??????(??????)</a>
	
	
	
				
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/pilates/resources/common/js/validation.js"></script> <!-- js???????????? -->
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
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var addr = ''; // ?????? ??????
                var extraAddr = ''; // ???????????? ??????

                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
                if(data.userSelectedType === 'R'){
                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // ???????????? ??????, ??????????????? ?????? ????????????.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ????????? ??????????????? ?????? ????????? ?????????.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // ????????? ???????????? ????????? ????????????.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<!-- test s -->
<script type="text/javascript">
	$("#btnDelete").on("click", function(){
		var answer = confirm("????????????????????????");
		if(answer){
		
		
		}else{
	
			return false;
		}
	});
	$("#btnDelete1").on("click", function(){
		var answer = confirm("??????????????????????????????");
		if(answer){
		
		
		}else{
	
			return false;
		}
	});
	
	goList = function(seq){
		alert(seq);
		//form ????????? ????????????
		$("#thisPage").val(seq);
		$("#formList").submit();
		//????????? ????????? ????????????
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