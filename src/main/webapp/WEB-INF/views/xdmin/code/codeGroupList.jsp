
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
                      
<<form id="formList" name="formList" method="post" action="/pilates/xdmin/code/codeGroupList">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/> " >
<input type="hidden" id="pilcgSeq" name="pilcgSeq" >

<select name="shpilcgDelNy" id="shpilcgDelNy">
	<option value="">::삭제여부::</option>
	<option value="1" <c:if test="${vo.shPilcgDelNy eq 1 }">selected</c:if> >Y</option>
	<option value="0" <c:if test="${vo.shPilcgDelNy eq 0 }">selected</c:if> >N</option>
</select>
||
코드그룹 이름 : <input type="text" name="shPilcgName" id="shPilcgName" value="<c:out value="${vo.shPilcgName}"/>" >
||
<select name="shOption" id="shOption">
	<option value="">::검색구분::</option>
	<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>한글</option>
	<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>영문</option>
</select>
<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
<input type="submit" id="btnSubmit" name="btnSubmit">
<input type="submit" id="btnSubmit2" name="btnSubmit2">
<br>
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<%-- <c:out value="${item.pilcgSeq}"/> | <a href="/pilates/xdmin/code/codeGroupView?pilcgSeq=<c:out value="${item.pilcgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"><c:out value="${item.pilcgName}"/></a> | <c:out value="${item.pilcgNameEng}"/> | <c:out value="${item.pilcgDelNy}"/> <br> --%>
				<c:out value="${item.pilcgSeq}"/> | <a href="javascript:goForm(<c:out value="${item.pilcgSeq}"/>)"><c:out value="${item.pilcgName}"/></a> | <c:out value="${item.pilcgNameEng}"/> | <c:out value="${item.pilcgDelNy}"/> <br>
											
		</c:forEach>
	</c:otherwise>

</c:choose>	
</form>

<%-- <nav aria-label="...">
	<ul class="pagination">
	<c:if test="${vo.startPage gt vo.pageNumToShow}">
		<li class="page-item"><a class="page-link" href="/pilates/xdmin/code/codeGroupList?thisPage=${vo.startPage - 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">Previous</a></li>
	</c:if>
	
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">
				<li class="page-item active"><a class="page-link" href="/pilates/xdmin/code/codeGroupList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
				<li class="page-item"><a class="page-link" href="/pilates/xdmin/code/codeGroupList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>  
	
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href="/pilates/xdmin/code/codeGroupList?thisPage=${vo.endPage + 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">Next</a></li>
	</c:if>  
	</ul>
</nav> --%>
<nav aria-label="...">
	<ul class="pagination">
		<c:if test="${vo.startPage gt vo.pageNumToShow}">	
			<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
		</c:if>
		
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
					<li class="page-item active"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
				</c:when>
				<c:otherwise>             
					<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>  
		
		<c:if test="${vo.endPage ne vo.totalPages}">                
			<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
		</c:if>  
	</ul>
</nav>
<a href="/pilates/xdmin/code/codeGroupForm?&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">등록</a>





<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script >

<script type ="text/javascript">
	$("#btnSubmit").on("click",funtion(){
		/* alert($("#shOption").val()); */
		
		alert($("#shPilName").val());  //jquery 방식
		confirm("진짜 삭제하시겠습니까?");
	});
</script> -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
	$("#btnSubmit").on("click",function(){
		/* if(!checkNull($("#shpilcgName"), $("#shpilcgName").val(), "코드그룹 이름을 입력해주세요!")) return false; */
		if(!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력해주세요!")) return false;			
	});
	
	$("#btnSubmit2").on("click",function(){
		alert("2번째 버튼입니다!")
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
		$("#pilcgSeq").val(seq);
		$("#formList").attr("action","/pilates/xdmin/code/codeGroupView");
		$("#formList").submit();
	}
</script>