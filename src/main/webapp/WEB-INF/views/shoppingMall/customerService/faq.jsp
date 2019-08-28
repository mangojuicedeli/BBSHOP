<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/shopping_header.jsp" %>

<style>
.genric-btn.primary:hover{
	color: #a0a0a0;
	border: 1px solid #e3e3e3;
	background-color : #e3e3e3;
}
.genric-btn.primary.active:hover{
	color: #a0a0a0;
	border: 1px solid #e3e3e3;
	background-color : #e3e3e3;
}
.page-item.active .page-link{
background-color: #57c051;
}
.cat_page .pagination li:hover a, .cat_page .pagination li.active a{
background-color: #57c051;
border-color: #57c051;
}
.genric-btn.default{
color:#ffffff;
background-color: #57c051;
}
.genric-btn.default:hover{
background-color: #57c051;
}
body {
	font-weight: bold;
	font-size: 17px;
}

.order_details_table {
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 20px;
}

.order_details_table .table thead tr th {
	text-align: center;
}

.table td {
	text-align: center;
}

a{
	color:#777777;
}

.genric-btn.primary{
	font-size:16px;
}

.nice-select {
	width: 110px;
}

/* 추가 */
a.genric-btn.primary {
	background-color : #a0a0a0;
	color : #ffffff; 
	font-weight: bold; 
	width:19.6%;
	padding-right: 0px;
	margin-right: 0px;
	border-right-width: 0px;
	padding-left: 0px; 
	border-left-width: 0px; 
	margin-left: 0px;
}
a.genric-btn.primary.active {
	background-color : #57c051;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	
	var actionForm = $("#actionForm")
	
	$(".page-item a").on("click", function(e){
		
		e.preventDefault();
		
		console.log(actionForm.find("input[name='category']").val());
		
		var category = actionForm.find("input[name='category']").val();
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		
		console.log(category);
		
		actionForm.attr("action", category);
		
		actionForm.submit();
	});


	$(".move").on("click", function(e){
		
		e.preventDefault();
		
		actionForm.append("<input type='hidden' name='FAQ_NUM' value='"+
				$(this).attr("href")+"'>");
		actionForm.attr("action","/faq_get.do");
		actionForm.submit();
	})
	
	var searchForm = $("#searchForm");
	
	$("#searchForm button").on("click", function(e){
	
	if(!searchForm.find("option:selected").val()){
	alert("검색종류를 선택하세요");
	return false;
	}
	
	if(!searchForm.find("input[name='keyword']").val()){
	alert("키워드를 입력하세요");
	return false;
	}
	
	searchForm.find("input[name='pageNum']").val("1");
	e.preventDefault();
	
	searchForm.submit();
	});
	
	
	function move(where) {
		
		alert(where);
		
		location.href=where;
	}
});


</script>
</head>

<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center"
			style="background-color: #57c051;">
			<div class="container">
				<div class="banner_content text-center">
					<h2 style="color: white;">고객센터</h2>
					<div class="page_link">
						<a href="/shopping_main.do" style="color: white;">Home</a> <a
							href="/faq_list.do" style="color: white;">FAQ</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->
	<div class="container">
	<div class="button-group-area mt-40" style="margin-bottom: 30px; text-align:right;">
		<a href="/faq_list.do" class="genric-btn primary e-large"
			style="background: #57c051; font-size: 30px; font-weight: bold; width:15%;">FAQ</a>
		<a href="/onetoonelist.do" class="genric-btn primary e-large"
			style="background: #a0a0a0; font-size: 30px; font-weight: bold; width:15%;">1:1문의</a>
	</div>
	
	<div class="button-group-area" id="category_area" style="text-align: center;">
		
		<a href="javascript:faqList_Ajax()" class="genric-btn primary active">전체보기</a>
		<a href="javascript:faqList_Ajax()" class="genric-btn primary">변경/취소</a>
		<a href="javascript:faqList_Ajax()" class="genric-btn primary">교환/반품</a>
		<a href="javascript:faqList_Ajax()" class="genric-btn primary">주문/조회</a>
		<a href="javascript:faqList_Ajax()" class="genric-btn primary">상품문의</a>
	</div>
	
	<div class="button-group-area" style="margin-bottom: 20px; text-align: center; margin-top:10px;">
	<div class="order_details_table" style="margin-top: 0px; padding: 0px;">
		<!-- <h2 style="text-align: center;">고객센터</h2> -->
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr style="background: #ffffff; color: #000000;">
						<th style="width: 20%" scope="col">번호</th>
						<th style="width: 20%"scope="col">카테고리</th>
						<th style="width: 60%; text-align: center" scope="col">제목</th>
					</tr>
				</thead>
				<tbody id="faqList">
<%-- 				<c:forEach items="${list}" var="FAQ"> --%>
<!-- 				<tr> -->
<%-- 					<td><c:out value="${FAQ.FAQ_NUM}" /></td> --%>
<%-- 					<td><c:out value="${FAQ.FAQ_CATEGORY}" /></td> --%>
<%-- 					<td><a class='move' href='<c:out value="${FAQ.FAQ_NUM}"/>'> --%>
<%-- 					<c:out value="${FAQ.SUBJECT}" /></a></td> --%>
<!-- 				</tr> -->
<%-- 				</c:forEach> --%>
				</tbody>
			</table>
		</div>
	</div>
	
   <table class="paging_area"
      style="width: 1140px; margin-left: auto; margin-right: auto;">
      <tr>
         <td style="padding-left: 370px;">
         
            <nav class="cat_page mx-auto" aria-label="Page navigation example">
            
               <ul class="pagination" id="pagination" style="float: right;">

<%--           	  <c:if test="${pageMaker.prev}">	 --%>
<%--               <li class="page-item"><a class="page-link" href="${pageMaker.startPage -1}"> --%>
<!--               <i class="fa fa-chevron-left" aria-hidden="true"></i> -->
<!--                   </a></li> -->
<%--               </c:if> --%>
                 
<%--                  <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}"> --%>
<%--                  <li class="page-item ${pageMaker.pagingVO.pageNum == num ? 'active':''}"> --%>
<%--                  <a class="page-link" href="${num}">${num}</a></li> --%>
<%--                  </c:forEach> --%>

<%--              <c:if test="${pageMaker.next}"> --%>
<%--                  	<li class="page-item"><a class="page-link" href="${pageMaker.endPage +1 }"> --%>
<!--                  	<i class="fa fa-chevron-right" aria-hidden="true"></i></a></li> -->
<%--              </c:if> --%>
                 
           
               </ul>
            </nav>
            	<form id='actionForm'>	
          			<input type='hidden' name='pageNum' value = '1'>
          			<input type='hidden' name='amount' value = '10'>
          			<input type='hidden' name='type' value ='<c:out value="${pageMaker.pagingVO.type}"/>'>
          			<input type='hidden' name='keyword' value ='<c:out value="${pageMaker.pagingVO.keyword}"/>'>
<!--           			<input type='hidden' name='faq_category' value=''> -->
          	   </form>	
         </td>
     
         
         <td class="search_area" style="float:right;">
         
            <div class="input-group" style="width: 80%; float:right;">
            	
            	<form id='searchForm' action="/faq_list.do" method='get' style="width: 400px; text-align: right">
            	
    				<select name='type' style="width: 110px;">    
    					
    					<option value=""
    					<c:out value="${pageMaker.pagingVO.type == null?'selected':''}" />>--</option>
  			          	
  			          	<option value="T"
  			          	<c:out value="${pageMaker.pagingVO.type eq 'T'?'selected':''}" />>제목</option>
            			
            			<option value="C"
            			<c:out value="${pageMaker.pagingVO.type eq 'C'?'selected':''}" />>내용</option>
            			
            			<option value="TC"
            			<c:out value="${pageMaker.pagingVO.type eq 'TC'?'selected':''}" />>제목 or 내용</option>
            			
            		</select>
 
            		
            		<input type='hidden' name='pageNum' value ='<c:out value="${pageMaker.pagingVO.pageNum}"/>' />
            		
          			<input type='hidden' name='amount' value = '<c:out value="${pageMaker.pagingVO.amount}"/>'/>
          			
               <input type="text" name='keyword' class="form-control" placeholder="글 검색" style="display: inline;
               width: 148px; padding-top: 0; padding-bottom: 5px" value='<c:out value="${pageMaker.pagingVO.keyword}"/>'/>
              
               <span class="input-group-btn">
                  <button class="btn btn-default" type="button" style="width: 50px; display:inline;" >
                     <i class="lnr lnr-magnifier"></i>
                  </button>
               </span>
            	</form>
            </div>
         </td>
      </tr>
   </table>
   </div>
   </div>

<script>
//상품 REVIEW 리스트 출력
function faqList_Ajax() {
	
	var actionForm = $('#actionForm');
	
	/* form 에서 데이터 불러오기 */
 	var pageNum = actionForm.find("input[name='pageNum']").val();
 	var amount = actionForm.find("input[name='amount']").val();
 	var keyword = actionForm.find("input[name='keyword']").val();
 	var type = actionForm.find("input[name='type']").val();
 	
 	if(pageNum === undefined)
 		pageNum = 1;
	
 	var amount = ${pageMaker.pagingVO.amount};
	var faq_category = $('a.genric-btn.primary.active')[0].innerHTML;
	
//  	var form_category = actionForm.find("input[name='faq_category']").val();
// 	if(score === undefined)
// 		score = 0;
	
	
	var data = {};
	data["pageNum"] = pageNum * 1;
	data["amount"] = amount;
	data["keyword"] = keyword;
	data["type"] = type;
	data["faq_category"] = faq_category;
	
	// 상품 목록이 들어갈 div 클래스 이름 - 초기화
	$('#faqList').empty();
	
	$.ajax({
		type : "POST",
		url : "/faqList_Ajax.do",
		data : JSON.stringify(data),
		dataType: "json",
		contentType : "application/json",
		success : function(data) {
			var list = data.faqList;
			var total = data.total;
			
			// faq 리스트 출력
			$.each(list, function(index, faq) {
				var output = "";
				output += "<tr><td>" + list[index].faq_NUM + "</td>";
				output += "<td>" + list[index].faq_CATEGORY + "</td>";
				output += "<td><a class='move' href='/faq_get.do?FAQ_NUM=" + list[index].faq_NUM + "'>";
				output += list[index].subject + "</a></td></tr>"
				
				$('#faqList').append(output);
			});
			
			
			// 페이징 버튼 AJAX 처리
			var end = Math.ceil(pageNum / 10.0) * 10.0;
			var start = end - 9;
			var realEnd = Math.ceil((total * 1.0) / amount);
			
			if(realEnd < end) {
				end = realEnd;
			}
			
			var paging = '';
			for(var i=start; i<=end; i++) {
				paging += "<li class='page-item review-page-item ";
				
				if (pageNum == i)
					paging += "active";
				
				paging += "'>";
				paging += "<a href='" + i + "' class='page-link'>" + i + "</a></li>";
			}
			
			$('ul#pagination').empty();
			$('ul#pagination').append(paging);

		},
		error : function() {alert('faq ajax 통신 실패!');}
	});
}
$(document).on("click", ".page-item a", function(e) {
	e.preventDefault();
});
$(document).on("click", ".page-item", function(e) {
	
	e.preventDefault();	// a태그를 클릭해도 페이지이동이 없도록,
	
	$('.page-item').removeClass("active");
	$(this).addClass("active");
	
	var page = $('.page-item.active a').text();
	var actionForm = $('#actionForm');
	actionForm.find("input[name='pageNum']").val(page);
	
	faqList_Ajax();
});

$(document).ready(function() {
	
	$('#category_area .genric-btn.primary').on("click", function(e) {
		$('#category_area .genric-btn.primary').removeClass("active");
		$(this).addClass("active");
		
		$('#actionForm').find("input[name='pageNum']").val('1');
	});
	
	faqList_Ajax();
});
</script>
<%@ include file="../include/shopping_footer.jsp" %>
