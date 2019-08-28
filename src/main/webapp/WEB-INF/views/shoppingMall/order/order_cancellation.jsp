<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../include/shopping_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
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
		<div class="banner_inner d-flex align-items-center" style="background-color:#70e270;">
			<div class="container">
				<div class="banner_content text-center">
					<h2 style="color:white;">주문취소</h2>
					<div class="page_link">
						<a href="/shopping_main" style="color:white;">쇼핑몰</a> <a href="/order_cancellation" style="color:white;">주문 취소</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Order Details Area =================-->
	<section class="order_details p_120" style="padding-top:0px;">
		<div class="container">
			<p class="title_confirmation" style="font-weight:bold; font-size:20px">주문이 취소되었습니다.</p>
			<div class="row order_d_inner">
				<div class="col-lg-4" style="margin-left:17%;">
					<div class="details_item" style="background-color:#e0f0e3;">
						<h4>주문 정보</h4>
						<ul class="list">
							<li>
								<a href="#none">
									<span>주문 번호</span> : ${order.order_num}</a>
							</li>
							<li>
								<a>
									<span>주문 취소 날짜</span> : ${info.canceled_at}</a>
							</li>
							<li>
								<a href="#none">
									<span>주문 상품</span> :${info.item_name}</a>
							</li>
							<li>
								<a href="#none">
									<span>주문 취소 금액</span> : ${order.pymntamnt}</a>
							</li>
							<li>
								<a href="#none">
									<span>결제 방식</span> : ${order.pymntmthd}</a>
							</li>
						</ul>
					</div>
				</div>
								<div class="col-lg-4">
					<div class="details_item" style="background-color:#b7d2b1; height:162px; width:400px;">
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
		</div>
	</section>
	<!--================End Order Details Area =================-->

<%@ include file="../include/shopping_footer.jsp" %>

</body>
</html>