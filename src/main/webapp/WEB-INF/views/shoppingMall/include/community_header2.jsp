<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">

	<title>야매샵</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="resources/shoppingMall/css/bootstrap.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/linericon/style.css">
	<link rel="stylesheet" href="resources/shoppingMall/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="resources/shoppingMall/vendors/jquery-ui/jquery-ui.css">
	
	<!-- font -->
	<link href="//fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
	
	<!-- main css -->
	<link rel="stylesheet" href="resources/shoppingMall/css/style.css">
	<link rel="stylesheet" href="resources/shoppingMall/css/responsive.css">
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	
	<!-- basic bootstrap config -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
/* 반응형 main menu */
@media (min-width : 1601px) {
	.col-lg-7 {
		-ms-flex: 0 0 68%;
    	flex: 0 0 68%;
    	max-width: 68%
	}
	.col-lg-5 {
		-ms-flex: 0 0 32%;
    	flex: 0 0 32%;
    	max-width: 32%
	}
}
@media (max-width : 1600px) {
	.col-lg-7 {
		-ms-flex: 0 0 73%;
    	flex: 0 0 73%;
    	max-width: 73%
	}
	.col-lg-5 {
		-ms-flex: 0 0 27%;
    	flex: 0 0 27%;
    	max-width: 27%
	}
}

/* 폰트 : 나눔바른체 */
@font-face {
	font-family: 'NanumBarunpen';
	font-weight: normal;
	src: local(NanumBarunpen);
	src: url("resources/shoppingMall/fonts/nanumbarunpenR.eot");
	src: url("resources/shoppingMall/fonts/nanumbarunpenR.woff") format("woff"),
		url("resources/shoppingMall/fonts/nanumbarunpenR.woff2") format("woff2");
}
@font-face {
	font-family: 'NanumBarunpen';
	font-weight: bold;
	src: local(NanumBarunpen);
	src: url("resources/shoppingMall/fonts/nanumbarunpenB.eot");
	src: url("resources/shoppingMall/fonts/nanumbarunpenB.woff") format("woff"),
		url("resources/shoppingMall/fonts/nanumbarunpenB.woff2") format("woff2");
}
body {
	font-family: NanumBarunpen, sans-serif;
}

.pull-right {
    margin-left: auto;
    margin-right: auto;
}

.header_area .navbar .nav .nav-item.active .nav-link{
	color:#222222;
	font-size:25px;
	font-weight:bold;
}

.top_menu .right_side li a {
	font-size:16px;
	font-weight:bold;
}

#nav-tab a{
	margin-right:0px;
}
</style>

</head>

<body>
	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container-fluid">
				<div class="float-left">
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li><a href="/savings.do"> 마이페이지 </a></li>
						<li><a href="/shopping_main.do"> 쇼핑몰 </a></li>
						<li><a href="/faq_list.do"> 고객센터 </a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<!-- 로고 주석 처리
					<a class="navbar-brand logo_h" href="/community_main">
						<img src="resources/shoppingMall/img/logo.png" alt="커뮤니티메인" style="visibility:hidden;">
					</a>
					-->
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					
				<nav style="width: 100%; transform: translateX(-25px);">
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link" id="nav-home-tab" name="kbo"
							data-toggle="tab" role="tab"
							aria-controls="nav-home" aria-selected="true" onclick="location.href='/community_list.do?TEAM_NAME=kbo'"> <img
							src="resources/community/img/kbo_main.png" width="50" height="50"
							class="img-fluid rounded"></a> <a
							class="nav-item nav-link link" id="nav-contact-tab" name="lg"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-home" aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=lg'"> <img
							src="resources/community/img/lgtwins_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" name="lotte" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=lotte'"> <img
							src="resources/community/img/lottegiants_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab" name="hanwha"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=hanwha'"> <img
							src="resources/community/img/hanwhaeagles_main.png" width="80"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" name="kia" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=kia'"> <img
							src="resources/community/img/kiatigers_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab" name="doosan"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=doosan'"> <img
							src="resources/community/img/doosanbears_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" name ="nc" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=nc'"> <img
							src="resources/community/img/ncdinos_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab" name="samsung"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=samsung'"> <img
							src="resources/community/img/samsunglions_main.png" width="75"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" name="kiwoom" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=kiwoom'"> <img
							src="resources/community/img/kiwoomheroes_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab" name="sk"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=sk'"> <img
							src="resources/community/img/skwyverns_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" name="kt" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false" onclick="location.href='/community_list.do?TEAM_NAME=kt'"> <img
							src="resources/community/img/ktwiz_main.png" width="70"
							height="70" class="img-fluid rounded">
						</a>
					</div>
				</nav>
				</div>
			</nav>
		</div>
	</header>