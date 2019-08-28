<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/community_header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
.cat_page .pagination li:hover a, .cat_page .pagination li.active a {
	background: #57c051;
	border-color: #57c051 !important;
}

body {
	font-size: 17px;
	font-weight: bold;
}

th, td {
	color: black;
	text-align: center;
}

a {
	color: #777777;
}

#wrapper {
	display: flex;
}

caption, .date {
	display: none;
}

.scoreBoard table {
	width: 100%;
}

ul.list_news li a {
	target: _blank;
}

#message:focus {
	outline: none;
}

thead tr {
	background: #e6e6e6;
}
/* 채팅 ui */
img {
	max-width: 100%;
}

.inbox_people {
	background: #f8f8f8 none repeat scroll 0 0;
	float: left;
	overflow: hidden;
	width: 40%;
	border-right: 1px solid #c4c4c4;
}

.inbox_msg {
	border: 1px solid #c4c4c4;
	clear: both;
	overflow: hidden;
}

.top_spac {
	margin: 20px 0 0;
}

.recent_heading {
	float: left;
	width: 40%;
}

.srch_bar {
	display: inline-block;
	text-align: right;
	width: 60%;
	padding:
}

.headind_srch {
	padding: 10px 29px 10px 20px;
	overflow: hidden;
	border-bottom: 1px solid #c4c4c4;
}

.recent_heading h4 {
	color: #05728f;
	font-size: 21px;
	margin: auto;
}

.srch_bar input {
	border: 1px solid #cdcdcd;
	border-width: 0 0 1px 0;
	width: 80%;
	padding: 2px 0 4px 6px;
	background: none;
}

.srch_bar .input-group-addon button {
	background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
	border: medium none;
	padding: 0;
	color: #707070;
	font-size: 18px;
}

.srch_bar .input-group-addon {
	margin: 0 0 0 -27px;
}

.chat_ib h5 {
	font-size: 15px;
	color: #464646;
	margin: 0 0 8px 0;
}

.chat_ib h5 span {
	font-size: 13px;
	float: right;
}

.chat_ib p {
	font-size: 14px;
	color: #989898;
	margin: auto
}

.chat_img {
	float: left;
	width: 11%;
}

.chat_ib {
	float: left;
	padding: 0 0 0 15px;
	width: 88%;
}

.chat_people {
	overflow: hidden;
	clear: both;
}

.chat_list {
	border-bottom: 1px solid #c4c4c4;
	margin: 0;
	padding: 18px 16px 10px;
}

.inbox_chat {
	height: 550px;
	overflow-y: scroll;
}

.active_chat {
	background: #ebebeb;
}

.incoming_msg_img {
	display: inline-block;
	width: 6%;
}

.received_msg {
	display: inline-block;
	padding: 0 0 0 10px;
	vertical-align: top;
	width: 92%;
}

.received_withd_msg p {
	background: #ebebeb none repeat scroll 0 0;
	border-radius: 3px;
	color: #646464;
	font-size: 14px;
	margin: 0;
	padding: 5px 10px 5px 12px;
	width: 100%;
}

.time_date {
	color: #747474;
	display: block;
	font-size: 12px;
	margin: 8px 0 0;
}

.received_withd_msg {
	width: 57%;
}

.mesgs {
	float: left;
	width: 100%;
}

.sent_msg p {
	background: #05728f none repeat scroll 0 0;
	border-radius: 3px;
	font-size: 14px;
	margin: 0;
	color: #fff;
	padding: 5px 10px 5px 12px;
	width: 100%;
}

.outgoing_msg {
	overflow: hidden;
	margin: 26px 0 26px;
}

.sent_msg {
	float: right;
	width: 46%;
}

.input_msg_write input {
	background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
	border: medium none;
	color: #4c4c4c;
	font-size: 15px;
	min-height: 48px;
	width: 100%;
}

.type_msg {
	border-top: 1px solid #c4c4c4;
	position: relative;
}

.msg_send_btn {
	background: #05728f none repeat scroll 0 0;
	border: medium none;
	border-radius: 50%;
	color: #fff;
	cursor: pointer;
	font-size: 17px;
	height: 33px;
	position: absolute;
	right: 0;
	top: 11px;
	width: 33px;
}

.messaging {
	padding: 0 0 50px 0;
}

.msg_history {
	height: 516px;
	overflow-y: auto;
}
</style>

<!-- ================================게시판========================== -->
<section id="tabs" class="project-tab">
	<div class="container-fluid" style="margin: auto;">
		<div class="row">
			<div class="col-md-12" style="margin-bottom: 80px;">
				<nav style="width: 100%; transform: translateX(-25px);">
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist"
						style="margin-top: 120px;">

					</div>
				</nav>
			</div>
			<!-- 왼쪽 사이드 바 -->
			<div class="col-lg-3" style="margin-right: auto; margin-left: auto;">
				<div class="left_sidebar_area">
					<aside class="left_widgets cat_widgets">
						<div style="text-align: center; background: white; padding-bottom: 20px;">
							<h3 style="font-size: 24px; font-weight: bold; color: lightcoral; text-align: center;">KBO리그 순위</h3>
							${element}
						</div>
					</aside>
				</div>
				<!-- 채팅방 -->
				<div class="name"
					style="height: 50px; background: #57c051; margin-top: 50px; color: #fff; text-align: center; line-height: 1.9em; font-size: 24px">
					BB 채팅방</div>
				<div class="mesgs">
					<input type="hidden" id="userid" value="${nickname }">
					<ul id="discussion"
						style="width: 100%; height: 400px; border: 4px solid #d7e2d4; margin: auto; padding-left: 20px; background: #fff;"></ul>
					<div class="type_msg">
						<div class="input_msg_write">
							<input type="text" class="write_msg" id="message"
								placeholder="메세지를 입력하세요." onkeyup="enterkey()">
							<button class="msg_send_btn" id="btnSend" type="button">
								<i class="fa fa-paper-plane-o" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="tab-content" id="nav-tabContent" style="width: auto;">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<table class="table table-bordered" cellspacing="0">
							<thead>
								<tr>
									<th style="width: 50px;">번호</th>
									<th style="width: 500px; text-align: left;">제목</th>
									<th style="width: 100px;">글쓴이</th>
									<th style="width: 150px;">날짜</th>
									<th style="width: 50px;">조회</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="board">
									<tr>
										<td><c:out value="${board.BOARD_NUM}" /></td>
										<td style="text-align: left;"><a
											href="/community_detail.do?BOARD_NUM=<c:out value="${board.BOARD_NUM}"/>"><c:out
													value="${board.TITLE}" /></a></td>
										<td><c:out value="${board.WRITER}" /></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${board.REGDATE}" /></td>
										<td><c:out value="${board.HIT}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div style="display: flex;">
						<div style="text-align: left; width: 50%; ">
							<input type="button" class="genric-btn primary radius"
								onclick="location.href='/community_form.do?TEAM_NAME=${teamName}'"
								value="글쓰기" style="background-color: #57c051;">
						</div>
						<!-- 페이지 출력 - script 항상 같이 따라가야함 -->
						<div style="width: 30%;">
							<nav class="cat_page mx-auto"
								aria-label="Page navigation example">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="page-item page-item-left"><a class="page-link"
											href="${pageMaker.startPage-1}"><i
												class="fa fa-chevron-left" aria-hidden="true"></i> </a></li>
									</c:if>

									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li
											class="page-item ${pageMaker.pagingVO.pageNum == num ? 'active':''}"><a
											class="page-link" href="${num}">${num}</a></li>
									</c:forEach>

									<c:if test="${pageMaker.next}">
										<li class="page-item page-item-right"><a
											class="page-link" href="${pageMaker.endPage+1}"><i
												class="fa fa-chevron-right" aria-hidden="true"></i> </a></li>
									</c:if>
								</ul>
							</nav>
						</div>

						<!-- 검색 조건과 키워드-->
						<div class="single-element-widget">
							<div class="default-select" id="default-select">
								<form id="searchForm" action="/community_list.do" style="display: flex;">
									<select name="type">
										<option value=""
											<c:out value="${pageMaker.pagingVO.type == null? 'selected':''}"/>>--</option>
										<option value="T"
											<c:out value="${pageMaker.pagingVO.type == null? 'selected':''}"/>>제목</option>
										<option value="C"
											<c:out value="${pageMaker.pagingVO.type == null? 'selected':''}"/>>내용</option>
										<option value="N"
											<c:out value="${pageMaker.pagingVO.type == null? 'selected':''}"/>>닉네임</option>
										<option value="TC"
											<c:out value="${pageMaker.pagingVO.type == null? 'selected':''}"/>>제목or내용</option>
									</select> <input type="text" name="keyword"
										value='<c:out value="${pageMaker.pagingVO.keyword}"/>' /> <input
										type="hidden" name="pageNum"
										value='<c:out value="${pageMaker.pagingVO.pageNum}"/>' /> <input
										type="hidden" name="amount"
										value='<c:out value="${pageMaker.pagingVO.amount}"/>' /> <input
										type='hidden' name="TEAM_NAME" value=${teamName}>
									<button class="btn btn-default">검색</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 뉴스 크롤링 -->
			<div class="col-lg-12" style="margin-top: 40px;">
				<div class="l_w_title">
					<h3
						style="text-align: center; font-size: 17px; font-weight: bold; color: lightcoral;">스포츠
						뉴스</h3>
				</div>
			</div>

			<div class="col-md-6">
				<div>
					<p style="text-align: center;">해외야구</p>
					${element2}
				</div>
			</div>
			<div class="col-md-6">
				<div>
					<p style="text-align: center;">국내야구</p>
					${element1}
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 페이징 처리 -->
<form id='actionForm' action="/community_list.do">
	<input type='hidden' name='pageNum'
		value='${pageMaker.pagingVO.pageNum }'> <input type='hidden'
		name='amount' value='${pageMaker.pagingVO.amount }'> <input
		type='hidden' name='type'
		value='<c:out value="${pageMaker.pagingVO.type }"/>'> <input
		type='hidden' name='keyword'
		value='<c:out value="${pageMaker.pagingVO.keyword }"/>'> <input
		type='hidden' name="TEAM_NAME" value=${teamName}>
</form>

<script type="text/javascript">
	$(document).ready(function() {

		var logoName = $('a.nav-item.nav-link');
		var teamName = '${teamName}';

		// 메인에서 접속 시에 navtab 이동
		var navtab = $("#nav-tab");
		navtab.find("a[name='" + teamName + "']").addClass("active show");

		var actionForm = $("#actionForm");

		$(".page-item a").on("click", function(e) {

			e.preventDefault();

			console.log('click');

			actionForm.find("input[name='pageNum']").val($(this).attr("href"));

			actionForm.submit();
		});

		//검색처리 이벤트
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 선택하세요");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
	});
</script>
<!-- HTML WebSocket 채팅 -->
<script type="text/javascript">
	var connection = $.hubConnection('http://demo.dongledongle.com/');
	var chat = connection.createHubProxy('chatHub');
	var sentMsg = '';

	$(document).ready(function() {

		chat.on('addNewMessageToPage', function(name, message) {

			if (htmlEncode(name) == '${nickname}') {

				sentMsg += '<div class="outgoing_msg">';
				sentMsg += '<div class="sent_msg">';
				sentMsg += '<p>' + htmlEncode(message) + '</p>';
				sentMsg += '</div></div>';

			} else {

				sentMsg += '<div class="incoming_msg">';
				sentMsg += '<div class="received_msg">';
				sentMsg += '<div class="received_withd_msg">';
				sentMsg += '<p>' + htmlEncode(message) + '</p>';
				sentMsg += '</div></div></div>';
			}

			$('#discussion').append(sentMsg);
			sentMsg = '';
		});

		$('#message').focus();

		connection.start({
			jsonp : true
		}).done(function() {

			$('#btnSend').click(function() {
				chat.invoke('send', $('#userid').val(), $('#message').val());
				$('#message').val('').focus();
			});
		});
	});

	function htmlEncode(value) {
		var encodedValue = $('<div />').text(value).html();
		return encodedValue;
	}

	function enterkey() {
		if (window.event.keyCode == 13) {
			$('#btnSend').click();
		}
	}
</script>

<%@ include file="../include/community_footer.jsp"%>
