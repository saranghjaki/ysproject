<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

codelist
<form id="" name="" method="get" action="/pilates/xdmin/code/codeList">
<select name="shPilcgSeq">
	<option value="">::코드그룹::</option>
		<c:forEach items="${listCodeGroup}" var="item" varStatus="status">
	<option value="<c:out value="${item.pilcgSeq}"/>"<c:if test="${param.shPilcgSeq eq item.pilcgSeq}">selected</c:if>> <c:out value="${item.pilcgName}"></c:out></option>
		</c:forEach>	
</select>



<input type="submit" name="search">

<select name="shOption"  id="shOption">
	<option value="">::검색구분::
	<option value="1"<c:if test="${vo.shOption eq 1 }">selected</c:if>>::한글::
	<option value="2"<c:if test="${vo.shOption eq 2 }">selected</c:if>>::영문::
</select>
회원이름: <input type="text" name="shValue"id= "shValue" value="<c:out value = "${vo.shValue }"/>">
<input type="submit" name="검색" id="btnSubmit">
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
	 	<c:out value="${item.pilcdSeq}"/> | <c:out value="${item.pilcgSeq}"/>  | <a href="/pilates/xdmin/code/codeView?pilcdSeq=${item.pilcdSeq}"><c:out value="${item.pilcdName}"/></a> <br>
		 | <c:out value="${item.pilcdNameEng}"/> 		


		
		</c:forEach>
	</c:otherwise>
</c:choose>	
</form>

<nav aria-label="...">
  <ul class="pagination">
  
		<c:if test="${vo.startPage gt vo.pageNumToShow}">
		                <li class="page-item"><a class="page-link" href="/pilates/xdmin/code/codeGroupList?thisPage=${vo.startPage - 1}">Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
		                <li class="page-item active"><a class="page-link" href="/pilates/xdmin/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
				</c:when>
				<c:otherwise>             
		                <li class="page-item"><a class="page-link" href="/pilates/xdmin/code/codeList?thisPage=${i.index}">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>     
		<c:if test="${vo.endPage ne vo.totalPages}">                
		                <li class="page-item"><a class="page-link" href="/pilates/xdmin/code/codeList?thisPage=${vo.endPage + 1}">Next</a></li>
		</c:if>  
  </ul>
</nav>

<script src="/infra/resources/js/validation.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	$("#btnSubmit").on("click",function(){
	if(!checkNull($("#shValue"),$("#shValue").val(),"name입력해주세요")) return false;
	if(!checkNull($("#shOption"),$("#shOption").val(),"검색구분체크해주세요")) return false;
	});
	</script>