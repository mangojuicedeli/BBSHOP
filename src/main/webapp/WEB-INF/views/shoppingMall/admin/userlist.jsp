<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
   width: 30%; /* Could be more or less, depending on screen size */
   height: 74%;
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
	margin-left: 450px;
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
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">회원 목록</h4>
                 
                </div>
                <div class="card-body">
                <div class="table-responsive">
                <table class="category" >
                  <tr style='text-align:right'>
	                  <td><label for=category>회원 등급</label>
	                  <td><input type="checkbox" id='check_all' checked="checked">전체</td>
	                  <td><input type="checkbox" id='check_bronze'>브론즈</td>
	                  <td><input type="checkbox" id='check_silver'>실버</td>
	                  <td><input type="checkbox" id='check_gold'>골드</td>
	                  <td><input type="checkbox" id='check_platinum'>다이아</td>
              		<div style='float:right'>    
                  	<select class='form-control'>
                      <option> 누적경고 순</option>
                      <option> 가입일자 순</option>
                  	</select>
              		</div>
                  </tr>
                </table>
              </div>
             
              <table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                  
                      	<th style='text-align:center'>
                        	회원번호
                        </th>
                        <th style='text-align:center'>
                        	ID
                        </th>
                        <th style='text-align:center'>
                      	    닉네임
                        </th>
                        <th style='text-align:center'>
                       		이름
                        </th>
                        <th style='text-align:center'>
                      		전화번호
                        </th>
                        <th style='text-align:center'>
                    		등급
                        </th>
                        <th style='text-align:center'>
                    		적립금                   
                        </th>
                        <th style='text-align:center'>
                      	    누적경고
                        </th>
                        <th style='text-align:center'>
                     		가입일자
                        </th>
                      </thead>
                      <tbody id="userListTable">
                      <c:forEach var="userList" items="${userList}" varStatus="status" begin="${PageMaker.cri.pageNum*5-5 }" end="${PageMaker.cri.pageNum*5-1 }">
                        <tr>
                        	<td style='text-align:center;width:80px;'>
                            ${userList.USER_KEY}
                          </td>
                          <td  class="text-primary" style='text-align:center'>
                            <button id="modal_id" class='btn btn-link' onclick="openMemberModal(${userList.USER_KEY})">${userList.MEMBER_ID}</button>
                          </td>
                          <td style='text-align:center;width:80px;'>
                            ${userList.NICKNAME}
                          </td>
                          <td style='text-align:center;width:80px;'>
                          	  ${userList.NAME}
                          </td>
                          <td style='text-align:center'>
                            ${userList.PHONE}
                          </td>
                          <td style='text-align:center'>
                           	 ${userList.GRADE}
                          </td>
                          <td style='text-align:center;width:80px;'>
                            ${userList.SAVINGS}
                          </td>
                          <td style='text-align:center;width:90px;'>
                            ${userList.CAUTION}
                          </td>
                          <td style='text-align:center' id="regdate">
                            <fmt:formatDate pattern="yyyy-MM-dd" value="${userList.REGDATE}" />
                          </td>             
                        </tr>
                        </c:forEach>
                          <table id='table_footer'width="100%">
                      	<tr>
                      	
                   
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
									<li><a href="#">회원 ID</a></li>
									<li><a href="#">회원 등급</a></li>
									
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
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
      
    </div>
  </div>
  
  <!-- ===============================모달================================================ -->
  <!-- The Modal -->
  <div id="order_Modal" class="modal">

    <!-- Modal content -->
    <div class="modal-content">
       <!-- header -->
       <div class="modal-header">
       	  <h4 class="text-black" style="font-weight: bold;">회원정보</h4>
          <!-- 닫기(x) 버튼 -->
          <span class="close">&times;</span>
          <!-- header title -->
          <h4 class="modal-title" align="center"></h4>
       </div>
     <!-- body -->
	 <div class="modal-body">
        <table style="margin-left:auto; margin-right:auto; width:100%;">
           <tr class="report_content">
              <td><p>ID: </p></td>
              <td><input type="text" id="id"
                  class="form-control"/></td>
           </tr>
          <tr class="report_content">
           <td><p>이름: </p></td>
           <td><input type="text" id="name"
               class="form-control"/></td>

            <tr class="report_content">
             <td><p>생일: </p></td>
             <td><input type="text" id="birth"
              class="form-control"/></td>
        <tr class="report_content">
            <td><p>수정일자: </p></td>
            <td><input type="text" id="moddate"
            class="form-control"/></td>
        </tr>
        <tr class="report_content">
            <td><p>선호브랜드1: </p></td>
            <td><input type="text" id="moredetails1"
            class="form-control"/></td>
        </tr>
        <tr class="report_content">
            <td><p>선호브랜드2: </p></td>
            <td><input type="text" id="moredetails2"
            class="form-control"/></td>
        </tr>
        <tr class="report_content">
            <td><p>선호브랜드3: </p></td>
            <td><input type="text" id="moredetails3"
            class="form-control"/></td>
        </tr>
        <tr>
            <td><p>선호 구단: </p></td>
            <td><input type="text" id="team"
            class="form-control"/></td>
        </tr>
        <tr>
            <td><p>포지션: </p></td>
            <td><input type="text" id="position"
            class="form-control"/></td>
        </tr>
        </table>
     </div>
     <!-- Footer -->
          <div class="modal-footer" style="margin-top:0px;">
             <table align="center">
                <tr>
                   <td><button type="button" class="btn btn-info btn-block" id="confirmation">확인</button></td>
                </tr>
             </table>
          </div>
    </div>
 </div>

  <script>
    $(document).ready(function() {
      $().ready(function() {
    	//페이지 이동부분
   		 var actionForm =$("#pageForm");
  	
   		  $(".page-item a").on("click",function(e){
  				e.preventDefault(); //페이지 이동이없도록 처리한다.
  				console.log("click");
  				//FORM에 있는 pageNum값을 클릭한 페이지의 숫자로 바꿔주기 위한 코드.
  				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
  				var data = {
  						//form의 페이지 넘과 어마운트를 받아온다(amount는 없어도 상관없다.)
  						pageNum: actionForm.find("input[name='pageNum']").val(), 
  						amount: actionForm.find("input[name='amount']").val()
  					};
  				console.log("pageNum="+data.pageNum);
  				var str = '';
  				var end = ${PageMaker.endPage};
  				var start = ${PageMaker.startPage};
  				var paging = '';
  	
  				$.ajax({
  					url:"UserListPaging.do",
  					type:"GET",
  					data:data,
  					dataType:"json",
  					contentType:"application/json",
  					success:function(data){
  						
  						var count=0;
  						
  						//한 페이지당 굿즈 리스트를 5개씩 받기위해 설정. 초기에는 pageNum이 1 이고 ajax가 실행될 시기에는 2부터 시작하기에 가능하게만듬.
  						for( var i = data.PageMaker.cri.pageNum*5-5;i<data.PageMaker.cri.pageNum*5;i++){
  						
  							var values=data.userList[i];
  							
  							// 가입날짜
  							var time1 = new Date(values.regdate).getTime();
  							var regdate = new Date(time1);
  							var formatRegdate = regdate.getFullYear()+"-0"+(regdate.getMonth() + 1)+"-"+regdate.getDate();
  							
  							str+= "<tr>"
  								  +"<td style='text-align:center; width:80px;'>"+values.user_KEY+"</td>"
                            	  +"<td  class='text-primary' style='text-align:center'><button id='modal_id' class='btn btn-link' onclick='openMemberModal("+values.user_KEY+")'' >"+values.member_ID+"</button></td>"
                          		  +"<td style='text-align:center;width:80px;'>"+values.nickname+"</td>"
                          		  +"<td style='text-align:center;width:80px;'>"+values.name+"</td>"
                          		  +"<td style='text-align:center'>"+values.phone+"</td>"
                          		  +"<td style='text-align:center'>"+values.grade+"</td>"
                          		  +"<td style='text-align:center;width:80px;'>"+values.savings+"</td>"
                           	 	  +"<td style='text-align:center;width:90px;'>"+values.caution+"</td>"
                          		  +"<td style='text-align:center' id='regdate'>" + formatRegdate + "</td></tr>";
                          		  
                          		  count++;
  							//마지막 페이지에서 증가 사이즈를 5의 폭으로 줬는데 마지막페이지가 5가 안될경우에는 오류가 나기 때문에 goodsList[i+1]가 null일경우 포문을 빠져나간다.
  							if(data.userList[i+1]==null)
  								break;
  								
  							
  						}
  						$('#userListTable').empty();
  						$('#userListTable').append(str);
  						
  						// 페이징 버튼 AJAX 처리
  						
 						$('.page-item').removeClass("active");
 						$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
 					},
 					error:function(){
 						console.log("실패");
 					}
 					});
 				
 			  });
  
    	  
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
    var modal = document.getElementById('order_Modal');;

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
       if (event.target == modal) {
          modal.style.display = "none";
       }
    }
    
    // 회원 조회 모달
    function openMemberModal(num){	
		$.ajax({
			url:"getMember.do?user_key="+num,
			type:"GET",
			dataType:"json",
			success : function(data) {
				var result = data;
				// 가입날짜
				var time1 = new Date(result.regdate).getTime();
				var regdate = new Date(time1);
				var formatRegdate = regdate.getFullYear()+"년 "+(regdate.getMonth() + 1)+"월 "+regdate.getDate()+"일";
				
				// 수정날짜
				var time2 = new Date(result.moddate).getTime();
				var moddate = new Date(time2);
				var formatModdate = moddate.getFullYear()+"년 "+(moddate.getMonth() + 1)+"월 "+moddate.getDate()+"일";
				
				$('#id').val(result.member_ID);
				$('#pw').val(result.member_PW);
				$('#name').val(result.name);
				$('#nickname').val(result.nickname);
				$('#phone').val(result.phone);
				$('#birth').val(result.birth);
				$('#grade').val(result.grade);
				$('#savings').val(result.savings);
				$('#caution').val(result.caution);
				$('#regdate').val(formatRegdate);
				$('#moddate').val(formatModdate);
			}, error : function() {
					console.log("실패");
			}
		});
		
		$.ajax({
			url:"getDetails.do?user_key="+num,
			type:"GET",
			dataType:"json",
			success : function(data) {
				var detailResult = data;
				$('#moredetails1').val(detailResult.brand1);
				$('#moredetails2').val(detailResult.brand2);
				$('#moredetails3').val(detailResult.brand3);
				$('#team').val(detailResult.team);
				$('#position').val(detailResult.position);
				
			}, error : function() {
					console.log("실패");
			}
		});
		
		modal.style.display = "block";
	}
    
    // x 버튼
    $(".close")[0].onclick = function(){
       modal.style.display = "none";
    }
    
    // 확인 버튼
    $("#confirmation")[0].onclick = function(){
        modal.style.display = "none";
     }
 </script>
</body>

</html>
