<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/community_header2.jsp"%>
<jsp:useBean id="today" class="java.util.Date"/>

<!-- jQuery를 사용하기위해 jQuery라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script src="http://demo.dongledongle.com/Scripts/jquery-1.10.2.min.js"></script>
<script src="http://demo.dongledongle.com/Scripts/jquery.signalR-2.2.1.min.js"></script>

<%
	String title = (String) request.getAttribute("title");
	ArrayList<String> list_text = (ArrayList<String>) request.getAttribute("list_text");
	ArrayList<String> list_link = (ArrayList<String>) request.getAttribute("list_link");
	String url = request.getRequestURL().toString() + "?BOARD_NUM=" + request.getParameter("BOARD_NUM");
%>

<style>
.genric-btn.default{
background: #57c051;
border: 1px solid #57c051;
/* color: #ffffff; */
}
.genric-btn.danger:hover{
color: #ffffff;
background: #f44a40;
}
body {
	font-size: 17px;
	font-weight: bold;
}
b, sup, sub, u, del{
color:#2d8b28;
}
.comments-area .btn-report {
	background-color: #fff;
	color: #222222;
	border: 1px solid #eee;
	padding: 2px 18px;
	font-size: 12px;
	display: block;
	font-weight: 600;
	transition: all 300ms linear 0s;
}
.comments-area{
padding-top:0px;
padding-bottom:0px;
background: none;
border: #f7f7ff
}
.report_modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top - display가 block 처리되었을 때 view보다 상단에 노출되게 해줌*/
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */

}
.modal-content {
	background-color: #fefefe;
	margin: 8% auto; /* 15% from the top and centered */
	padding: 10px;
	border: 1px solid #888;
	width: 40%; !important /* Could be more or less, depending on screen size */
	height: 50%;
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

#myModal {
	opacity: 0.9;
}

.modal-body {
	align: center;
}

.blog_info .blog_meta li a {
	background-color: #fff;
	color: #222222;
	border: 1px solid #eee;
	padding: 2px 18px;
	font-size: 12px;
	display: block;
	font-weight: 600;
	transition: all 300ms linear 0s;
	margin-left: 700px;
}

.single-post-area .fileUpload-area {
	border-top: 1px solid #eee;
	padding-top: 30px;
	margin-top: 60px;
}

.genric-btn.primary {
	background: #9FC197;
	font-size: 16px;
	font-weight: bold;
	color: white !important;
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

a {
	color: #777777;
}

/* 채팅 ui */
img{ max-width:100%;}
.inbox_people {
  background: #f8f8f8 none repeat scroll 0 0;
  float: left;
  overflow: hidden;
  width: 40%; border-right:1px solid #c4c4c4;
}
.inbox_msg {
  border: 1px solid #c4c4c4;
  clear: both;
  overflow: hidden;
}
.top_spac{ margin: 20px 0 0;}


.recent_heading {float: left; width:40%;}
.srch_bar {
  display: inline-block;
  text-align: right;
  width: 60%; padding:
}
.headind_srch{ padding:10px 29px 10px 20px; overflow:hidden; border-bottom:1px solid #c4c4c4;}

.recent_heading h4 {
  color: #05728f;
  font-size: 21px;
  margin: auto;
}
.srch_bar input{ border:1px solid #cdcdcd; border-width:0 0 1px 0; width:80%; padding:2px 0 4px 6px; background:none;}
.srch_bar .input-group-addon button {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  padding: 0;
  color: #707070;
  font-size: 18px;
}
.srch_bar .input-group-addon { margin: 0 0 0 -27px;}

.chat_ib h5{ font-size:15px; color:#464646; margin:0 0 8px 0;}
.chat_ib h5 span{ font-size:13px; float:right;}
.chat_ib p{ font-size:14px; color:#989898; margin:auto}
.chat_img {
  float: left;
  width: 11%;
}
.chat_ib {
  float: left;
  padding: 0 0 0 15px;
  width: 88%;
}

.chat_people{ overflow:hidden; clear:both;}
.chat_list {
  border-bottom: 1px solid #c4c4c4;
  margin: 0;
  padding: 18px 16px 10px;
}
.inbox_chat { height: 550px; overflow-y: scroll;}

.active_chat{ background:#ebebeb;}

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
.received_withd_msg { width: 57%;}
.mesgs {
  float: left;
  width: 100%;
}

 .sent_msg p {
  background: #05728f none repeat scroll 0 0;
  border-radius: 3px;
  font-size: 14px;
  margin: 0; color:#fff;
  padding: 5px 10px 5px 12px;
  width:100%;
}
.outgoing_msg{ overflow:hidden; margin:26px 0 26px;}
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

.type_msg {border-top: 1px solid #c4c4c4;position: relative;}
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
.messaging { padding: 0 0 50px 0;}
.msg_history {
  height: 516px;
  overflow-y: auto;
}
</style>

<body>
	<div style="margin-bottom: 50px;"></div>
	<!--================글 상세 =================-->
	<section class="cat_product_area section_gap">
		<div class="container-fluid">
			<div class="row flex-row-reverse">
				<div class="col-lg-9" style="margin-left: auto; margin-right: auto;">
					<div class="single-post row">
						<div class="col-lg-12  col-md-12">
							<div class="blog_info text-left" style="padding-top: 0px;">
								<ul class="blog_meta list">
									<li>
										<table>
											<tbody>
												<tr>
													<td>
														<h2>
															<b>[<c:out value="${post.TEAM_NAME}" />]
															</b>
															<c:out value="${post.TITLE}" />
														</h2>
													</td>
												</tr>
											</tbody>
										</table>
									</li>
									<li></li>
									<li>
										<table>
											<tr>
												<td><p class="bno" style="margin-right: 10px;">
														글 번호:
														<c:out value="${post.BOARD_NUM}" />
													</p></td>
												<td><p class="title" style="margin-right: 10px;">
														<i class="lnr lnr-user"></i>
														<c:out value="${post.WRITER}" />
													</p></td>
												<td>
													<p class="regdate" style="margin-right: 10px;">
														<i class="lnr lnr-calendar-full"></i>
														<fmt:formatDate pattern="yyyy-MM-dd"
															value="${post.REGDATE}" />
													</p>
												</td>
												<td>
													<p class="hit" style="margin-right: 10px;">
														<i class="lnr lnr-eye"></i>
														<c:out value="${post.HIT}" />
													</p>
												</td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-9 col-md-9 blog_details"
							style="min-width: 100%; margin-bottom: 20px; height: 250px; border-bottom: black;">
							<c:out value="${post.BOARD_CONTENT}" />
						</div>
					</div>
					<!-- 이전글 다음글 버튼 -->
					<div class="navigation-area" style="margin-top: 0px; width: 100%;">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
								<div class="thumb" style="width: 100%;">
									<a
										href="/communityGetPrevPostNumAction.do?
									TEAM_NAME=<c:out value='${post.TEAM_NAME}'/>
									&BOARD_NUM=<c:out value='${post.BOARD_NUM}'/>">
										<img class="img-fluid"
										src="resources/shoppingMall/img/left_arrow.png" alt=""
										style="width: 30px; float: left;">
									</a> <a
										href="/communityGetNextPostNumAction.do?TEAM_NAME=<c:out value='${post.TEAM_NAME}'/>
									&BOARD_NUM=<c:out value='${post.BOARD_NUM}'/>"><img
										class="img-fluid"
										src="resources/shoppingMall/img/right_arrow.png" alt=""
										style="width: 30px; float: right;"> </a>
								</div>
							</div>
						</div>
					</div>
					<!-- 이전글 다음글 버튼 끝 -->
					<div class="fileUpload-area" style="border-top: 0.5px solid; border-color: #6c757d6b;">
						<table style="width: 100%; margin-top: 15px;">
							<tr>
								<td><p>
										<c:if test="${post.UPLOADFILE ne null}">
										첨부파일: 
										<a href='#'>${post.UPLOADFILE}</a>
										</c:if>
									</p></td>
								<td style="float: right;">
								<a href="/community_modify.do?BOARD_NUM=<c:out value="${post.BOARD_NUM}"/>"
									id="modify_post" class="genric-btn primary radius"
									style="background-color: #57c051;">수정</a>
								<a id="delete_post" class="genric-btn primary radius"
									style="background-color: #f44a40;">삭제</a>
								<a class="genric-btn primary radius" id="reportBtn0"
									style="background-color: #a03730;"
									onclick="report(0)">신고</a>
								<a href="/community_list.do?TEAM_NAME=<c:out value="${post.TEAM_NAME}"/>"
									id="go_list" class="genric-btn primary radius"
									style="background-color: #827b7b;">목록</a>
								</td>
							</tr>
						</table>
					</div>

					<div class="comment-list-write">
						<div class="single-comment justify-content-between d-flex"
							style="border-bottom: 1.5px solid #eee;">
							<div class="user justify-content-between d-flex"
								style="min-width: 100%;">
								<div class="desc" style="min-width: 100%; margin-top: 10px; margin-bottom: 40px;">
									<h5 id="reply_writer" style="padding-top: 10px;">테스터</h5>
									<p class="write_date"
										style="font-size: 13px; color: #cccccc; margin-bottom: 13px;">
										<!-- sysdate 받아와야 함 -->
										<fmt:formatDate pattern="yyyy-MM-dd" value="${post.REGDATE}" />
									</p>
									<div id="wrapper">
										<div style="order: 1; width: 100%;">
											<input type="text" name="reply_content" id="reply_content" placeholder="댓글을 입력하세요." style="width: 100%; height: 100px;" />
										</div>
										<div class="reply-btn" style="float: left; order: 2; text-align: center;">
											<input type="button" class="genric-btn primary radius" id="reply_submit" style="background-color: #57c051; height: 100%;" value="등록"/>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="comments-area">
						<!-- 댓글 -->
						<h4 id="getComments"></h4>
						<div class="comment-list-show"></div>
					</div>

					<div class="panel-footer"></div>
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
					<div class="name" style="height: 50px; background: #57c051; margin-top: 50px; color: #fff; text-align: center; line-height: 1.9em; font-size: 24px">
							BB 채팅방</div>
					<div class="mesgs">
						<input type="hidden" id="userid" value="${nickname }">
						<ul id="discussion" style="width: 100%; height: 500px; border: 4px solid #d7e2d4; margin: auto; padding-left: 0px; background: #fff;"></ul>
						<div class="type_msg">
							<div class="input_msg_write">
								<input type="text" class="write_msg" id="message" placeholder="메세지를 입력하세요." onkeyup="enterkey()">
								<button class="msg_send_btn" id="btnSend" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 뉴스 크롤링 -->
				<div class="col-lg-12" style="margin-top: 40px;">
					<div class="l_w_title">
						<h3 style="text-align: center; font-size: 17px; font-weight: bold; color: lightcoral;">스포츠
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

	<!-- ===============신고 모달 Area ==================== -->
	<div class="modal fade" id="report_modal" tabindex="-1" role="dialog"
		aria-labelledby="report_modal_label" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width:30%;margin:8% auto;">
				<div class="modal-header">
					<h2 class="text-black" style="font-weight: bold;">신고하기</h2>
					<span class="close" data-dismiss="modal">&times;</span>
				</div>
				<div class="modal-body" style="margin-left:3%">
					<div class="row">
						<div class="col-md-11">
							<form id="reportForm" role="form">
							<input type="hidden" name="BOARD_NUM" value="<c:out value='${post.BOARD_NUM}'/>"/>
							<input type="hidden" id="REPLY_NUM"/> 
								<div class="form-group row">
					<table>
						<tr class="report_content">
							<td><p style="margin-bottom: 0px;">작성자:</p></td>
							<td><input type="text" name="WRITER"
								class="form-control" id="WRITER" readonly /></td>
						</tr>
						<tr>
							<td><p style="margin-bottom: 0px;">신고 내용 주소:</p></td>
							<td><input type="text" name="URI" class="form-control" style="width:140%;"
								value=<%=url %> readonly /></td>
							
						</tr>

						<tr>
							<td><p style="margin-bottom: 0px;">신고 카테고리:</p></td>
							<td><select class="nice-select" name="RE_CATEGORY">
									<option value="header">신고사유</option>
									<option value="swear">욕설</option>
									<option value="flood">도배</option>
									<option value="advertisement">광고</option>
									<option value="pornography">음란물</option>
							</select></td>
						</tr>
					</table>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer" align="center">
					<button class="genric-btn default radius" id="submitReport">제출</button>
					<button type="button" class="genric-btn danger radius"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 댓글 기능 구현된 js > reply.js -->
	<script type="text/javascript" src="/resources/community/js/reply.js">
	</script>
	
	<script>		
		var bnoValue = '<c:out value="${post.BOARD_NUM}"/>';
		
		var replyDIV = $(".comment-list-show");
		
		var totalCommentNumH4 = $("#getComments"); 
		
		var number = $("#get_reply_num").val();
		showList(-1);
		
		// 글 상세 > 글 삭제버튼 클릭 시 동작
	    $("#delete_post").click(function(){
	    	if(confirm("글을 삭제하시겠습니까?") == true){
	    		location.href="/communityDeleteAction.do?BOARD_NUM=<c:out value="${post.BOARD_NUM}"/>&TEAM_NAME=<c:out value="${post.TEAM_NAME}"/>"    
	    	} else{
	    		return false;
	    	}
	    });

		// 댓글 뿌리는 함수
		
		function showList(page){
			
			replyService.getList(
			{board_num:bnoValue, PAGENUM: page|| 1}, function(replyCnt, list){
				
				if(page == -1){
					pageNum = Math.ceil(replyCnt/10.0);
					showList(pageNum);
					return;
				}
				
				var str = "";
				var str2 = "";
				
				// 댓글이 없는 경우
				if(list == null || list.length == 0){
					replyDIV.html("<p style='text-align:center;'>등록된 댓글이 없습니다.</p>");
					totalCommentNumH4.empty();
					return;
				}
				for(var i = 0, len = list.length || 0; i < len; i++){
					str += "<div class='single-comment justify-content-between d-flex'";
					str += "style='padding-bottom:28px;'>"
					str += "<div class='user justify-content-between d-flex'>";
					str += "<div class='desc'>";
					str += "<input type='hidden'";
					str += "id='get_reply_num"+[i]+"'";
					str += "value="+list[i].reply_num+">"
					str += "<h5>"+list[i].writer+"</h5>";
					str += "<p class='date'>"+replyService.displayTime(list[i].regdate)+"</p>";
					str += "<p class='comment'>"+list[i].reply_content+"</p>";
					str += "</div>";
					str += "</div>";
					str += "<div class='reply-btn'>";
					str += "<a class='lnr lnr-pencil' ";
					str += "data-toggle='tooltip' title='수정' ";
					str += "style='font-weight: bold; padding-right: 20px;'"
					str += "onclick='modify("+list[i].reply_num+")'></a>";
					str += "<a class='lnr lnr-trash' ";
					str += "data-toggle='tooltip' title='삭제' ";
					str += "style='font-weight: bold; padding-right: 20px;' "
					str += "id='"+list[i].reply_num+"delete_replyBtn' ";
					str += "onclick='delete_board("+list[i].reply_num+")'></a>";
					str += "<a class='lnr lnr-flag' ";
					str += "data-toggle='tooltip' title='신고' ";
					str += "id='reportBtn"+list[i].reply_num+"' ";
					str += "style='font-weight: bold;' ";
					str += "onclick='report("+list[i].reply_num+")'></a>";
					str += "</div>";
					str += "</div>";
					str += "<div id='wrapper' style='margin-bottom: 28px;'>";
					str += "<input type='text'";
					str += "class='"+list[i].reply_num+"content'";
					str += "style='order:1;width:50%;padding-bottom:20px;display:none;'>";
					str += "<button type='submit'";
					str += "class='genric-btn default radius'";
					str += "id='"+list[i].reply_num+"modify_replyBtn'";
					str += "style='order:2;display:none;line-height:24px;'>수정</button>"
					str += "</div></div>";
				}
				str2 += "<h4 id='getComments'>댓글 "+replyCnt+"개</h4>"
				replyDIV.html(str);
				totalCommentNumH4.html(str2);
				showReplyPage(replyCnt);
			}); // end function
			
			$(document).ready(function(){
				
				$('[data-toggle="tooltip"]').tooltip();   
			});
		} // end showList
		
		// 댓글 추가
		var reply_writer = $("#reply_writer");
		var reply_date = $(".write_date");
		var reply_content = $("#reply_content");
		var reply_submit = $("#reply_submit");
		
		reply_submit.on("click", function(e){
			
			if(confirm("댓글을 등록하시겠습니까?") == true){
			
				var reply= {
						writer : reply_writer[0].innerText,
						regdate : reply_date[0].innerText,
						reply_content : reply_content[0].value,
						board_num : bnoValue
				};
				replyService.add(reply, function(result){
				
					reply_content[0].value = "";
					
					// 전체 댓글의 숫자를 파악하게 한다.
					//showList(1);
					showList(-1);

				});
			}
			 else{
		    		return false;
		    	}
		}); // end reply_submit onclick
		
		// 댓글 수정
		function modify(reply_num){
			
		//	$("."+reply_num+"content").toggle();
		
			$("."+reply_num+"content").toggle();
			$("#"+reply_num+"modify_replyBtn").toggle();

			var modalInputContent = $("."+reply_num+"content");
			
			replyService.get(reply_num, function(reply){
				
				modalInputContent.val(reply.reply_content);
			});
			
			var reply = {reply_num : reply_num, reply_content : modalInputContent.val()};
			
			// 수정하기 버튼 
			
			$("#"+reply_num+"modify_replyBtn").on("click", function(e){
				
				if(confirm("댓글을 수정하시겠습니까?") == true){
					var reply = {reply_num : reply_num, reply_content : modalInputContent.val()};
			
					replyService.update(reply, function(result){

					showList(pageNum);
					});
				} else{
					return false;
				}
					 
			}) // end $("#modify_replyBtn").onclick
			
		} // end function modify;
		

		function delete_board(reply_num) {

			if (confirm("댓글을 삭제하시겠습니까?") == true) {

				replyService.remove(reply_num, function(result) {
					showList(pageNum);
				});

			} else {
				return false;
			}
		}

		// .panel-footer에 페이지 번호 출력하는 로직
		var pageNum = 1;
		var replyPageFooter = $(".panel-footer");

		function showReplyPage(replyCnt) {

			var endNum = Math.ceil(pageNum / 10.0) * 10;
			var startNum = endNum - 9;

			var prev = startNum != 1;
			var next = false;

			if (endNum * 10 >= replyCnt) {
				endNum = Math.ceil(replyCnt / 10.0);
			}

			if (endNum * 10 < replyCnt) {
				next = true;
			}

			var str = "<ul class='pagination'>";

			if (prev) {
				str += "<li class='page-item' style='margin-left: auto; margin-right: auto; margin-top: 20px;'><a class='page-link' href='"
						+ (startNum - 1) + "'>Previous</a></li>";
			}

			for (var i = startNum; i <= endNum; i++) {

				var active = pageNum == i ? "active" : "";

				str += "<li class='page-item " + active + " ' style='margin-left: auto; margin-right: auto; margin-top: 20px;'><a class='page-link' href='"+i+"'>"
						+ i + "</a></li>";
			}

			if (next) {
				str += "<li class='page-item' style='margin-left: auto; margin-right: auto; margin-top: 20px;'><a class='page-link' href='"
						+ (endNum + 1) + "'>Next</a></li>";
			}

			str += "</ul></div>";

			replyPageFooter.html(str);
		} // end showReplyPage

		// 페이지의 번호를 클릭했을 때 새로운 댓글 가져오는 부분

		replyPageFooter.on("click", "li a", function(e) {

			e.preventDefault();

			var targetPageNum = $(this).attr("href");

			pageNum = targetPageNum;

			showList(pageNum);
		}); // end replyPageFooter onclick
	</script>
	
	<!-- 신고하기 버튼 처리 -->
	<script>

	function report(num){
	
		// 댓글 신고인 경우
		if(num != 0){
			replyService.get(num, function(reply){
				$('#WRITER').val(reply.writer);
				$('#REPLY_NUM').attr("name", "REPLY_NUM");
			});
		} else{
			$('#WRITER').val("<c:out value='${post.WRITER}'/>");
		}
		$('#REPLY_NUM').val(num);
		$("#report_modal").modal();
	}
	
	// 신고 등록
    $("#submitReport").click(function(){   
    	if(confirm("신고 접수하시겠습니까?") == true){
    		if($('#REPLY_NUM').val() != 0){
    		alert('댓글신고입니다');
    		$('#reportForm').attr("action","/reportReply_registerAction.do");
    		$('#reportForm').attr("method","POST");
    		$('#reportForm')[0].submit();  
    		} else{
    			alert('게시글 신고입니다.');
        		$('#reportForm').attr("action","/reportBoard_registerAction.do");
        		$('#reportForm').attr("method","POST");
        		$('#reportForm')[0].submit();  
    		}
    	} else{
    		return false;
    	}
    });
	</script>
	
	<script>
	$('ul.list_news li a').attr('target', '_blank');
	
	$(document).ready(function(){
		
		$('[data-toggle="tooltip"]').tooltip();   
	});
	</script>
	
	<!-- HTML WebSocket 채팅 -->
	<script type="text/javascript">
        var connection = $.hubConnection('http://demo.dongledongle.com/');
        var chat = connection.createHubProxy('chatHub');
        var sentMsg = '';

        $(document).ready(function () {

            chat.on('addNewMessageToPage', function (name, message) {
            	
            	var currDate = new Date();
            	
            	if (htmlEncode(name) == '${nickname}') {
            		
	            	sentMsg += '<div class="outgoing_msg">';
	            	sentMsg += '<div class="sent_msg">';
	            	sentMsg += '<p>' + htmlEncode(message) + '</p>';
	            	sentMsg += '<span class="time_date">' + htmlEncode(name) + " " + getTimeStamp() + '</span>';
	            	sentMsg += '</div></div>';
            	
            	} else {

            		sentMsg += '<div class="incoming_msg">';
	            	sentMsg += '<div class="received_msg">';
	            	sentMsg += '<div class="received_withd_msg">';
	            	sentMsg += '<p>' + htmlEncode(message) + '</p>';
	            	sentMsg += '<span class="time_date">' + htmlEncode(name) + " " + getTimeStamp() + '</span>';
	            	sentMsg += '</div></div></div>';
            	}
            	
                $('#discussion').append(sentMsg);
                sentMsg = '';
            });

            $('#message').focus();

            connection.start({ jsonp: true }).done(function () {

                $('#btnSend').click(function () {
                    chat.invoke('send', $('#userid').val(), $('#message').val());
                    $('#message').val('').focus();
                });
            });
        });

        // 시간 포맷 함수
        function htmlEncode(value) {
            var encodedValue = $('<div />').text(value).html();
            return encodedValue;
        }

		function getTimeStamp() {
			
			var d = new Date();
			var s = leadingZeros(d.getFullYear(), 4) + '-'
					+ leadingZeros(d.getMonth() + 1, 2) + '-'
					+ leadingZeros(d.getDate(), 2) + ' ' 
					+ leadingZeros(d.getHours(), 2) + ':'
					+ leadingZeros(d.getMinutes(), 2) + ':'
					+ leadingZeros(d.getSeconds(), 2);

			return s;
		}

		function leadingZeros(n, digits) {
			
			var zero = '';
			n = n.toString();

			if (n.length < digits) {
				for (i = 0; i < digits - n.length; i++)
					zero += '0';
			}
			return zero + n;
		}

		// 엔터키 눌렀을 때 메세지 입력되게 하는 함수
		function enterkey() {
			if (window.event.keyCode == 13) {
				$('#btnSend').click();
			}
		}
	</script>

	<%@ include file="../include/community_footer.jsp"%>
</body>
</html>