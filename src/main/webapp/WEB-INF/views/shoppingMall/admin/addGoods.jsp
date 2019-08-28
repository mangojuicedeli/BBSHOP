<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/demo/demo.css" rel="stylesheet" />
  
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
	src: url("font/nanumbarunpenB.eot");
	src: url("font/nanumbarunpenB.woff") format("woff"),
		url("font/nanumbarunpenB.woff2") format("woff2")
}

body {
	font-family: NanumBarunpen, sans-serif
}

label{
	font-weight:bold;
	font-size:large;
	color:#50bcdf;
	
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

<body class="">
<%@include file='sidebar.jsp' %>
  
		<div class="main-panel">
			<!-- Navbar -->
			<%@include file='top_nav.jsp' %>
			<!-- End Navbar -->
			<div class="content">
				 <div class="container-fluid" style='padding-left:5%; padding-right:5%'>
					<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title ">상품 등록</h4>
								<p class="card-category">상품을 등록할수 있습니다.</p>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<form enctype="multipart/form-data" action="insertGoods.do"	method="post">
										<table width=100% cellspacing=0 cellpadding=0 align=center>

											<thead class=" text-primary">
											<tbody>

												<tr>
													<td><label for="category">카테고리</label> &nbsp; &nbsp; <select
														class="form-control" name='CATEGORY' id="selectCategory">
															<option value="default">선택</option>
															<option value="1">글러브</option>
															<option value="2">배트</option>
															<option value="3">유니폼</option>
															<option value="4">야구화</option>
															<option value="5">야구공</option>
													</select> <br></td>
												</tr>

												<tr>
													<td><label for="goodsName">상품명</label> <input
														text="text" class="form-control" id="goodsName"
														name="NAME" placeholder="상품명을 적으세요"> <br></td>
												</tr>

												<tr>
													<td><label for="goodsPrice">가격</label> <input
														text="text" class="form-control" id="goodsPrice"
														name="PRICE" placeholder="가격을 적으세요"> <br></td>
												</tr>

												<tr>
													<td><label for="goodsContents">상세내용</label> <input
														text="text" class="form-control" id="goodsContents"
														name="DETAIL" placeholder="상세 내용을 적으세요"> <br></td>
												</tr>


												<tr>
													<td>
														<table width=100% colspan=2>
															<tr>

																<td width=33% height=33%><label for="goodsImage">상품이미지</label>&nbsp;&nbsp;&nbsp;&nbsp;
																	<img style="width: 34%; height: 34%;"
																	id="image_section" style='text-align:center'> <input
																	type="file" id="imgInput" name="IMG"> <!-- <label for ="goodsImage">상품 이미지</label>&nbsp;&nbsp;&nbsp;&nbsp;
																		<img style="width:34%; height:34%;" id="image_section" style='text-align:center'> <input type="file" id="imgInput"> -->

																	<br></td>

																<td width=33% height=33%><label for="goodsImage2">추가
																		이미지</label>&nbsp;&nbsp;&nbsp;&nbsp; <img
																	style="width: 33%; height: 33%; max-height: 20%;" id="image_section2"
																	style='text-align:center'> <input type="file"
																	id="imgInput2" name="IMG"> <br></td>

																<td width=33% height=33%><label for="goodsImage3">추가
																		이미지</label>&nbsp;&nbsp;&nbsp;&nbsp; <img
																	style="width: 33%; height: 33%; max-height: 5%;" id="image_section3"
																	style='text-align:center'> <input type="file"
																	id="imgInput3" name="IMG"> <br></td>

															</tr>
														</table>
													</td>
												</tr>

												<tr>
													<br>
													<br>
													<td><label for="goodsContents">제조사</label> <input
														text="text" class="form-control" id="goodsBrand"
														name="BRAND" placeholder="제조사를 적으세요"> <br></td>
												</tr>
												<tr>
													<td><label for="goodsAmount">재고 수량</label> <input
														text="text" class="form-control" id="goodsAmount"
														name="STOCK" placeholder="수량을 적으세요"> <br></td>
												</tr>
												<tr>
													<td><label for="goodsPopular">인기 상품</label> <input
														type="checkbox" id="goodsPopular" name="BEST"> <br></td>
												</tr>
												<tr>
													<td><label for="goodsDiscouint">할인율</label> <input
														type="text" class="form-control" id="goodsDiscount"
														name="DISCOUNT" placeholder="할인율을 적으세요 %"> <br></td>
												</tr>

												<tr>
													<td>
													<div id="appendMoreDetail"></div>
													</td>
												</tr>
												<tr>
													<td>
														<table align=center>


															<tr>
																<td><input type='submit' class="btn btn-info"
																	id=goodsAddsubmit 
																	value="상품등록"></td>
															</tr>
														</table>
													</td>
												</tr>

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

      <footer class="footer">
     
      </footer>
    
 
  
   <script>
   
   
   
    $(document).ready(function() {
    	
    	  $(".sidebar-wrapper li").eq(1).addClass('active');
    	
    	function readURL(input) {
   		 
    	    if (input.files && input.files[0]) {
    	        var reader = new FileReader();
				reader.onload = function(e) {
					$('#image_section').attr('src',e.target.result);}
				reader.readAsDataURL(input.files[0]);
					}
				}

		$("#imgInput").change(function() {
			readURL(this);
				});
		function readURL2(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
				$('#image_section2').attr('src', e.target.result);}
					reader.readAsDataURL(input.files[0]);
					}
				}
		$("#imgInput2").change(function() {
			readURL2(this);
			});
		function readURL3(input) {	
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#image_section3').attr('src', e.target.result);
					}
				reader.readAsDataURL(input.files[0]);
						}
			}

		$("#imgInput3").change(function() {readURL3(this);});

		$("#selectCategory").on("change",function() {
			if ($("#selectCategory option:selected").val() == "1") {
			
				var append = document.getElementById("appendMoreDetail");
				var str = "<label for='goodsHand'>좌/우</label><select class='form-control' name='HAND'> <option value='0'>왼손</option><option value='1'>오른손</option></select><br>"
						+ "<label for='goodsPosition'>포지션</label> <select class='form-control' name='POSITION'><option value='pitcher'>투수</option><option value='catcher'>포수</option><option value='outfielder'>외야수</option><option value='infielder'>내야수</option></select><br><br>"
						+ "<label for='goodsTAMING'>길들이기</label><select class='form-control' name='TAMING'> <option value='1'>있음</option><option value='1'>있음</option></select><br>"
						+ "<label for='goodsColor_g'>색상</label> <input type='text' class='form-control' id='goodsColor_g' name='COLOR' placeholder='색상을 적어주세요'><br>";
						append.innerHTML = str;
			}
														if ($(
																"#selectCategory option:selected")
																.val() == "2") {
														

															var append = document
																	.getElementById("appendMoreDetail");
															var str = "<tr><td><label for='goodsMaterial'>재질</label> &nbsp;&nbsp; <input type='text' id='goodsMaterial' name='goodsMaterial' class='form-control' placeholder='재질을 적어주세요'><br></td></tr>"
																	+ "<br><tr><td><label for='goodsSize_b'>규격</label> &nbsp;&nbsp; <input type='text' id='goodsSize_b' name='goodsSize_b' class='form-control' placeholder='규격을 적어주세요'><br></td></tr>"
																	+ "<br><tr><td><label for='goodsColor_b'>색상</label> &nbsp;&nbsp; <input type='text' id='goodsColor_b' name='goodsColor_b' class='form-control' placeholder='색상을 넣어주세요'><br></td></tr>";
															append.innerHTML = str;
														}
														if ($(
																"#selectCategory option:selected")
																.val() == "3") {
															
															var append = document
																	.getElementById("appendMoreDetail");
															var str = "<tr><td><label for='goodsTeam'>구단</label>&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='LG'value='LG'>LG&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='Doosan'value='Doosan'>Doosan&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='Kia'value='Kia'>KIA&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='Samsung'value='Samsung'>Samsung&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='Kiwoom'value='Kiwoom'>kiwoom&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='KT'value='KT'>KT&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='SK'value='SK'>SK&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='Hanwha'value='Hanwha'>Hanwha&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsTeam' name='NC'value='NC'>NC&nbsp;&nbsp;&nbsp;&nbsp;<br></td></tr>"
																	+ "<tr><td><label for='goodsWear'>홈/어웨이</label> &nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsWear' name='goodsWear' value='Home'>Home &nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsWear' name='goodsWear' value='Away'>Away <br></td></tr>"
																	+ "<tr><td><label for ='goodsSize'>사이즈</label>&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsSize_u' name='85'value='85'>85&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsSize_u' name='90'value='90'>90&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsSize_u' name='95'value='95'>95&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsSize_u' name='100'value='100'>100&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsSize_u' name='105'value='105'>105&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsSize_u' name='110'value='110'>110<br> </td></tr>";
															append.innerHTML = str;
														}
														if ($(
																"#selectCategory option:selected")
																.val() == "4") {
															
															var append = document
																	.getElementById('appendMoreDetail');
															var str = "<tr><td><label for='goodsShoes'>스파이크</label>&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes' name='spike' value='spike'>있음&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes' name='no' value='no'>없음<br>"
																	+ "<tr><td><label for='goodsSize_s'>사이즈</label>&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes_s' name='230' value='230'>230&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes_s' name='240' value='240'>240&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes_s' name='250' value='250'>250&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes_s' name='260' value='260'>260&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes_s' name='270' value='270'>270&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsShoes_s' name='280' value='280'>280<br></td></tr>"
																	+ "<tr><td><label for='goodsColor_s'>색상</label>&nbsp;&nbsp;"
																	+ "<input type='text'id='goodsColor_s' name='goodsColor_s' class='form-control' placeholder='색상을 적어주세요'></td></tr>";

															append.innerHTML = str;
														}
														if ($(
																"#selectCategory option:selected")
																.val() == "5") {
															
															var append = document
																	.getElementById('appendMoreDetail');
															var str = "<tr><td><label for='goodsUsage'>용도</label>&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsUsage' name='goodsUsage' value='competition'>시합용 &nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='goodsUsage' name='GoodsUsage' value='safety'>안전용<br></td></tr>"
																	+ "<tr><td><label for='sellAmount'>판매단위</label>&nbsp;&nbsp;&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='sellAmount' name='sellAmount' value='dozen'>다스&nbsp;&nbsp;"
																	+ "<input type='checkbox' id='sellAmount' name='sellAmount' value='individual'>낱개</td><tr>";

															append.innerHTML = str;
														}

													});

									$()
											.ready(
													function() {

														$sidebar = $('.sidebar');

														$sidebar_img_container = $sidebar
																.find('.sidebar-background');

														$full_page = $('.full-page');

														$sidebar_responsive = $('body > .navbar-collapse');

														window_width = $(window)
																.width();

														fixed_plugin_open = $(
																'.sidebar .sidebar-wrapper .nav li.active a p')
																.html();

														$(
																'.fixed-plugin .background-color .badge')
																.click(
																		function() {
																			$(
																					this)
																					.siblings()
																					.removeClass(
																							'active');
																			$(
																					this)
																					.addClass(
																							'active');

																			var new_color = $(
																					this)
																					.data(
																							'background-color');

																			if ($sidebar.length != 0) {
																				$sidebar
																						.attr(
																								'data-background-color',
																								new_color);
																			}
																		});

														$(
																'.fixed-plugin .img-holder')
																.click(
																		function() {
																			$full_page_background = $('.full-page-background');

																			$(
																					this)
																					.parent(
																							'li')
																					.siblings()
																					.removeClass(
																							'active');
																			$(
																					this)
																					.parent(
																							'li')
																					.addClass(
																							'active');

																			var new_image = $(
																					this)
																					.find(
																							"img")
																					.attr(
																							'src');

																			if ($sidebar_img_container.length != 0
																					&& $('.switch-sidebar-image input:checked').length != 0) {
																				$sidebar_img_container
																						.fadeOut(
																								'fast',
																								function() {
																									$sidebar_img_container
																											.css(
																													'background-image',
																													'url("'
																															+ new_image
																															+ '")');
																									$sidebar_img_container
																											.fadeIn('fast');
																								});
																			}

																			if ($full_page_background.length != 0
																					&& $('.switch-sidebar-image input:checked').length != 0) {
																				var new_image_full_page = $(
																						'.fixed-plugin li.active .img-holder')
																						.find(
																								'img')
																						.data(
																								'src');

																				$full_page_background
																						.fadeOut(
																								'fast',
																								function() {
																									$full_page_background
																											.css(
																													'background-image',
																													'url("'
																															+ new_image_full_page
																															+ '")');
																									$full_page_background
																											.fadeIn('fast');
																								});
																			}

																			if ($('.switch-sidebar-image input:checked').length == 0) {
																				var new_image = $(
																						'.fixed-plugin li.active .img-holder')
																						.find(
																								"img")
																						.attr(
																								'src');
																				var new_image_full_page = $(
																						'.fixed-plugin li.active .img-holder')
																						.find(
																								'img')
																						.data(
																								'src');

																				$sidebar_img_container
																						.css(
																								'background-image',
																								'url("'
																										+ new_image
																										+ '")');
																				$full_page_background
																						.css(
																								'background-image',
																								'url("'
																										+ new_image_full_page
																										+ '")');
																			}

																			if ($sidebar_responsive.length != 0) {
																				$sidebar_responsive
																						.css(
																								'background-image',
																								'url("'
																										+ new_image
																										+ '")');
																			}
																		});

														$(
																'.switch-sidebar-image input')
																.change(
																		function() {
																			$full_page_background = $('.full-page-background');

																			$input = $(this);

																			if ($input
																					.is(':checked')) {
																				if ($sidebar_img_container.length != 0) {
																					$sidebar_img_container
																							.fadeIn('fast');
																					$sidebar
																							.attr(
																									'data-image',
																									'#');
																				}

																				if ($full_page_background.length != 0) {
																					$full_page_background
																							.fadeIn('fast');
																					$full_page
																							.attr(
																									'data-image',
																									'#');
																				}

																				background_image = true;
																			} else {
																				if ($sidebar_img_container.length != 0) {
																					$sidebar
																							.removeAttr('data-image');
																					$sidebar_img_container
																							.fadeOut('fast');
																				}

																				if ($full_page_background.length != 0) {
																					$full_page
																							.removeAttr(
																									'data-image',
																									'#');
																					$full_page_background
																							.fadeOut('fast');
																				}

																				background_image = false;
																			}
																		});

														$(
																'.switch-sidebar-mini input')
																.change(
																		function() {
																			$body = $('body');

																			$input = $(this);

																			if (md.misc.sidebar_mini_active == true) {
																				$(
																						'body')
																						.removeClass(
																								'sidebar-mini');
																				md.misc.sidebar_mini_active = false;

																				$(
																						'.sidebar .sidebar-wrapper, .main-panel')
																						.perfectScrollbar();

																			} else {

																				$(
																						'.sidebar .sidebar-wrapper, .main-panel')
																						.perfectScrollbar(
																								'destroy');

																				setTimeout(
																						function() {
																							$(
																									'body')
																									.addClass(
																											'sidebar-mini');

																							md.misc.sidebar_mini_active = true;
																						},
																						300);
																			}

																			// we simulate the window Resize so the charts will get updated in realtime.
																			var simulateWindowResize = setInterval(
																					function() {
																						window
																								.dispatchEvent(new Event(
																										'resize'));
																					},
																					180);

																			// we stop the simulation of Window Resize after the animations are completed
																			setTimeout(
																					function() {
																						clearInterval(simulateWindowResize);
																					},
																					1000);

																		});
													});
								});
			</script>
</body>

</html>
