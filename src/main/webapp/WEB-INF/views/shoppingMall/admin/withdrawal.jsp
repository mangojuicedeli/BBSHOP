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
  /* The Modal (background) */
.modal {
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
.modal-content {
   background-color: #fefefe;
   margin: 8% auto; /* 15% from the top and centered */
   padding: 10px;
   border: 1px solid #888;
   width: 20%; /* Could be more or less, depending on screen size */
   height: 72%;
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


.modal-footer {
   margin-top: 20px;
}

.modal-body {
   align:center;
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
     <%@include file='top_nav.jsp' %>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
             <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">회원 탈퇴</h4>
                 
                </div>
                  <div class="card-body">
                  <div class="table-responsive">
                <table class="category">
                  <tr>
                  <td><label for= category>상태 분류</label>
                  <td><input type="checkbox" id='check_all'>전체</td>
                  <td><input type="checkbox" id='check_rest'>휴면</td>
                  <td><input type="checkbox" id='check_withdrawal'>탈퇴</td>
                  </tr>
                </table>
              </div>
             
                    <table class="table"  style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                        
                        <th style='text-align:center'>
                          <input type='checkbox' id='check_all'>
                        </th>
                        <th style='text-align:center'>
                          ID
                        </th>
                        <th style='text-align:center'>
                          탈퇴사유
                        </th>
                        <th style='text-align:center'>
                          등급
                        </th>
                        <th style='text-align:center'>
                          신청 일자
                        </th>
                        <th style='text-align:center'>
                          처리상태(휴면/탈퇴)
                        </th>
                        <th style='text-align:center'>
                          탈퇴처리                   
                        </th>
                      </thead>
                      <tbody id="WithdrawalList">
<!--                         <tr> -->
<!--                           <td style='text-align:center'> -->
<!--                             <input type='checkbox' id='check'> -->
<!--                           </td> -->
                        
<!--                           <td style='text-align:center'> -->
<!--                             <button id="modal_id" class='btn btn-link'>user1</button> -->
<!--                           </td> -->
<!--                           <td style='text-align:center'> -->
<!--                             졸리고 피곤함 -->
<!--                           </td> -->
<!--                           <td style='text-align:center'> -->
<!--                             골드 -->
<!--                           </td> -->
<!--                           <td style='text-align:center'> -->
<!--                             2019.03.03 -->
<!--                           </td> -->
<!--                           <td style='text-align:center'> -->
<!--                             휴면 -->
<!--                           </td> -->
<!--                           <td style='text-align:center'> -->
<!--                             <button class='btn btn-danger btn-sm'>탈퇴</button> -->
<!--                           </td> -->
                           
<!--                         </tr> -->
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
									<li><a href="#">회원 ID</a></li>
									<li><a href="#">회원 등급</a></li>
									<li><a href="#">상태 분류</a></li>
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
 
     <!-- The Modal -->
     <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
         <!-- header -->
         <div class="modal-header">
            <!-- 닫기(x) 버튼 -->
            <span class="close">&times;</span>
            <!-- header title -->
            <h4 class="modal-title" align="center"></h4>
         </div>
         <!-- body -->
         <form id="reportForm" name="report" role="form" action="./home.jsp"
            >
            <div class="modal-body">
               <table>
                  <tr class="report_content">
                     <td><p>ID: </p></td>
                     <td><input type="text" name="writer"
                        class="form-control"/></td>
                  </tr>
                  <tr class="report_content">
                    <td><p>PW: </p></td>
                    <td><input type="text" name="writer"
                       class="form-control"/></td>
                 </tr>
                 <tr class="report_content">
                  <td><p>이름: </p></td>
                  <td><input type="text" name="writer"
                     class="form-control"/></td>
               </tr>
               <tr class="report_content">
                <td><p>닉네임: </p></td>
                <td><input type="text" name="writer"
                   class="form-control"/></td>
             </tr>
             <tr class="report_content">
              <td><p>전화번호: </p></td>
              <td><input type="text" name="writer"
                 class="form-control"/></td>
           </tr>
           <tr class="report_content">
            <td><p>생일: </p></td>
            <td><input type="text" name="writer"
               class="form-control"/></td>
         </tr>
         <tr class="report_content">
          <td><p>등급: </p></td>
          <td><input type="text" name="writer"
             class="form-control"/></td>
       </tr>
       <tr class="report_content">
        <td><p>적립금: </p></td>
        <td><input type="text" name="writer"
           class="form-control"/></td>
     </tr>
     <tr class="report_content">
      <td><p>누적경고: </p></td>
      <td><input type="text" name="writer"
         class="form-control"/></td>
   </tr>
   <tr class="report_content">
    <td><p>가입일자: </p></td>
    <td><input type="text" name="writer"
       class="form-control"/></td>
 </tr>
 <tr class="report_content">
  <td><p>수정일자: </p></td>
  <td><input type="text" name="writer"
     class="form-control"/></td>
</tr>
<tr class="report_content">
  <td><p>추가1: </p></td>
  <td><input type="text" name="writer"
     class="form-control"/></td>
</tr>
<tr class="report_content">
  <td><p>추가2: </p></td>
  <td><input type="text" name="writer"
     class="form-control"/></td>
</tr>
<tr class="report_content">
  <td><p>추가3: </p></td>
  <td><input type="text" name="writer"
     class="form-control"/></td>
</tr>          
               </table>
            </div>
            <!-- Footer -->
            <div class="modal-footer">
               <table align="center">
                  <tr>
                     <td><button type="button" class="btn btn-info btn-block">닫기</button></td>
                     <td><input type="submit" class="btn btn-info btn-primary" value="제출" /></td>
                  </tr>
               </table>
            </div>
         </form>
      </div>
   </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="../assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="../assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="../assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="../assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="../assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
//탈퇴 신청 목록 출력 - ajax
  function adminWithdrawalList_Ajax() {

  // pageNum값을 받아온다.
//   	var pageNum = actionForm.find("input[name='pageNum']").val();
//   	var amount = actionForm.find("input[name='amount']").val();
  	var pageNum = 1;
  	var amount = 5;

  	var data = {};
  	data["pageNum"] = pageNum;
  	data["amount"] = amount;
  	
  	$('#WithdrawalList').empty();
  	
  	$.ajax({
  		type : "POST",
  		url : "/adminWithdrawalList_Ajax.do",
  		data : JSON.stringify(data),
  		dataType : "json",
  		contentType : "application/json",
  		success : function(data) {
  			var list = data.withdrawalList;
  			var total = data.total;
  		
//   			var start = ${pageMaker.startPage};
//   			var end = ${pageMaker.endPage};
//   			var str = '';
//   			var paging = '';

  			$.each(list, function(index, withdrawal) {
  				console.log(list[index]);
  				var output = "";
  				output += "<tr>";
  				output += "<td style='text-align:center'><input type='checkbox' id='check'></td>";
  				output += "<td style='text-align:center'><button id='modal_id' class='btn btn-link'>"+list[index].member_ID+"</button></td>";
  				output += "<td style='text-align:center'>"+list[index].reason+"</td>";
  				output += "<td style='text-align:center'>"+list[index].grade+"</td>";
  				output += "<td style='text-align:center'>"+list[index].wi_DATE+"</td>";
  				
  				if(list[index].flag == 1) {
  					output += "<td style='text-align:center'>휴면</td>";
  				}
  				else {
  					output += "<td style='text-align:center'>탈퇴</td>";
  				}

  				output += "<td style='text-align:center'>";
  				output += "<form action='/adminApprovalWithdraw.do'><input type='hidden' name='user_key' value='" + list[index].user_KEY + "'>";
  				
  				if(list[index].flag == 1) {
  					output += "<input type='submit' class='btn btn-danger btn-sm' value='탈퇴' onclick='alert(\"탈퇴처리 하시겠습니까?\");'></form></td></tr>";
  				}
  				else {
  					output += "</form><input type='submit' class='btn btn-danger btn-sm' value='완료' style='background-color:gray;'></td></tr>";
  				}
  				
  				$('#WithdrawalList').append(output);
  			});
  		
  		},
  		error : function() {alert('admin withdrawal ajax 통신 실패!');}
  	});
  }
    
    $(document).ready(function() {
    	
    	adminWithdrawalList_Ajax();
    	
      $().ready(function() {
    	  $(".sidebar-wrapper li").eq(0).addClass('active');
    	  
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
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("modal_id");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // 닫기 버튼 불러오기
    var close = document.getElementsByClassName("btn-block")[0];

    // When the user clicks on the button, open the modal 
    btn.onclick = function() {
       modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
       modal.style.display = "none";
    }

    // 닫기 버튼을 누른 경우 display none.(창 없앰)
    close.onclick = function() {
       modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
       if (event.target == modal) {
          modal.style.display = "none";
       }
    }
 </script>

</body>

</html>
