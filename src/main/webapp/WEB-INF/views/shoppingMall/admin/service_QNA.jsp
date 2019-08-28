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
iframe{
width:100%;
height:100%;}

 .info_modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1;
            /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4);
            /* Black w/ opacity */
        }
    .answer_modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1;
            /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4);
            /* Black w/ opacity */
        }
   .info_modal_content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%;
            height:70%;
            /* Could be more or less, depending on screen size */
			
        }
    
   .answer_modal_content {
            background-color: #fefefe;
            margin: 8% auto;
            /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 40%;
            height:80%;
            /* Could be more or less, depending on screen size */
			
        }
        
    #info_modal {
            opacity: 0.9;
        }
    #answer_modal {
            opacity: 0.9;
        }
    .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
    .close:hover,
    .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        
    .pagination {
	margin-left: 300px;
}
</style>
</head>

<body>
<%@include file ="sidebar.jsp" %>
 
    <div class="main-panel">
    <!-- start Navbar -->
      <%@include file='top_nav.jsp' %>
      <!-- End Navbar -->
      <div class="content">
        
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary" style='display:block;'>
                  <h4 class="card-title ">상품QNA</h4>
                  <p class="card-category">QNA 내용을 볼수있습니다.</p>
                </div>
                <div class="card-body">
                  <table id='categoryList'>
						<form>
							<tr>
								<td><label for="category">카테고리</label> &nbsp; &nbsp;</td>
								<td><input type='checkbox' id='QNA_all' name='FAQ_category'>전체 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='QNA_glove' name='FAQ_category'>글러브 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='QNA_bat' name='FAQ_category'>배트&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='QNA_uniform' name='FAQ_category'>유니폼&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='QNA_shoes' name='FAQ_category'>야구화&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='QNA_ball' name='FAQ_category'>야구공&nbsp;&nbsp;&nbsp;</td>
								<td><input type='submit' id='QNA_submit' name='FAQ_category_submit' value='조회' class='btn btn-info btn-sm'>
								
						</form>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<form>
							
								<td><label for="answer">답변여부</label> &nbsp; &nbsp;</td>
								<td><input type='checkbox' id='answer_all' name='FAQ_category'>전체 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='complete_answer' name='FAQ_category'>답변O &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='no_answer' name='FAQ_category'>답변X&nbsp;&nbsp;&nbsp;</td>
								<td><input type='submit' id='FAQ_submit' name='FAQ_category_submit' value='조회' class='btn btn-info btn-sm'>
							</form>	
						
							</tr>
				  </table>
                 
                  <div class="table-responsive">
      			   	<table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                        
                        <th style="text-align: center"  width=10%>
                          QNA 번호
                        </th>
                        <th  style="text-align:center" width=10%>
                          상품 카테고리
                        </th>
                        <th style="text-align: center" width=10%>
                          상품 번호
                        </th>
                        <th style="text-align: center">
                          QNA제목
                        </th>
					   <th style="text-align: center">
                          회원 ID
                        </th>                
					    <th style="text-align: center">
                          등록 날짜
                        </th>
                      <th style="text-align: center">
                          답변 여부
                        </th>
                      <th style="text-align: center">
                          답변 하기
                        </th>
                        
                      </thead>	
                      <tbody>
                      	<tr>
                      		
                      		<td style='text-align:center'>0000001</td>
                      		<td style='text-align:center'>글러브</td>
                      		<td style='text-align:center'>0000001</td>
                      		<td style='text-align:center'><Button id="info_QNA" type="button" class="btn btn-link" align=center>글러브 관련해서 문의있습니다. 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>user1</td>
                      		<td style='text-align:center'>19.07.10</td>
                      		<td style='text-align:center'>O</td>
                      		<td style='text-align:center'><input type='button' id='goanswer1' class='btn btn-success btn-sm' value='답변'></td>
                      	</tr>
                     	<tr>
                      		
                      		<td style='text-align:center'>0000002</td>
                      		<td style='text-align:center'>배트</td>
                      		<td style='text-align:center'>0000002</td>
                      		<td style='text-align:center'><Button id="info_QNA" type="button" class="btn btn-link" align=center>배트 관련해서 문의있습니다. 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>user2</td>
                      		<td style='text-align:center'>19.07.10</td>
                      		<td style='text-align:center'>O</td>
                      		<td style='text-align:center'><input type='button' id='goanswer2' class='btn btn-success btn-sm' value='답변'></td>
                      	</tr>
                      		<tr>
                      		
                      		<td style='text-align:center'>0000003</td>
                      		<td style='text-align:center'>유티폼</td>
                      		<td style='text-align:center'>0000003</td>
                      		<td style='text-align:center'><Button id="info_QNA" type="button" class="btn btn-link" align=center>유니폼 관련해서 문의있습니다. 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>user3</td>
                      		<td style='text-align:center'>19.07.15</td>
                      		<td style='text-align:center'>X</td>
                      		<td style='text-align:center'><input type='button' id='goanswer3' class='btn btn-success btn-sm' value='답변'></td>
                      	</tr>
                      		<tr>
                      		
                      		<td style='text-align:center'>0000004</td>
                      		<td style='text-align:center'>야구화</td>
                      		<td style='text-align:center'>0000004</td>
                      		<td style='text-align:center'><Button id="info_QNA" type="button" class="btn btn-link" align=center>야구화 관련해서 문의있습니다. 불라불라랄라블라</Button></td>
                      		<td style='text-align:center'>user4</td>
                      		<td style='text-align:center'>19.07.17</td>
                      		<td style='text-align:center'>X</td>
                      		<td style='text-align:center'><input type='button' id='goanswer4' class='btn btn-success btn-sm' value='답변'></td>
                      	</tr>
                      	
                      </tbody>
                       <table id='table_footer'width="100%">
                      	<tr>
                      	 	<td align=left><button class='btn btn-dark btn-sm'>선택 삭제</button></td>
                      
                   
                      	<td style='text-align:center'>
                      		<ul class="pagination">
										<li class="page-item disabled"><a class="page-link"
											href="#">이전</a></li>
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
									<li><a href="#">카테고리</a></li>
									<li><a href="#">회원 ID</a></li>
									<li><a href="#">답변여부</a></li>
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
                  	</table>
                 
                  </div>
                </div>
              </div>
              
            </div>
            
            </div>
          </div>
        </div>
      </div>
      <div id='info_modal' class='info_modal'>
      	<div class='info_modal_content'>
			<span class='close'>&times;</span>
			<h4 align =center>글조회</h4>
			<div class='modal_body' style='padding:40px 50px;'>
			<table width=100%>
				<tr>
					<td>
						<label for='writer'>작성자</label><input type='text' class=form-control id='content_writer' name='content_writer'></td> 
				</tr>
				<tr>
					<td>
						<label for='title'>제목</label><input type='text' class=form-control id='content_title' name='content_title'></td>
				</tr>
				<tr>
					<td>
						<label for='goodsCategory'>상품 분류</label><select name='category_goods'>
														<option value='glove'>글러브</option>
														<option value='bat'>배트</option>
														<option value='uniform'>유니폼</option>
														<option value='shoes'>야구화</option>
														<option value='ball'>야구공</option>
														
														</select>
														</td>
				</tr>
				<tr>
					<td>
						<label for='write_date'>작성일</label>
						<input type='text' id='write_date' name='write_date' class='form-control'>
						</td>
				</tr>
				<tr>
					<td>
						<label for='write_content'>내용</label>
						<input width='70%'  type='text' id='write_content' name='write_content' class='form-control'></td>
				</tr>
				
			</table>
			</form>
			
			</div>
		</div>
	</div>
		 <div id='answer_modal' class='answer_modal'>
      	<div class='answer_modal_content'>
			<span class='close'>&times;</span>
			<h4 align =center>글조회</h4>
			<div class='modal_body' style='padding:40px 50px;'>
			<form id='answerForm'>
			<table width=100%>
				<tr>
					<td>
						<label for='writer'>작성자</label><input type='text' class=form-control id='content_writer' name='content_writer'></td> 
				</tr>
				<tr>
					<td>
						<label for='title'>제목</label><input type='text' class=form-control id='content_title' name='content_title'></td>
				</tr>
				<tr>
					<td>
						<label for='goodsCategory'>상품 분류</label><select name='category_goods'>
														<option value='glove'>글러브</option>
														<option value='bat'>배트</option>
														<option value='uniform'>유니폼</option>
														<option value='shoes'>야구화</option>
														<option value='ball'>야구공</option>
														
														</select>
														</td>
				</tr>
				<tr>
					<td>
						<label for='write_date'>작성일</label>
						<input type='text' id='write_date' name='write_date' class='form-control'>
						</td>
				</tr>
				<tr>
					<td>
						<label for='contents'>내용</label></td>
						</tr>
						<tr>
						<td width="100%">
						<textarea name="contents" id="contents" cols="90" rows="15" ></textarea></td>
				</tr>
				<tr><td><input type='submit' id=answerSubmit value='답변' class='btn btn-info'>
						<input type='button' id=cancelAnswer value='취소' class='btn btn-danger'>
				</td>
			</table>
				</form>
			
			
			</div>
		</div>
		
	 </div>


      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
              <span class="badge filter badge-rose active" data-color="rose"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="https://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
        <li class="button-container">
          <a href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>
  
   
  <script >

	var editor_object=[];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef:editor_object,
		elPlaceHolder: "contents",
		sSkinURI:"${pageContext.request.contextPath }/resources/smarteditor/SmartEditor2Skin.html",
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

	
	$('#anserSubmit').click(function(){
		//id가 contents인 textarea에 에디터에서 대입해온다
		editor_object.getById['contents'].exec("UPDATE_CONTENTS_FILED",[]);
		//이부분에서 서브밋발생
		$('answerForm').submit();
		
		
	});

  
  </script>
  <script>
    var info = document.getElementById('info_modal');
    var answer = document.getElementById('answer_modal');
	var card = document.getElementsByClassName('card-header card-header-primary');
    $('#info_QNA').click(function(){
      info.style.display = "block";
    })

    $('#goanswer1').click(function(){
    	answer.style.display='block';
    	
    })
    window.onclick = function (event){
      if(event.target == info){
        info.style.display="none";
      }
      else if(event.target==answer){
    	  answer.style.display='none';
      }
    }

 
    $(document).ready(function() {    	
    	
      $().ready(function() {
    	
    
    	  $(".sidebar-wrapper li").eq(4).addClass('active');
    	  
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
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
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
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
          } else {
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

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
</body>

</html>
