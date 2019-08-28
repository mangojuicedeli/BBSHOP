<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ include file="../include/shopping_header.jsp" %>

<script type="text/javascript"
	src="resources/community/js/smarteditor/js/service/HuskyEZCreator.js"
	charset="utf-8">
	
	
	</script>


<body>
<div style="margin-bottom:100px;">
</div>
	<div class="section-top-border">
		<div class="row">
			<div class="col-lg-6 col-md-6" style="margin-left:auto;margin-right:auto;text-align:center;">
				<h3 class="mb-30 title_color" style="font-weight:bold;">1대1 문의 수정</h3>
				<form id="writeForm" action="/onetoone_modifyAction.do">
					<div class="mt-10">
						<input type="text" value="${nickname}" required class="single-input" readonly>
						<input type="hidden" name="one_one_num" value="${board.one_one_num}"/>
					</div>
					<div class="mt-10">
						<input type="text" name="one_title" value="${board.one_title}" required class="single-input">
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<div class="form-select" id="default-select" >
							<select name="one_category">	
								<option value="--" >--</option>
								<option value="주문/배송">주문배송</option>
								<option value="상품관련">상품관련</option>
								<option value="결제관련">결제관련</option>
								<option value="기타">기타</option>
							</select>
						</div>
					</div>
					<div class="mt-10">
						<!-- <textarea name="content" id="ir1" rows="10" cols="100"
							style="width: 766px; height: 412px; display: none;"></textarea> -->
						<textarea name="one_contents" id="ir1" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;">
						</textarea>
					</div>
					<input type='hidden' name='pageNum' value='<c:out value="${pagingVO.pageNum}"/>'>
					<input type='hidden' name='amount' value='<c:out value="${pagingVO.amount}"/>'>
				
					<div class="mt-10">
						<table style="width:100%;">
							<tr>
								<td align="center"><br /> <input type="submit" value="수정" style="float:right;"/></td>
								<td align="center"><br /> <input type="button" value="취소" style="float:left;"
									onclick='history.back(-1); return false;' /></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var oEditors = [];

		var sLang = "ko_KR"; // 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

		//추가 글꼴 목록
		//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "resources/community/js/smarteditor/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
				fOnBeforeUnload : function() {

				},
				I18N_LOCALE : sLang
			}, //boolean
			fOnAppLoad : function() {
				//예제 코드
				oEditors.getById["ir1"].exec("PASTE_HTML", ["<c:out value='${board.one_contents}'/>"]);
			},
			fCreator : "createSEditor2"
		});
	</script>
	
	<script>
	// 카테고리 불러와서 select 옵션 적용하는 과정
	$('select').find("option[value='${board.one_category}']").prop("selected", true);
	
	</script>
</body>

<%@ include file="../include/shopping_footer.jsp" %>
