<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
 <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- 스마트 에디터 -->
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/smarteditor/js/HuskyEZCreator.js"></script>

  <!--   Core JS Files   -->
  
   <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" /> 
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/arrive.min.js"></script>
 <script>
 $(document).ready(function() {  
	 
	 $(".sidebar-wrapper li").eq(5).addClass('active');
	 
 var editor_object=[];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef:editor_object,
		elPlaceHolder: "contents_notice",
		sSkinURI:"${pageContext.request.contextPath}/resources/smarteditor/SmartEditor2Skin.html",
		fCreator: "createSEditor2",
		htParams:{
			//툴바 사용 여부 true는 사용,false는 사용하지 않음.
			bUseToolbar:true,
			//입력창 크기 조절바 사용 여부 true는 사용 false는 사용하지 않음.
			bUserVerticalResizer:true,
			//모드 탭(editor/html/text) 사용여부 (true사용 false는 사용하지 않음)
			bUserModeChanger:true,	
		}
	});
 });
	
	$('#anserSubmit').click(function(){
		//id가 contents인 textarea에 에디터에서 대입해온다
		editor_object.getById['contents'].exec("UPDATE_CONTENTS_FILED",[]);
		//이부분에서 서브밋발생
		$('answerForm').submit();
		
		
	});
 
 </script>
  
<style>
@font-face {
	font-family: 'NanumBarunpen';
	font-weight: normal;
	src: local(NanumBarunpen);
	src: url("resources/font/nanumbarunpenR.eot");
	src: url("resources/font/nanumbarunpenR.woff") format("woff"),
		url("resources/font/nanumbarunpenR.woff2") format("woff2")
}

@font-face {
	font-family: 'NanumBarunpen';
	font-weight: bold;
	src: local(NanumBarunpen);
	src: url("font/NanumBarunpenB.eot");
	src: url("font/NanumBarunpenB.woff") format("woff"),
		url("font/NanumBarunpenB.woff2") format("woff2")
}

body {
	font-family: NanumBarunpen, sans-serif
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}
</style>
</head>
<body>
<%@include file='sidebar.jsp' %>
<div class='main-panel'>
<%@include file='top_nav.jsp' %>
	<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">Notice</h4>
									<p class="card-category">공지사항을 작성할수 있습니다..</p>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table"
											style="background-color: rgba(230, 236, 236, 0.4); margin-top: 10px">
											<thead class=" text-primary">
												<form enctype="multipart/form-data">
													<table width=100% cellspacing=0 cellpadding=0 align=center>
														<div class=modifyForm>
															<tr>
															<td><label for="category">카테고리</label> &nbsp; &nbsp;
																<select name="selectCategory" id="selectCategory">
																	<option value="엘지">LG</option>
																	<option value="키움">Kiwoom</option>
																	<option value="기아">Kia</option>
																	<option value="한화">Hanwha</option>
																	<option value="롯데">Lotte</option>
																	<option value="삼성">Samsung</option>
																	<option value="엔씨">NC</option>
																	<option value="두산">Doosan</option>
																	<option value="케이티">KT</option>
																	<option value="에스케이">SK</option>
															</select></td>
														</tr>
															<br>
															
															<tr>
																<td><label for="writer">작성자</label> <input
																	text="text" class="form-control" id="FAQ_writer"
																	name="FAQ_writer"></td>
															</tr><br>
					
															

															<tr>
																<td><label for="FAQ_Contents">제목</label> <input
																	text="text" class="form-control" id="FAQ_Contents"
																	name="FAQ_Contents" placeholder="제목 을 적으세요">

																</td>
															</tr><br>

															<tr>
																<td><label for="FAQ_Contents">상세내용</label> 
																

																</td>
															</tr><br>
															
															<tr>
																<td> 
																<textarea name="contents_notice" id="contents_notice" cols="90" rows="15" ></textarea>
																<textarea name="contents_notice" id="contents_notice" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;"></textarea>
																</td>
															</tr><br>
															
														
														 	
														 	<tr>
														 	<td ><input type='submit' class="btn btn-info" id=FAQsubmit name=FAQsubmit value="상품등록">
															</td>
															</tr>
															
														</div>
													</table>



												</form>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
</div>
</body>
</html>