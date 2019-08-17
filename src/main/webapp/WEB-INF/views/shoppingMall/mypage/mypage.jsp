<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>

<style>
.genric-btn.default{
	background: #dde8e1;
}
.genric-btn.default:hover{
	background: #dde8e1;
}
.col-md-4::before {
	position: absolute;
	left: 0;
	top: 10px;
	content: '';
	display: block;
	width: 1px;
	height: 73px;
	background: #e6e6e6;
}

.col-md-4:first-child::before {
	content: '';
}

a {
	text-decoration: none;
}

* {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

ul {
	list-style-type: none;
}

a {
	color: #933835;
	text-decoration: none;
}

.pricing-table-title {
	text-transform: uppercase;
	font-weight: 700;
	font-size: 2.6em;
	color: #63676c;
	margin-top: 15px;
	text-align: left;
	margin-bottom: 25px;
	text-shadow: 0 1px 1px rgba(0,0,0,0.4);
}

.pricing-table-title a {
	font-size: 0.6em;
}

.clearfix:after {
	content: '';
	display: block;
	height: 0;
	width: 0;
	clear: both;
}
/** ========================
 * Contenedor
 ============================*/
.pricing-wrapper {
	width: 100%;
	margin: 20px auto 0;
	font-size: 62.5%;
	font-family: font-family: 'Montserrat', sans-serif;
}

.pricing-table {
	margin: 0 10px;
	text-align: center;
	width: 23%;
	float: left;
	-webkit-box-shadow: 0 0 15px rgba(0,0,0,0.4);
	box-shadow: 0 0 15px rgba(0,0,0,0.4);
	-webkit-transition: all 0.25s ease;
	-o-transition: all 0.25s ease;
	transition: all 0.25s ease;
}

.pricing-table:hover {
	-webkit-transform: scale(1.06);
	-ms-transform: scale(1.06);
	-o-transform: scale(1.06);
	transform: scale(1.06);
}

.pricing-title {
	color: #403E3D;
	background: #cd7f32;
	padding: 20px 0;
	font-size: 2em;
	text-transform: uppercase;
	text-shadow: 0 1px 1px rgba(0,0,0,0.4);
}

#silvercolor {
  background-color:#c0c0c0;
}

.pricing-table.recommended .pricing-title {
	background: #ffd700;
}

.pricing-table.recommended .pricing-action {
	background: #ffd700;
}

.pricing-table .price {
	background: #e9efec;
	font-size: 2.6em;
	font-weight: 700;
	padding: 20px 0;
	text-shadow: 0 1px 1px rgba(0,0,0,0.4);
}

.pricing-table .price sup {
	font-size: 0.5em;
	position: relative;
	left: 5px;
}

.table-list {
	background: #FFF;
	color: #403d3a;
}

.table-list li {
	font-size: 1.4em;
	font-weight: 700;
	padding: 12px 8px;
}

.table-list li:before {
	content: "\f00c";
	font-family: 'FontAwesome';
	color: #3fab91;
	display: inline-block;
	position: relative;
	right: 5px;
	font-size: 16px;
} 

.table-list li span {
	font-weight: 400;
  	color: #3fab91
}



.table-list li:nth-child(2n) {
	background: #F0F0F0;
}

.table-buy {
	background: #FFF;
	padding: 15px;
	text-align: left;
	overflow: hidden;
}

.table-buy p {
	float: left;
	color: #37353a;
	font-weight: 700;
	font-size: 2.4em;
}

.table-buy p sup {
	font-size: 0.5em;
	position: relative;
	left: 5px;
}

.table-buy .pricing-action {
	float: right;
	color: #FFF;
	background: #403E3D;
	padding: 10px 16px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	font-weight: 700;
	font-size: 1.4em;
	text-shadow: 0 1px 1px rgba(0,0,0,0.4);
	-webkit-transition: all 0.25s ease;
	-o-transition: all 0.25s ease;
	transition: all 0.25s ease;
}

.table-buy .pricing-action:hover {
	background: #cf4f3e;
}

.recommended .table-buy .pricing-action:hover {
	background: #228799;	
}

/** ================
 * Responsive
 ===================*/
 @media only screen and (min-width: 768px) and (max-width: 959px) {
 	.pricing-wrapper {
 		width: 768px;
 	}

 	.pricing-table {
 		width: 236px;
 	}
	
	.table-list li {
		font-size: 1.3em;
	}

 }

 @media only screen and (max-width: 767px) {
 	.pricing-wrapper {
 		width: 420px;
 	}

 	.pricing-table {
 		display: block;
 		float: none;
 		margin: 0 0 20px 0;
 		width: 80%;
 	}
 }

@media only screen and (max-width: 479px) {
	.pricing-wrapper {
		width: 300px;
	}
}

@media (min-width: 768px) {
  .modal-dialog {
    width: 100%;
    margin: 30px auto;
  }
}
</style>
<div class="container">
	<div class="section-top-border" style="display: flex;">
		<div class="col-md-6"
			style="float: left; text-align: center; background: #024137; padding: 50px; height: 300px;">
			<aside class="single_sidebar_widget author_widget"
				style="color: white;">
				<p></p>
				<h4>${user.NICKNAME }</h4>
				<p>${user.MEMBER_ID }</p>
				<br> <br>
				<div class="br"></div>
			</aside>
			<div class="col-md-4" style="color: white;">
				<p>
					<i class="fas fa-money-check"></i>
				</p>
				<span>보유 쿠폰</span>
				<h4>0 개</h4>
			</div>
			<div class="test">
				<div class="col-md-4" style="color: white;">
					<p>
						<i class="fas fa-won-sign"></i>
					</p>
					<span>보유 적립금</span>
					<h4>
						<c:choose>
						<c:when test="${savings_list['0'].or_savings_total eq null}">
						￦ 0
						</c:when>
						<c:otherwise>￦ ${savings_list['0'].or_savings_total}</c:otherwise>
						</c:choose>
					</h4>
				</div>
				<div class="col-md-4" style="color: white;">
					<p>
						<i class="fas fa-star"></i>
					</p>
					<span>보유 포인트</span>
					<h4>0 P</h4>
				</div>
			</div>
		</div>
		<!-- grade -->
		<div class="plan col-sm-3 col-md-3"
			style="float: left; height: 150px;">
			<div class="plan-name-gold">
				<p>
					<i class="fas fa-medal"></i>
				</p>
				<span>회원 등급</span>
				<c:choose>
					<c:when test="${user.GRADE eq 'bronze'}">
						<h1 style="margin-top: 10px; color: #cd7f32;">${user.GRADE }</h1>
					</c:when>
					<c:when test="${user.GRADE eq 'silver'}">
						<h1 style="margin-top: 10px; color: #29a1bc;">${user.GRADE }</h1>
					</c:when>
					<c:when test="${user.GRADE eq 'gold'}">
						<h1 style="margin-top: 10px; color: #ffd700;">${user.GRADE }</h1>
					</c:when>
					<c:otherwise>
						<h1 style="margin-top: 10px; color: #b9f2ff;">${user.GRADE }</h1>
					</c:otherwise>
				</c:choose>
			</div>
			<div style="padding: 30px; background: #b7d2b1; height: 150px;">
				<p>
					<i class="far fa-credit-card"></i>
				</p>
				<h4>
					<span>멤버십 혜택 안내</span>
				</h4>
				<span><a href="#" style="color: #777777;" data-toggle="modal" 
				data-target="#exampleModal">자세히 보기</a></span>
			</div>
		</div>
		<div class="col-sm-3 col-md-3 text-center"
			style="float: left; background: #dde8e1; height: 300px;">
			<div style="padding: 50px 40px 50px 40px;">
				<div class="blog_info text-center">
					<ul class="blog_meta list" style="clear: both">
						<li><a href="#" data-toggle="tooltip" data-placement="right"
							title="<fmt:formatDate value="${user.REGDATE }" type="date" pattern="yyyy-MM-dd"/>"><span>가입일</span>
								<i class="lnr lnr-calendar-full"></i> </a></li>
						<li><a href="#" data-toggle="tooltip" data-placement="right"
							title="￦ ${user.TOTAL_BUY }"><span>누적 구매액</span> <i
								class="lnr lnr-eye"></i> </a></li>
						<li><a href="#" data-toggle="tooltip" data-placement="right"
							title="￦ ${pymnt_toNextGrade }"><span>다음 등급까지 남은 구매액</span> <i
								class="lnr lnr-bubble"></i> </a></li>
						<li><a href="#" data-toggle="tooltip" data-placement="right"
							title="회원님은 경고 횟수 ${user.CAUTION } 회 입니다."><span>누적 경고</span>
								<i class="lnr lnr-user"></i> </a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="section-top-border"
		style="background: #ffffff; padding-bottom: 20px;">
		<div class="areaBox">
			<div class="myOrderBox">
				<div class="myOrderCon" style="border-right:none; border-left:none; border-bottom:none; border-top:none;">
					<div class="row" style="width: 1000px; margin: 0 auto; padding-left: 100px">

						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							 <c:choose>
									<c:when test="${empty stts_list[0] }">
										<span class="order_now">0</span>
										<br>
									</c:when>
									<c:otherwise>
										<span class="order_now">${stts_list[0] }</span>
										<br>
									</c:otherwise>
								</c:choose> <a href="#" class="genric-btn default circle"
								style="clear: both;"> <span>결제완료</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							 <c:choose>
									<c:when test="${empty stts_list[1] }">
										<span class="order_now">0</span>
										<br>
									</c:when>
									<c:otherwise>
										<span class="order_now">${stts_list[1] }</span>
										<br>
									</c:otherwise>
								</c:choose> <a href="#" class="genric-btn default circle"
								style="clear: both;"> <span>배송 준비중</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							 <c:choose>
									<c:when test="${empty stts_list[2] }">
										<span class="order_now">0</span>
										<br>
									</c:when>
									<c:otherwise>
										<span class="order_now">${stts_list[2] }</span>
										<br>
									</c:otherwise>
								</c:choose> <a href="#" class="genric-btn default circle"
								style="clear: both;"> <span>배송중</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							 <c:choose>
									<c:when test="${empty stts_list[3] }">
										<span class="order_now">0</span>
										<br>
									</c:when>
									<c:otherwise>
										<span class="order_now">${stts_list[3] }</span>
										<br>
									</c:otherwise>
								</c:choose> <a href="#" class="genric-btn default circle"
								style="clear: both;"> <span>배송 완료</span></a>
						</div>
						<div class="col-sm-2 col-md-2"
							style="width: 150px; text-align: center;">
							 <c:choose>
									<c:when test="${empty stts_list[4] }">
										<span class="order_now">0</span>
										<br>
									</c:when>
									<c:otherwise>
										<span class="order_now">${stts_list[4] }</span>
										<br>
									</c:otherwise>
								</c:choose> <a href="#" class="genric-btn default circle"
								style="clear: both;"> <span>주문 취소</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section-top-border">
		<h3 style="padding: 15px 0px 0px 15px; text-align: center;">내 적립금 현황</h3>
		<h5 align="right">내 적립금 : ${pageMaker.total }건</h5>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr style="background: #ffffff; padding: 20px;">
						<th scope="col"
							style="text-align: center; padding: 20px; width: 15%">주문날짜</th>
						<th scope="col" style="text-align: center; padding: 20px;">주문내역</th>
						<th scope="col"
							style="text-align: center; padding: 20px; width: 15%">적립금</th>
						<th scope="col"
							style="text-align: center; padding: 20px; width: 15%">총 적립금</th>
					</tr>
				</thead>
				<tbody style="text-align: center;">
				</tbody>
			</table>
			<div class="text-center">
				<ul class="pagination">
					<!-- 페이지 목록 버튼 -->
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li
							class="page-item  ${pageMaker.pagingVO.pageNum == num ? 'active' : ''}"
							id="btn_${num }"><a href="${num}" class="page-link">${num}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 페이징 버튼 처리를 위한 히든 폼 -->
			<form id="actionForm" action="/savings.do">
				<input type="hidden" name="pageNum" value="${pageMaker.pagingVO.pageNum }">
				<input type="hidden" name="amount" value="${pageMaker.pagingVO.amount }">
			</form>
		</div>
	</div>

	<!-- 멤버십 모달 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="pricing-wrapper clearfix">
						<!-- Title -->
						<h1 class="pricing-table-title">멤버십 안내</h1>

						<div class="pricing-table">
							<h3 class="pricing-title">브론즈</h3>
							<div class="price">
								￦ 0<sup> / 누적 금액</sup>
							</div>

							<!-- Characteristics-->
							<ul class="table-list">
								<li>적립 : 구매 금액의 3%</li>
								<li>할인 : 상품 금액의 3%</li>
							</ul>
						</div>

						<!-- Second -->
						<div class="pricing-table">
							<h3 class="pricing-title" id="silvercolor">실버</h3>
							<div class="price">
								￦ 200,000<sup> / 누적 금액</sup>
							</div>
							<!-- Characteristics -->
							<ul class="table-list">
								<li>적립 : 구매 금액의 5%</li>
								<li>할인 : 상품 금액의 5%</li>
							</ul>
						</div>
						<!-- gold grade -->
						<div class="pricing-table recommended">
							<h3 class="pricing-title">골드</h3>
							<div class="price">
								￦ 500,000<sup> / 누적 금액</sup>
							</div>
							<!-- Characteristics-->
							<ul class="table-list" style="margin-bottom: 0px;">
								<li>적립 : 구매 금액의 7%</li>
								<li>할인 : 상품 금액의 7%</li>
								<li>배송비 <span>무료</span></li>
							</ul>
						</div>
						<div class="pricing-table">
							<h3 class="pricing-title" style="background-color: #b9f2ff;">다이아</h3>
							<div class="price">
								￦ 1,000,000<sup> / 누적 금액</sup>
							</div>
							<!-- Characteristics -->
							<ul class="table-list">
								<li>적립 : 구매 금액의 10%</li>
								<li>할인 : 상품 금액의 10%</li>
								<li>배송비 <span>무료</span></li>
								<li>분기별 <span>야구 관람권</span> 증정
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 멤버십 모달 끝 -->
</div>

<script type="text/javascript">

	var actionForm = $("#actionForm");
	
	// 페이지가 로드되면 불러와지는 적립금 리스트
	$(document).ready(function() {
		
		var amount = actionForm.find("input[name='amount']").val();
		var pageNum = actionForm.find("input[name='pageNum']").val();
		var data = {
			pageNum : pageNum,
			amount : amount
		};

		$.ajax({
			type : "POST",
			url : "/savingListPaging.do",
			data : JSON.stringify(data),
			dataType : "json",
			contentType : "application/json",
			success : function(result) {

				var start = ${pageMaker.startPage};
				var end = ${pageMaker.endPage};
				var str = '';
				var paging = '';

				$.each(result, function(index, value) {

					str += '<tr><td><h5>' + result[index].or_date
							+ '</h5></td><td><h5>' + result[index].order_items
							+ '</h5></td><td><h5>' + '￦ '
							+ result[index].or_savings + '</h5></td><td><h5>'
							+ '￦ ' + result[index].or_savings_total
							+ '</h5></td></tr>';
				});

				$('tbody').empty();
				$('tbody').append(str);

				// 페이징 버튼 AJAX 처리
				for (var i = start; i <= end; i++) {
					
					paging += '<li class="page-item ';
					
					if (${pageMaker.pagingVO.pageNum} == i)
						paging += 'active';
					
					paging += '" id="btn_' + i + '">';
					paging += '<a href="' + i + '" class="page-link">' + i + '</a></li>';
				}
				
				$('.pagination').empty();
				$('.pagination').append(paging);
				
				$('#btn_1').addClass("active");
			},
			error : function() {
				
				alert('AJAX 요청 실패!');
			}
		});
	});
	
	// 페이지네이션 버튼 클릭시 이벤트 처리
	$(document).on("click", ".page-item a", function(e) {
		
		e.preventDefault();
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));

		var data = {
			pageNum : actionForm.find("input[name='pageNum']").val(),
			amount : actionForm.find("input[name='amount']").val()
		};

		$.ajax({
			type : "POST",
			url : "/savingListPaging.do",
			data : JSON.stringify(data),
			dataType : "json",
			contentType : "application/json",
			success : function(result) {

				var start = ${pageMaker.startPage};
				var end = ${pageMaker.endPage};
			
				var str = '';
				var paging = '';

				$.each(result, function(index, value) {

					str += '<tr><td><h5>' + result[index].or_date
							+ '</h5></td><td><h5>' + result[index].order_items
							+ '</h5></td><td><h5>' + '￦ '
							+ result[index].or_savings + '</h5></td><td><h5>'
							+ '￦ ' + result[index].or_savings_total
							+ '</h5></td></tr>';
				});

				$('tbody').empty();
				$('tbody').append(str);

				// 페이징 버튼 AJAX 처리
				for (var i = start; i <= end; i++) {
					
					paging += '<li class="page-item ';
					
					if (${pageMaker.pagingVO.pageNum} == i)
						paging += 'active';
					
					paging += '" id="btn_' + i + '">';
					paging += '<a href="' + i + '" class="page-link">' + i + '</a></li>';
				}
				
				$('.pagination').empty();
				$('.pagination').append(paging);
				
				$('.page-item').removeClass("active");
				$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
			},
			error : function() {
				
				alert('AJAX 요청 실패!');
			}
		});
	});
</script>

<%@ include file="../include/mypage_footer.jsp"%>