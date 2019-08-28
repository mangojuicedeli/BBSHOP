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
.input-group.no-border {
	margin-left: 50px;
}

#choice {
	position: absolute;
	left: 1000px;
}
.pagination {
	margin-left: 300px;
}


</style>
</head>

<body class="">
	<%@include file='sidebar.jsp' %>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">후기 관리</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<form class="navbar-form">
							<div class="input-group no-border">
								<input type="text" value="" class="form-control">
								<button type="submit"
									class="btn btn-white btn-round btn-just-icon">
									<i class="material-icons">search</i>
									<div class="ripple-container"></div>
								</button>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="material-icons">dashboard</i>
									<p class="d-lg-none d-md-block">Stats</p>
							</a></li>
							<li class="nav-item dropdown"><a class="nav-link"
								href="http://example.com" id="navbarDropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="material-icons">notifications</i>
									<span class="notification">5</span>
									<p class="d-lg-none d-md-block">Some Actions</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">Mike John responded to
										your email</a> <a class="dropdown-item" href="#">You have 5
										new tasks</a> <a class="dropdown-item" href="#">You're now
										friend with Andrew</a> <a class="dropdown-item" href="#">Another
										Notification</a> <a class="dropdown-item" href="#">Another One</a>
								</div></li>
							<li class="nav-item dropdown"><a class="nav-link"
								href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="material-icons">person</i>
									<p class="d-lg-none d-md-block">Account</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownProfile">
									<a class="dropdown-item" href="#">Profile</a> <a
										class="dropdown-item" href="#">Settings</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Log out</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- end Navbar -->
			<!-- Content 데이터 뿌려주는 부분 -->
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">후기 목록</h4>
									<p class="card-category">각 상품별 후기 목록입니다.</p>
								</div>
								<div class="card-body">
									<!-- 별점 checkbox -->
									<div class="col-lg-12">
										<div class="float-right">
											<div class="input-group">
												<div class="float-right">
													<input type="checkbox" id="checkAll">전체 
													<input type="checkbox" name="score" value="1" style="margin-left: 10px;">★ 
													<input type="checkbox" name="score" value="2" style="margin-left: 10px;">★★
													<input type="checkbox" name="score" value="3" style="margin-left: 10px;">★★★ 
													<input type="checkbox" name="score" value="4" style="margin-left: 10px;">★★★★ 
													<input type="checkbox" name="score" value="5" style="margin-left: 10px;">★★★★★
												</div>
											</div>
										</div>
									</div>
									<div class="table-responsive">
										<table class="table table-hover">
											<thead class=" text-primary">
												<th style='text-align:center'>후기번호</th>
												<th style='text-align:center'>상품번호</th>
												<th style='text-align:center'>후기제목</th>
												<th style='text-align:center'>회원ID</th>
												<th style='text-align:center'>등록일</th>
												<th style='text-align:center'>별점</th>
												<th style='text-align:center'>삭제</th>
											</thead>
											<tbody id="reviewList">
												<!-- 리뷰 리스트 출력될 부분  -->
											</tbody>
										</table>
									</div>
								  <table id='table_footer'width="100%">
                      	<tr>
                      	 	<td align=left><button class='btn btn-dark btn-sm'>선택 삭제</button></td>
                      
                   
                      	<td style='text-align:center'>
                      		<ul class="pagination">
								<li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">다음</a></li>
							</ul>
                      	</td>
                      		
                      	<td style='text-align:right;' width=30%>
                      <div class="input-group no-border" style="margin-left: 0px;">
							<!-- Small button group -->
							<div class="btn-group" style='float:right'>
								<button class="btn btn-default btn-sm dropdown-toggle"
									type="button" data-toggle="dropdown" aria-expanded="false">
									검색 기준 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">글러브</a></li>
									<li><a href="#">배트</a></li>
									<li><a href="#">송장번호</a></li>
								</ul>
							</div>
							<input type="text" value="" class="form-control"
								style="margin-top: 5px">
							<button type="submit"
								class="btn btn-white btn-round btn-just-icon">
								<i class="material-icons">search</i>
								<div class="ripple-container"></div>
							</button>
						</div>
                      	 
                      	</tr>
                      </table>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors ml-auto mr-auto">
							<span class="badge filter badge-purple" data-color="purple"></span>
							<span class="badge filter badge-azure" data-color="azure"></span>
							<span class="badge filter badge-green" data-color="green"></span>
							<span class="badge filter badge-warning" data-color="orange"></span>
							<span class="badge filter badge-danger" data-color="danger"></span>
							<span class="badge filter badge-rose active" data-color="rose"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Images</li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-1.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-2.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-3.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="resources/admin_bootstrap/assets/img/sidebar-4.jpg" alt="">
				</a></li>
				<li class="button-container"><a
					href="https://www.creative-tim.com/product/material-dashboard"
					target="_blank" class="btn btn-primary btn-block">Free Download</a>
				</li>
				<!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
				<li class="button-container"><a
					href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html"
					target="_blank" class="btn btn-default btn-block"> View
						Documentation </a></li>
				<li class="button-container github-star"><a
					class="github-button"
					href="https://github.com/creativetimofficial/material-dashboard"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a></li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-twitter">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-facebook">
						<i class="fa fa-facebook-f"></i> &middot; 50
					</button> <br> <br>
				</li>
			</ul>
		</div>
	</div>

<script>
//후기 목록 출력 - ajax
function adminReviewList_Ajax() {

// pageNum값을 받아온다.
// 	var pageNum = actionForm.find("input[name='pageNum']").val();
// 	var amount = actionForm.find("input[name='amount']").val();
	var pageNum = 1;
	var amount = 5;
	var score = 0;	// 0은 전체

	var data = {};
	data["pageNum"] = pageNum;
	data["amount"] = amount;
	data["score"] = score;
	
	$('#reviewList').empty();
	
	$.ajax({
		type : "POST",
		url : "/adminReviewList_Ajax.do",
		data : JSON.stringify(data),
		dataType : "json",
		contentType : "application/json",
		success : function(data) {
			var list = data.reviewList;
			var total = data.total;
		
// 			var start = ${pageMaker.startPage};
// 			var end = ${pageMaker.endPage};
// 			var str = '';
// 			var paging = '';

			$.each(list, function(index, review) {
				var output = "";
				output += "<tr><td style='text-align:center'><input type='checkbox'>"+list[index].rv_num+"</td>";
				output += "<td style='text-align:center'>"+list[index].goods_num+"</td>";
				output += "<td style='text-align:center'>"+list[index].title+"</td>";
				output += "<td style='text-align:center'>"+list[index].nickname+"</td>";
				output += "<td style='text-align:center'>"+list[index].re_date+"</td>";

				// 별점
				output += "<td style='text-align:center'>";
				for(i=0; i<list[index].score; i++) {
					output += "<i class='fa fa-star' style='color:rgb(251, 214, 0);'></i>"
				}
				output += "</td>";

				output += "<td style='text-align:center'><a href='#pablo' class='btn btn-danger'>삭제</a></td></tr>";
				
				$('#reviewList').append(output);
			});
		
		},
		error : function() {alert('admin review ajax 통신 실패!');}
	});
}
$(document).ready(function() {
	
	adminReviewList_Ajax();
	
	$().ready(function() {
		
		$(".sidebar-wrapper li").eq(3).addClass('active');

		$sidebar = $('.sidebar');

		$sidebar_img_container = $sidebar.find('.sidebar-background');

		$full_page = $('.full-page');

		$sidebar_responsive = $('body > .navbar-collapse');

		window_width = $(window).width();

		fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

		if (window_width > 767&& fixed_plugin_open == 'Dashboard') {
			if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
				$('.fixed-plugin .dropdown').addClass('open');
			}
		}

		$('.fixed-plugin a').click(function(event) {
			// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
			if ($(this).hasClass('switch-trigger')) {
				if (event.stopPropagation) {
					event.stopPropagation();
				}
				else if (window.event) {
					window.event.cancelBubble = true;
				}
			}
		});

		$('.fixed-plugin .active-color span').click(function() {
			$full_page_background = $('.full-page-background');

			$(this).siblings().removeClass('active');
			$(this).addClass('active');

			var new_color = $(this).data('color');

			if ($sidebar.length != 0) {
				$sidebar.attr('data-color',new_color);
				
				if ($full_page.length != 0) {
					$full_page.attr('filter-color',new_color);
				}

				if ($sidebar_responsive.length != 0) {
					$sidebar_responsive.attr('data-color',new_color);
				}
			}

			$('.fixed-plugin .background-color .badge').click(function() {
				$(this).siblings().removeClass('active');
				$(this).addClass('active');

				var new_color = $(this).data('background-color');

				if ($sidebar.length != 0) {
					$sidebar.attr('data-background-color',new_color);
				}
			});

			$('.fixed-plugin .img-holder').click(function() {
				$full_page_background = $('.full-page-background');

				$(this).parent('li').siblings().removeClass('active');
				$(this).parent('li').addClass('active');

				var new_image = $(this).find("img").attr('src');

				if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
					$sidebar_img_container.fadeOut('fast', function() {
						$sidebar_img_container.css('background-image', 'url("'+ new_image + '")');
						$sidebar_img_container .fadeIn('fast');
					});
				}

				if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
					var new_image_full_page = $( '.fixed-plugin li.active .img-holder') .find( 'img') .data( 'src');

					$full_page_background.fadeOut( 'fast', function() {
						$full_page_background.css('background-image', 'url("'+ new_image_full_page+ '")');
						$full_page_background.fadeIn('fast');
					});
				}

				if ($('.switch-sidebar-image input:checked').length == 0) {
					var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
					var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

					$sidebar_img_container.css('background-image','url("'+ new_image+ '")');
					$full_page_background.css('background-image', 'url("'+ new_image_full_page+ '")');
				}

				if ($sidebar_responsive.length != 0) {
					$sidebar_responsive.css('background-image', 'url("'+ new_image+ '")');
				}
			});

			$('.switch-sidebar-image input').change(function() {
				$full_page_background = $('.full-page-background');

				$input = $(this);

				if ($input.is(':checked')) {
					if ($sidebar_img_container.length != 0) {
						$sidebar_img_container.fadeIn('fast');
						$sidebar.attr('data-image', '#');
					}

					if ($full_page_background.length != 0) {
						$full_page_background.fadeIn('fast');
						$full_page.attr('data-image', '#');
					}

					background_image = true;
				} 
				else {
					if ($sidebar_img_container.length != 0) {
						$sidebar.removeAttr('data-image');
						$sidebar_img_container.fadeOut('fast');
					}

					if ($full_page_background.length != 0) {
						$full_page.removeAttr('data-image', '#');
						$full_page_background.fadeOut('fast');
					}

					background_image = false;
				}
			});

			$('.switch-sidebar-mini input').change(function() {
				$body = $('body');

				$input = $(this);

				if (md.misc.sidebar_mini_active == true) {
					$('body').removeClass('sidebar-mini');
					md.misc.sidebar_mini_active = false;

					$('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

				} 
				else {

					$('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

					setTimeout(function() {
						$('body').addClass('sidebar-mini');

						md.misc.sidebar_mini_active = true;
					},300);
				}

				// we simulate the window Resize so the charts will get updated in realtime.
				var simulateWindowResize = setInterval(function() {
					window.dispatchEvent(new Event('resize'));
				},180);

				// we stop the simulation of Window Resize after the animations are completed
				setTimeout(function() {
					clearInterval(simulateWindowResize);
				},1000);

			});
		});
	});
});
</script>
</body>

</html>
