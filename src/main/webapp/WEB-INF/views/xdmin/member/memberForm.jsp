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
<form id="form" method="post" action="/pilates/xdmin/member/memberInst"> 
	 <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
     <input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
     <input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">  
     <input type="hidden" name="" >  
	
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

	<form id="form" method="post" action="/pilates/xdmin/member/memberInst"> 
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
								<input class="form-control form-control-sm" type="text" name="pilmmId" id= "pilmmId">
								</div>
							<div class="col-sm-5 col-md-4">
								<button class="btn btn-outline-secondary"  type="button" id="button-addon2">????????????</button>
						</div>
					</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<input class="form-control form-control-sm" type="password" name="pilmmPassword" id= "pilmmPassword"  >
							</div>
						</div>	
					</td>
				</tr>
				<tr>
					<td>???????????? ??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<input class="form-control form-control-sm" type="password" name="pilmmPassword" id= "pilmmPasswordCon"  >
							</div>
						</div>	
					</td>
				</tr>
				<tr>
					<td>???????????? ??????</td>
					<td>
							<div class="input-group mb-3">
								<select name="pilcgSeq" class=" form-select dropdown-toggle"  "data-toggle="dropdown" >
									<div class=" dropdown-menu  col-sm-12 col-md-12 " aria-labelledby="dropdownmenu">
								     <c:forEach items="${list}" var="item"   varStatus="status">	
								      <a href="//pilates/xdmin/member/membeList?pilcgSeq=<c:out value="${item.pilcgSeq}"/>">
								     <option value="<c:out value="${item.pilcgSeq}"/>"> <c:out value="${item.pilcdName}"/></option>
										</c:forEach>
								     	
									 </div> 
								 </div>
							</select> 
							<select name="pilcgSeq">

						<option value="${item.piljqSeq}">::????????????::</option>
						<c:forEach items="${listMember}" var="item" varStatus="status">			
							<option value="<c:out value="${item.piljqSeq}"/>"><c:out value="${item.piljqSeq}"/> | <c:out value="${item.piljqQuestionCd}"/></option>
								</c:forEach>	
						</select>
	
					
					</td>
				</tr>
				<tr>
					<td>???????????? ??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-12 col-md-12">
								<input class="form-control form-control-sm"  type="text">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
								<input class="form-control form-control-sm" type="text"  type="text" name="pilmmName" id= "pilmmName">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td rowspan="3">??????</td>
					<td>
						<div class="input-group mb-3 ">
							<div class="col-sm-7 col-md-8">
							<input class=" form-control form-control-sm" type="text" id="sample6_postcode" placeholder="????????????">
								</div>
							<!-- Button trigger modal -->
							<div class=" col-sm-5 col-md-4">
							<div class="input-group input-group-sm">
								<input class="btn btn-outline-secondary"  type="button" id="btnAdderss"  value="???????????? ??????"><br>
								<button class="btn btn-outline-secondary" type="button" id="btnAdderssClear">x</button>
							</div>
							</div>
				
								
						</div>	
					</td>
				</tr>
				
				<tr>
					<td>
						<input class="form-control form-control-sm"  id="sample6_address" placeholder="??????" type="text">
					</td>
				</tr>	
				<tr>
					<td>
						<input class="form-control form-control-sm"   id="sample6_detailAddress" placeholder="????????????" type="text">
						<input class="form-control form-control-sm"   id="sample6_extraAddress" placeholder="????????????"type="text">
					</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>
						<div class="container g-0">
  							<div class="row  row-cols-1 row-cols-md-2">
								<div class ="col col-sm-12  col-md-6 ">	 
									<div class="input-group mb-2">
											<select  class=" form-select dropdown-toggle"  "data-toggle="dropdown" >
												<div class=" dropdown-menu "  aria-labelledby="dropdownmenu">
											     	<option value="1" selected>02</option> 
												 	<option value="2">031</p></option>
												 	<option value="3">032</option>
												 	<option value="4">033</option>
												 	<option value="5">041</option>
												 	<option value="6">042</option>
												 	<option value="7">042</option>
												 	<option value="8">043</option>
												 	<option value="9">051</option>
												 	<option value="10">052</option>
												 	<option value="11">053</option>
												 	<option value="12">054</option>
												 	<option value="13">055</option>
												 	<option value="14">061</option>
												 	<option value="15">062</option>
												 	<option value="16">062</option>
												 	<option value="17">063</option>
												 	<option value="18">064</option>
												 	<option value="19">????????????</option>
												 </div> 
											 </div>
										 </select> 
									</div> 
								<div class ="col col-sm-12  col-md-6 ">	
								  	<input type="text" class="  form-control" aria-label="Text input with dropdown button">
								</div>
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
									<select  class=" form-select dropdown-toggle" "  data-toggle="dropdown" >
										<div class=" dropdown-menu  " aria-labelledby="dropdownmenu">
									     	<option value="1" selected>010</option> 
										 	<option value="2">011</p></option>
										 	<option value="3">016</option>
										 	<option value="4">017</option>
										 	<option value="5">018</option>
										 	<option value="6">019</option>
									   </div> 
									   </select> 
								 	</div>
								</div>
							
								<div class ="col col-sm-12  col-md-6 ">	
							  		<input  type="email" class=" form-control" aria-label="Text input with dropdown button">
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>?????????</td>
					<td>
						<input class="form-control form-control-sm" type="text">
					</td>
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
					<th colspan="2">??????</th>
				</tr>
				<tr>
					<td>???????????? </td>
					<td>
				<div class="container g-0">
  					<div class="row  row-cols-1 row-cols-md-3">
						<div class ="col col-sm-12  col-md-6 ">	
							<input class="form-control col-sm-4" list="datalistOptions" id="exampleDataList" placeholder="????????????">
								<datalist id="datalistOptions">
								  <option value="1920">
								  <option value="1921">
								  <option value="1922">
								  <option value="1923">
								  <option value="1924">
								  <option value="1925">
								  <option value="1926">
								  <option value="1927">
								  <option value="1928">
								  <option value="1929">
								  <option value="1930">
								  <option value="1930">
								  <option value="1931">
								  <option value="1932">
								  <option value="1933">
								  <option value="1934">
								  <option value="1935">
								  <option value="1936">
								  <option value="1937">
								  <option value="1938">
								  <option value="1939">
								  <option value="1940">
								  <option value="1941">
								  <option value="1942">
								  <option value="1943">
								  <option value="1944">
								  <option value="1945">
								  <option value="1946">
								  <option value="1947">
								  <option value="1948">
								  <option value="1949">
								  <option value="1950">
								  <option value="1951">
								  <option value="1952">
								  <option value="1953">
								  <option value="1954">
								  <option value="1955">
								  <option value="1956">
								  <option value="1957">
								  <option value="1958">
								  <option value="1959">
								  <option value="1960">
								  <option value="1961">
								  <option value="1962">
								  <option value="1963">
								  <option value="1964">
								  <option value="1965">
								  <option value="1966">
								  <option value="1967">
								  <option value="1968">
								  <option value="1969">
								  <option value="1970">
								  <option value="1971">
								  <option value="1972">
								  <option value="1973">
								  <option value="1974">
								  <option value="1975">
								  <option value="1976">
								  <option value="1977">
								  <option value="1978">
								  <option value="1979">
								  <option value="1980">
								  <option value="1981">
								  <option value="1982">
								  <option value="1983">
								  <option value="1984">
								  <option value="1985">
								  <option value="1986">
								  <option value="1987">
								  <option value="1988">
								  <option value="1989">
								  <option value="1990">
								  <option value="1991">
								  <option value="1992">
								  <option value="1993">
								  <option value="1994">
								  <option value="1995">
								  <option value="1996">
								  <option value="1997">
								  <option value="1998">
								  <option value="1999">
								  <option value="2000">
								  <option value="2001">
								  <option value="2002">
								  <option value="2003">
								  <option value="2004">
								  <option value="2005">
								  <option value="2006">
								  <option value="2007">
								  <option value="2008">
								  <option value="2009">
								  <option value="2010">
								  <option value="2011">
								  <option value="2012">
								  <option value="2013">
								  <option value="2014">
								  <option value="2015">
								  <option value="2016">
								  <option value="2017">
								  <option value="2018">
								  <option value="2019">
								  <option value="2020">
								  <option value="2021">
								  <option value="2022">
								</datalist>
							</div>
							
					
						<div class ="col col-sm-12 col col-md-3">
							<select class=" form-select dropdown-toggle" "  data-toggle="dropdown" >
								<div class=" dropdown-menu   " aria-labelledby="dropdownmenu">
							     	<option value="1" selected>01</option> 
								 	<option value="2">02</p></option>
								 	<option value="3">03</option>
								 	<option value="4">04</option>
								 	<option value="5">05</option>
								 	<option value="6">06</option>
								 	<option value="7">07</option>
								 	<option value="8">08</option>
								 	<option value="9">09</option>
								 	<option value="10">10</option>
								 	<option value="11">11</option>
								 	<option value="12">12</option>
								 </div> 
								</select>
							</div>	 
						<div class ="col col-sm-12 col col-md-3 ">
							<select class=" form-select dropdown-toggle" "  data-toggle="dropdown" >
								<div class=" dropdown-menu    " aria-labelledby="dropdownmenu">
							     	<option value="1" selected>01</option> 
								 	<option value="2">02</p></option>
								 	<option value="3">03</option>
								 	<option value="4">04</option>
								 	<option value="5">05</option>
								 	<option value="6">06</option>
								 	<option value="7">07</option>
								 	<option value="8">08</option>
								 	<option value="9">09</option>
								 	<option value="10">10</option>
								 	<option value="11">11</option>
								 	<option value="12">12</option>
								 	<option value="13">13</option>
								 	<option value="14">14</option>
								 	<option value="15">15</option>
								 	<option value="16">16</option>
								 	<option value="17">17</option>
								 	<option value="18">18</option>
								 	<option value="19">19</option>
								 	<option value="20">20</option>
								 	<option value="21">21</option>
								 	<option value="22">22</option>
								 	<option value="23">23</option>
								 	<option value="24">24</option>
								 	<option value="25">25</option>
								 	<option value="26">26</option>
								 	<option value="27">27</option>
								 	<option value="28">28</option>
								 	<option value="29">29</option>
								 	<option value="30">30</option>
								 	<option value="31">31</option>
								 </div> 
							</select> 
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
							<a type="button" class="btn btn-primary" href="./memberlist.html">??????</a>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">??????</button>
	
						</div>
					</div>
				</div>
			</div>
	
	 	</div>
				

			</div>		
	</form>
	
	
	<!-- test -->
	<select name=" pilmmGenderCd" id="pilmmGenderCd">
	<option value="">::??????::</option>
		<c:forEach items="${codeGender}" var="itemGender" varStatus="statusGender">
			<option value="<c:out value="${itemGender.pilcdSeq}"/>"<c:if test="${itemGender.pilmmSeq eq itemGender.pilcdSeq}">selected</c:if>> <c:out value="${itemGender.pilcdName}"></c:out></option>
		</c:forEach>	
		
	</select>
	
	
</form>
		
		
				
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


<script type="text/javascript">

	$("#btnSubmit").on("click",function(){
		if(!checkNull($("#pilcgName"),$("#pilcgName").val(),"????????????????????? ??????????????????")) return false;
		
		
	});
	
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