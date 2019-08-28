<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../include/shopping_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
.order_details .title_confirmation{
margin-bottom: 120px;
}
.order_details_table{
margin-top:0px;
}
.order_details_table{
background: #ffffff;
}
body {
	font-weight: bold;
	font-size: 17px;
}

.order_details_table .table thead tr th {
	font-weight: bold;
	font-size: 17px;
}

.order_d_inner .details_item .list li a{
	font-size: 17px;
}
</style>
<body>
	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center" style="background-color:#57c051;">
			<div class="container">
				<div class="banner_content text-center">
					<h2 style="color:white;">주문확인</h2>
					<div class="page_link">
						<a href="/shopping_main" style="color:white;">쇼핑몰</a> <a href="/order_confirmation" style="color:white;">주문 확인</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Order Details Area =================-->
	<section class="order_details p_120" style="padding-top:0px;">
		<div class="container">
			<p class="title_confirmation" style="font-weight:bold; font-size:40px">♥주문 완료되었습니다. 감사합니다♥</p>
			<div class="row order_d_inner">
				<div class="col-lg-4">
					<div class="details_item" style="background-color:#ffffff;">
						<h4>주문 정보</h4>
						<ul class="list">
							<li>
								<a href="#none">
									<span>주문 번호</span> : ${order.order_num}</a>
							</li>
							<li>
								<a>
									<span>주문 날짜</span> : ${order.or_date}</a>
							</li>
							<li>
								<a href="#none">
									<span>총 결제금액</span> : ${order.pymntamnt}</a>
							</li>
							<li>
								<a href="#none">
									<span>결제 방식</span> : ${order.pymntmthd}</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4" style="margin-left: 25%;">
					<div class="details_item" style="background-color:#ffffff; height:162px;">
						<h4>배송 정보</h4>
						<ul class="list">
							<li>
								<a href="#none">
									<span>우편번호</span> : ${addr_list[0]}</a>
							</li>
							<li>
								<a href="#none">
									<span>주소</span> : ${addr_list[1]}</a>
							</li>
							<li>
								<a href="#none">
									<span>상세주소</span> : ${addr_list[2]}</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="order_details_table">
				<h2 style="text-align:center; font-weight:bold; font-size: 30px">주문 상세</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col" style="width:500px;">상품명</th>
								<th scope="col" style="text-align:center;">수량</th>
								<th scope="col" style="text-align:center;width:130px;">합계</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="order" items="${orderList}" varStatus="status">
							<tr>
								<td>
									<p>${goodsList[status.index].name}</p>
								</td>
								<td>
									<h5 style="text-align:center;"><c:out value="${order.QNTTY}"/></h5>
								</td>
								<td>
									<p style="text-align:center;"><c:out value="${order.TOTALPRICE}"/></p>
								</td>
							</tr>
						</c:forEach>
							<tr>
								<td style="border-top: 2px solid #c7c8c9;">
									<p style="color: #565656;">총 상품 금액</p>
								</td>
								<td style="border-top: 2px solid #c7c8c9;">
									<h5></h5>
								</td>
								<td style="border-top: 2px solid #c7c8c9;">
									<p style="text-align:center;color: #565656;">${totalPrice}</p>
								</td>
							</tr>
							<tr>
								<td>
									<p style="color: #565656;">배송비(5만원 이상 구매 시 무료)</p>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p style="text-align:center;color: #565656;">${shipping_fee}</p>
								</td>
							</tr>
							<tr>
								<td>
									<p style="color: #565656;">사용 적립금</p>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p style="text-align:center;color: #565656;">${useSavings}</p>
								</td>
							</tr>
							<tr>
								<td>
									<p style="color: #565656;">총 결제금액</p>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p style="text-align:center;color: #565656;">${order.pymntamnt}</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->

<%@ include file="../include/shopping_footer.jsp" %>

</body>
</html>