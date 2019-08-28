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
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
 
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/core/popper.min.js"></script>
  <script src="resources/admin_bootstrap/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src=".${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
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
label{
	font-weight:bold;
	font-size:large;
	color:#50bcdf;
	
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
									<h4 class="card-title ">FAQ작성</h4>
									<p class="card-category">FAQ를 작성할수 있습니다..</p>
								</div>
								<div class="card-body">
									<div class="table-responsive">
												<form action="write_FAQ.do">
										<table class="table"
											style="background-color: rgba(230, 236, 236, 0.4); margin-top: 10px">
											<thead class=" text-primary">
													<table width=100% cellspacing=0 cellpadding=0 align=center>
														<div class=modifyForm>
															<tr>
																<td><label for="category">카테고리</label> &nbsp; &nbsp;
																 <select class="form-control" name="FAQ_CATEGORY" id="selectCategory">
																 		<option value="default">선택</option>
																		<option value="변경/취소">변경/취소</option>
																		<option value="교환/반품">교환/반품</option>
																		<option value="상품문의">상품문의</option>
																		<option value="주문/조회">주문조회</option>
																</select>
																<br>
																</td>
																
															</tr>
															
															<tr>
																<td><label for="FAQ_Contents">제목</label> <input
																	text="text" class="form-control" id="FAQ_Contents"
																	name="SUBJECT" placeholder="제목 을 적으세요">
																<br>
																</td>
															</tr>
															

															<tr>
																<td><label for="FAQ_Contents">상세내용</label> <input
																	text="text" class="form-control" id="FAQ_Contents"
																	name="CONTENT" placeholder="상세 내용을 적으세요">
																<br>
																</td>
															</tr>
														
														 	
														 	<tr>
														 	<td style="text-align:center" ><input type='submit' class="btn btn-info" id=FAQsubmit name=FAQsubmit value="상품등록">
															</td>
															</tr>
															
														</div>
													</table>



											</tbody>
										</table>
												</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
</div>

<script>
$(document).ready(function(){
	$().ready(function() {
		
		$(".sidebar-wrapper li").eq(4).addClass('active');
	
});
	});
									
</script>
</body>
</html>