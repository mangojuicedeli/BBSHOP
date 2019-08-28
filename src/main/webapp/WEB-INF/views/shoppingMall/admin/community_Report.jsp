<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
@font-face{font-family:'NanumBarunpen';font-weight:normal;src:local(NanumBarunpen);src:url("font/NanumBarunpenR.eot");src:url("font/NanumBarunpenR.woff") format("woff"), url("font/NanumBarunpenR.woff2") format("woff2")}
@font-face{font-family:'NanumBarunpen';font-weight:bold;src:local(NanumBarunpen);src:url("font/NanumBarunpenB.eot");src:url("font/NanumBarunpenB.woff") format("woff"), url("font/NanumBarunpenB.woff2") format("woff2")}

body{font-family:NanumBarunpen, sans-serif}

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
    #info_modal {
            opacity: 1;
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
label{
	font-weight:bold;
	font-size:large;
	color:#50bcdf;
	
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
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Report</h4>
                  <p class="card-category">신고 내용을 볼수있습니다.</p>
                </div>
                <div class="card-body">
						<form action=searchReportCategory.do>
                  <table id='categoryList' align=right>
							<tr>
								<td><label for="category">카테고리</label> &nbsp; &nbsp;</td>
								<td><input type='checkbox' id='Report_all' name='category' value='Report_all'>전체 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='Report_abuse' name='category' value='욕설'>욕설 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='Report_spread' name='category' value='도배'>도배&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='Report_ad' name='category' value='광고'>광고&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='Report_sex' name='category' value='음란물'>음란물&nbsp;&nbsp;&nbsp;</td>
								<td><input type='submit' id='Report_submit' name='Report_category_submit' value='조회' class='btn btn-info btn-sm'>
								
							</tr>
				  </table>
						</form>
                 
                  <div class="table-responsive">
      			   	<table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                    <th style="text-align: center"  width=2%>
                         <input type='checkbox' id='check_all'>
                        </th>
                        <th style="text-align: center">
                          글번호
                        </th>
                        
                        <th style="text-align: center">
                          글제목
                        </th>
                        <th style="text-align: center"  width=10%>
                         신고 사유
                        </th>
					   <th style="text-align: center">
                          글 작성자
                        </th>                
				      
                        
                      </thead>	
                      <tbody>
                     <c:forEach var='report' items="${reportList}" varStatus="status">
                      	<tr>
                      		<td style='text-align:center'><input type='checkbox' class='check'>
                      		
                      		<td style='text-align:center'>
	                      			${boardList[status.index].BOARD_NUM}

                      		</td>
                      		<td style='text-align:center'><Button id="info_Report${status.index}" type="button" class="btn btn-link" align=center>
	                      				${boardList[status.index].TITLE}
                      		</Button></td>
                      		<td style='text-align:center'>
                      			<c:choose>
	                      			<c:when test="${report.RE_CATEGORY eq 'swear' }">
	                      				욕설
	                      			</c:when>
	         	                    <c:when test="${report.RE_CATEGORY eq 'flood' }">
	                      				도배
	                      			</c:when>
	                      			<c:when test="${report.RE_CATEGORY eq 'advertisement' }">
	                      				광고
	                      			</c:when>
	                      			<c:when test="${report.RE_CATEGORY eq 'pornography' }">
	                      				음란물
	                      			</c:when>
                      			</c:choose>
                      		</td>
                      		<td style='text-align:center'>${report.WRITER}</td>
                      		
                       	</tr>
                     	
                      	</c:forEach>
                      </tbody>
                      <table id='table_footer'width="100%">
                      	<tr>
                      	 	<td align=left><button class="btn btn-danger btn-sm">선택 삭제</button></td>
                      
                   
                      	<td style='text-align:center'>
                      		<ul class="pagination">
										<c:if test="${PageMaker.prev}">
										<li class="page-item disabled"><a class="page-link"
											href="${PageMaker.startPage -1 }">이전</a></li>
										</c:if>
										<c:forEach var="num" begin="${PageMaker.startPage}" end="${PageMaker.endPage}">
										<li class="page-item ${PageMaker.cri.pageNum==num?"active":"" }" id="btn_${num}">
										<a class="page-link" href="<c:out value="${num}"/>"><c:out value="${num}"/></a></li>
										</c:forEach>
										<c:if test="${PageMaker.next}">
										<li class="page-item"><a class="page-link"
											href="${PageMaker.endPage+1 }">다음</a></li>
										</c:if>
									</ul>
							<form id='pageForm' action="goodsList.do" method='POST'>
								<input type='hidden' name='pageNum' value='${PageMaker.cri.pageNum}'>
								<input type='hidden' name='amount' value='${PageMaker.cri.amount}'>
							</form>
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
			<table width=100% style="text-align:center">
				<tr>
					<td>
						<label for='category'>글 번호</label></td>
					<td><text id='board_num'></text></td> 
				</tr>
				<tr>
					<td>
						<label for='title'>제목</label></td>
						<td><text id='title'></text></td>
				</tr>
				
				<tr>
					<td>
						<label for='content'>글쓴이</label></td>
						<td><text id='writer'></text></td>
				</tr>
				<tr>
					<td>
						<label for='content'>신고 사유</label></td>
						<td><text id='re_category'></text></td>
				</tr>
				<tr>
					<td>
						<label for='contents'>신고 내용</label></td>
						<td><textarea id='contents' rows="10" cols="40"></textarea></td>
				</tr>
			
				
			</table>
			<table width=100%>
				<tr>
				<td style='text-align:center'>
				<button id="confirmation" class='btn btn-info'>확인</button>
				<Button id='sanctions' class="btn btn-danger" onclick="updateTitle($('#board_num')[0].textContent)">제재</Button>
				</td>
				</tr>
			</table>
			
			
			</div>
		</div>
	 </div>

  <script type="text/javascript">
  
    var info = document.getElementById('info_modal');
    var span = document.getElementsByClassName('close')[0];

    $('#info_Report0').click(function(){
	      info.style.display = "block";
	      $('#board_num').html("${reportList[0].BOARD_NUM}")
	      $('#writer').html("${reportList[0].WRITER}")
	      $('#title').html("${boardList[0].TITLE}");
	      $('#re_category').html("${reportList[0].RE_CATEGORY}")
	      $('#contents').html("${boardList[0].BOARD_CONTENT}");
	 });
    $('#info_Report1').click(function(){
	      info.style.display = "block";
	      $('#board_num').html("${reportList[1].BOARD_NUM}")
	      $('#writer').html("${reportList[1].WRITER}")
	      $('#title').html("${boardList[1].TITLE}");
	      $('#re_category').html("${reportList[1].RE_CATEGORY}")
	      $('#contents').html("${boardList[1].BOARD_CONTENT}");
	 });
    $('#info_Report2').click(function(){
		      info.style.display = "block";
		      $('#board_num').html("${reportList[2].BOARD_NUM}")
		      $('#writer').html("${reportList[2].WRITER}")
		      $('#title').html("${boardList[2].TITLE}");
		      $('#re_category').html("${reportList[2].RE_CATEGORY}")
		      $('#contents').html("${boardList[2].BOARD_CONTENT}");
    }); 
    $('#info_Report3').click(function(){
			      info.style.display = "block";
			      $('#board_num').html("${reportList[3].BOARD_NUM}")
			      $('#writer').html("${reportList[3].WRITER}")
			      $('#title').html("${boardList[3].TITLE}");
			      $('#re_category').html("${reportList[3].RE_CATEGORY}")
			      $('#contents').html("${boardList[3].BOARD_CONTENT}");   
    }); 
    $('#info_Report4').click(function(){
				      info.style.display = "block";
				      $('#board_num').html("${reportList[4].BOARD_NUM}")
				      $('#writer').html("${reportList[4].WRITER}")
				      $('#title').html("${boardList[4].TITLE}");
				      $('#re_category').html("${reportList[4].RE_CATEGORY}")
				      $('#contents').html("${boardList[4].BOARD_CONTENT}");
	 });
    
    
    window.onclick = function (event){
      if(event.target == info){
        info.style.display="none";
      }
    }

  </script>
  
  <script>
    $(document).ready(function() {
    	
    
    	 
      $().ready(function() {
    	
    	$(".sidebar-wrapper li").eq(5).addClass('active');
    	  
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
  <script>
  function updateTitle(num){
      $.ajax({
          url:"updateTitle.do?board_num="+num,
          type:"GET",
          dataType:"text",
          success : function(data) {
             var result = data;
             alert('게시글이 삭제되었습니다.');
             $('#title').html(result);

           }, error : function() {
             console.log("실패");
              }
      });
  }
  
  $("#confirmation")[0].onclick = function(){
	  location.reload(true);
	  info_modal.style.display = "none";
   }
   </script>
</body>

</html>
