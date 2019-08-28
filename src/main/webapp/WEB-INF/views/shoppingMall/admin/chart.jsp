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
	margin-left: 450px;
}
</style>
<!--Load the AJAX API-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// Load the Visualization API and the corechart package.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.charts.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.
		var data = new google.visualization.DataTable();

		data.addColumn('string', 'Topping');
		data.addColumn('number', 'Slices');
		data.addRows([ [ '야구공', 3 ], [ '배트', 1 ], [ '야구화', 1 ], [ '유니폼', 1 ],
				[ '기타', 2 ] ]);

		// Set chart options
		var options = {
			'title' : '매출 상품 비율',
			'width' : 500,
			'height' : 400
		};

		// Instantiate and draw our chart, passing in some options.
		var pieChart = new google.visualization.PieChart(document
				.getElementById('chart_div2'));

		pieChart.draw(data, options);
	}

	// Dual-Y Chart
	google.charts.setOnLoadCallback(drawStuff);

	function drawStuff() {

		var button = document.getElementById('change-chart');
		var chartDiv = document.getElementById('chart_div');

		var data = google.visualization.arrayToDataTable([
				[ 'Galaxy', 'Distance', 'Brightness' ],
				[ 'Canis Major Dwarf', 8000, 23.3 ],
				[ 'Sagittarius Dwarf', 24000, 4.5 ],
				[ 'Ursa Major II Dwarf', 30000, 14.3 ],
				[ 'Lg. Magellanic Cloud', 50000, 0.9 ],
				[ 'Bootes I', 60000, 13.1 ] ]);

		var materialOptions = {
			width : 900,
			chart : {
				title : 'Nearby galaxies',
				subtitle : 'distance on the left, brightness on the right'
			},
			series : {
				0 : {
					axis : 'distance'
				}, // Bind series 0 to an axis named 'distance'.
				1 : {
					axis : 'brightness'
				}
			// Bind series 1 to an axis named 'brightness'.
			},
			axes : {
				y : {
					distance : {
						label : 'parsecs'
					}, // Left y-axis.
					brightness : {
						side : 'right',
						label : 'apparent magnitude'
					}
				// Right y-axis.
				}
			}
		};

		var classicOptions = {
			width : 900,
			series : {
				0 : {
					targetAxisIndex : 0
				},
				1 : {
					targetAxisIndex : 1
				}
			},
			title : 'Nearby galaxies - distance on the left, brightness on the right',
			vAxes : {
				// Adds titles to each axis.
				0 : {
					title : 'parsecs'
				},
				1 : {
					title : 'apparent magnitude'
				}
			}
		};

		function drawMaterialChart() {
			var materialChart = new google.charts.Bar(chartDiv);
			materialChart.draw(data, google.charts.Bar
					.convertOptions(materialOptions));
			button.innerText = 'Change to Classic';
			button.onclick = drawClassicChart;
		}

		function drawClassicChart() {
			var classicChart = new google.visualization.ColumnChart(chartDiv);
			classicChart.draw(data, classicOptions);
			button.innerText = 'Change to Material';
			button.onclick = drawMaterialChart;
		}

		drawMaterialChart();
	};
</script>
</head>

<body class="">
	<%@include file='sidebar.jsp' %>>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#pablo">매출 분석</a>
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
			<!-- End Navbar -->
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header card-header-success card-header-icon">
									<div class="card-icon">
										<i class="material-icons">store</i>
									</div>
									<p class="card-category">일간 매출액</p>
									<h3 class="card-title">￦ 560,500</h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">update</i> 매일 정각 업데이트
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="card card-stats">
								<div class="card-header card-header-info card-header-icon">
									<div class="card-icon">
										<i class="fa fa-twitter"></i>
									</div>
									<p class="card-category">일간 방문자</p>
									<h3 class="card-title">1,345 명</h3>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">update</i> 매일 정각 업데이트
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="card card-chart">
								<div class="card-header card-header-success">
									<div class="ct-chart" id="dailySalesChart"></div>
								</div>
								<div class="card-body">
									<h4 class="card-title">주간 매출액</h4>
									<p class="card-category">
										<span class="text-success"><i
											class="fa fa-long-arrow-up"></i> 35%, ￦ 1,545,000 증가 </span> 1주 전 대비
									</p>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> 매주 월요일 업데이트
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-chart">
								<div class="card-header card-header-warning">
									<div class="ct-chart" id="websiteViewsChart"></div>
								</div>
								<div class="card-body">
									<h4 class="card-title">주간 방문자</h4>
									<p class="card-category">
										<span class="text-success"><i
											class="fa fa-long-arrow-up"></i> 25%, 3,554명 증가 </span> 1주 전 대비
									</p>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> 매주 월요일 업데이트
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-chart">
								<div class="card-header card-header-danger">
									<div class="ct-chart" id="completedTasksChart"></div>
								</div>
								<div class="card-body">
									<h4 class="card-title">주간 게시글</h4>
									<p class="card-category">
										<span class="text-warning"><i
											class="fa fa-long-arrow-down"></i> 35%, 554개 감소 </span> 1주 전 대비
									</p>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> 매주 월요일 업데이트
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end third rows -->
					<div class="row">
						<div class="col-lg-6 col-md-12" id="chart_div2"></div>
						<div class="col-lg-6 col-md-12">
							<div class="card">
								<div class="card-header card-header-warning">
									<h4 class="card-title">인기 상품 순위</h4>
									<p class="card-category">월간 카테고리별 인기 상품</p>
								</div>
								<div class="card-body table-responsive">
									<table class="table table-hover">
										<thead class="text-warning">
											<th>카테고리</th>
											<th>상품명</th>
											<th>판매수</th>
											<th>매출액</th>
										</thead>
										<tbody>
											<tr>
												<td>야구공</td>
												<td>민구 볼</td>
												<td>500</td>
												<td>￦1,220,000</td>
											</tr>
											<tr>
												<td>배트</td>
												<td>민구 배트</td>
												<td>300</td>
												<td>￦3,920,000</td>
											</tr>
											<tr>
												<td>야구화</td>
												<td>민구 슈즈</td>
												<td>700</td>
												<td>￦2,240,000</td>
											</tr>
											<tr>
												<td>유니폼</td>
												<td>민구 유니폼</td>
												<td>250</td>
												<td>￦6,750,000</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="card-footer">
									<div class="stats">
										<i class="material-icons">access_time</i> 매월 1일 업데이트
									</div>
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
					target="_blank" class="btn btn-primary btn-block">Free Download</a></li>
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
		$(document)
				.ready(
						function() {
							$()
									.ready(
											function() {
												
												$(".sidebar-wrapper li").eq(6).addClass('active');
												
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

												if (window_width > 767
														&& fixed_plugin_open == 'Dashboard') {
													if ($(
															'.fixed-plugin .dropdown')
															.hasClass(
																	'show-dropdown')) {
														$(
																'.fixed-plugin .dropdown')
																.addClass(
																		'open');
													}

												}

												$('.fixed-plugin a')
														.click(
																function(event) {
																	// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																	if ($(this)
																			.hasClass(
																					'switch-trigger')) {
																		if (event.stopPropagation) {
																			event
																					.stopPropagation();
																		} else if (window.event) {
																			window.event.cancelBubble = true;
																		}
																	}
																});

												$(
														'.fixed-plugin .active-color span')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
																			.addClass(
																					'active');

																	var new_color = $(
																			this)
																			.data(
																					'color');

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						'data-color',
																						new_color);
																	}

																	if ($full_page.length != 0) {
																		$full_page
																				.attr(
																						'filter-color',
																						new_color);
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.attr(
																						'data-color',
																						new_color);
																	}
																});

												$(
														'.fixed-plugin .background-color .badge')
														.click(
																function() {
																	$(this)
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
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

												$('.fixed-plugin .img-holder')
														.click(
																function() {
																	$full_page_background = $('.full-page-background');

																	$(this)
																			.parent(
																					'li')
																			.siblings()
																			.removeClass(
																					'active');
																	$(this)
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

												$('.switch-sidebar-image input')
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

												$('.switch-sidebar-mini input')
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
