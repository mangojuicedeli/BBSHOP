<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.bbshop.bit.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

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
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/demo/demo.css" rel="stylesheet" />
  
<style>
@font-face{font-family:'NanumBarunpen';font-weight:normal;src:local(NanumBarunpen);src:url("font/NanumBarunpenR.eot");src:url("font/NanumBarunpenR.woff") format("woff"), url("font/NanumBarunpenR.woff2") format("woff2")}
@font-face{font-family:'NanumBarunpen';font-weight:bold;src:local(NanumBarunpen);src:url("font/NanumBarunpenB.eot");src:url("font/NanumBarunpenB.woff") format("woff"), url("font/NanumBarunpenB.woff2") format("woff2")}

body{font-family:NanumBarunpen, sans-serif}
th{

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
</head>

<body class="">
<%@include file="sidebar.jsp" %>

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
                  <h4 class="card-title ">상품 목록</h4>
                  <div style='float:right'>
                   <a href="addGoods.do">
          			    <i class="material-icons" style='color:white'>add</i></a></div>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                  
                    <table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                            <th style="text-align: center"  width=4%>
                    
                         <input type='checkbox' id='check_all'>
                          
                        </th>
                        
                               <th style="text-align: center">
                          상품번호
                        </th>
                        <th style="text-align: center">
                          카테고리
                        </th>
                        <th style='text-align:center'>
                          메인이미지
                        </th>
                        <th style="text-align: center">
                          상품명
                        </th>
                        <th style="text-align: center">
                          가격
                        </th>
                        <th style="text-align: center">
                          재고
                        </th>
                        <th style="text-align: center">
                          판매
                        </th>
                        <th style="text-align: center">
                          제조사
                        </th>
                        <th style="text-align: center">
                          등록일
                        </th>
                        <th style="text-align: center">
                          인기상품
                        </th>
                        <th style="text-align: center">
                          할인율
                        </th>
                        <th style="text-align: center">
                          품절여부
                        </th>
                 
                        
                      </thead>
                      <tbody id="goodsListTable">
                      
                      <c:forEach var="goods" items="${goodsList}" varStatus="status" begin="${PageMaker.cri.pageNum*5-5 }" end="${PageMaker.cri.pageNum*5-1 }">
                      
                      
                        <tr>
                        
                          <td  style="text-align: center">
                              <input type='checkbox' class='check'>
                          </td>
                        
                        
                          <td  style="text-align: center">
                              <Button id="modifygoods_numbtn${status.index}" type="button" class="btn btn-link" onclick="location.href='modifyGoods'">${goods.goods_num}</Button>
                          </td>
                          <td  style="text-align: center" id="goodsCategory">
                          <c:choose>
                          	<c:when test="${goods.category==1}">
                              글러브
                            </c:when>
                                   	<c:when test="${goods.category==2}">
                              배트
                            </c:when>
                                   	<c:when test="${goods.category==3}">
                           유니폼
                            </c:when>
                                   	<c:when test="${goods.category==4}">
                              야구화
                            </c:when>
                                   	<c:when test="${goods.category==5}">
                              야구공
                            </c:when>
                           
                          </c:choose>
                          </td>
                          <td width=10% height=10% style='text-align:center'>
                            <img src="${goods.main_img}" width=60% >
                          </td>
                          <td  style="text-align: center">
                             <Button id="modifygoods_btn" type="button" class="btn btn-link" onclick="location.href='modifyGoods'" >${goods.name }</Button>
                          </td>
                          <td class="text-primary"  style="text-align: center">
                            ${goods.price}원
                          </td>
                          <td  style="text-align: center">
                            99
                          </td>
                          <td  style="text-align: center">
                            ${goods.sales}개
                          </td>
                          <td  style="text-align: center">
                            ${goods.brand }
                          </td>
                          <td  style="text-align: center">
                              ${goods.regdate}
                            </td>
                            <td  style="text-align: center">
                              <c:choose>
                              
                              	<c:when test="${goods.best ==0 }">
                              		일반
                              	</c:when>
                              	<c:when test="${goods.best ==1 }">
                              		인기
                              	</c:when>
                              </c:choose>
                              
                            </td>
                            <td  style="text-align: center">
                                ${goods.discount}
                              </td>
                              <td  style="text-align: center">
                                X
                              </td>
                            
                        </tr>
                       </c:forEach>
                       
                      </tbody>
                      
                        <table id='table_footer'width="100%">
                      	<tr>
                      	 	<td align=left><button class='btn btn-danger btn-sm' id="selectDelete">선택 삭제</button></td>
                      
                   
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
									<li><a href="#">카테고리</a></li>
									<li><a href="#">제조사</a></li>
									<li><a href="#">인기상품</a></li>
									<li><a href="#">품절여부</a></li>
									<li><a href="#">할인율</a></li>
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
            <img src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/admin_img2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/sidebar-4.jpg" alt="">
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  
  <script type="text/javascript">
    var modifyForm = document.getElementById('modifygoods');
    var span = document.getElementsByClassName('close')[0];

    $('#modifygoods_btn').click(function(){
      modifyForm.style.display = "block";
    })

    window.onclick = function (event){
      if(event.target == modifyForm){
        modifyForm.style.display="none";
      }
    }

  </script>
 
  <script>	
  
  $("#selectDelete").click(function(){
		var listindex=[];
		var goodsnum=[];
		$('input:checkbox[type=checkbox]:checked').each(function (index) {
			listindex.push($('.check').index(this));
			goodsnum.push($('#modifygoods_numbtn'+listindex[index]).text());
			});
		var ajaxarr={"goodsnum":goodsnum}
		$.ajaxSettings.traditional = true;
		$.ajax({
			url:"selectGoodsDelete.do",
			type:"POST",
			data:ajaxarr,
			dataType:"text",
			success : function(data) {
				console.log("삭제 성공");
				console.log(data);
				location.href="goodsList.do";
				}, 
			error : function() {
				console.log("실패");
				}
			});
	});

  //선택체크 부분 
  //전체체크를 누르면 하위에 모든 체크박스가 체크된다.
	$(document).on("click","#check_all",function(){
		if($('#check_all').is(':checked')){
			$('.check').prop('checked' , true);
		}
		else{
			$('.check').prop('checked', false);
			
		}	
	});
	
	//하위 항목중 하나라도 체크가 풀릴시 전체 체크도 풀려야한다.
	 $(document).on('click','.check',function(){
		if($("input[class='check']:checked").length<=${PageMaker.cri.amount}){
			$("#check_all").prop("checked",false);
			
		}else{
			$("#check_all").prop("checked",true);
		}
	
	
	});
  
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
					url:"goodsListPaging.do",
					type:"GET",
					data:data,
					dataType:"json",
					contentType:"application/json",
					success:function(data){
						console.log("성공!");
						//여러가지 데이터 타입을 받아옴.
						console.log(data);
						console.log(data.goodsList);
						console.log(data.goodsList[0]);
						console.log(data.PageMaker.cri.pageNum);
						//한 페이지당 굿즈 리스트를 5개씩 받기위해 설정. 초기에는 pageNum이 1 이고 ajax가 실행될 시기에는 2부터 시작하기에 가능하게만듬.
						for( var i = data.PageMaker.cri.pageNum*5-5;i<data.PageMaker.cri.pageNum*5;i++){
							var values=data.goodsList[i];
							console.log(values);
							str+="<tr><td  style='text-align: center'>"
							//	 +"<div class='form-check'>"
                          	//	 +"<label class='form-check-label'> "                         
                            //	 +"<input class='form-check-input' type='checkbox'>"
                            //    +"<span class='form-check-sign'>"
                            //   +"<span class='check'></span>"
                            //  +"</span></label></div>"
                            +"<input type='checkbox' class='check'>"
			                 +"</td>"
			                 +"<td  style='text-align: center'>"
			                 +"<Button id='modifygoods_btn"+i+" type='button' class='btn btn-link' onclick="+"location.href='modifyGoods'>"+values.goods_num+"</Button></td>"
			             	 +"<td  style='text-align: center'>글러브</td>"
			             	 +"<td width=10% height=10% style='text-align:center'>"
			               	 +"<img src="+values.main_img+" width=60% ></td>"
			             	 +"<td  style='text-align: center'>"
			                 +"<Button id='modifygoods_btn'"+i+" type='button' class='btn btn-link' onclick="+"'location.href='modifyGoods'>"+values.name+"</Button></td>"
			             	 +"<td class='text-primary'  style='text-align: center'>"
			               	 +values.price+"원</td>"
			             	 +"<td  style='text-align: center'>99</td>"
			             	 +"<td  style='text-align: center'>"+values.sales+"개</td>"
			             	 +"<td  style='text-align: center'>"+values.brand+"</td>"
			             	 +"<td  style='text-align: center'>"+values.regdate+"</td>"
			               	 +"<td  style='text-align: center'>일반</td>"
			               	 +"<td  style='text-align: center'>"+values.discount+"</td>"
			                 +"<td  style='text-align: center'>X</td>";
			                 
							//마지막 페이지에서 증가 사이즈를 5의 폭으로 줬는데 마지막페이지가 5가 안될경우에는 오류가 나기 때문에 goodsList[i+1]가 null일경우 포문을 빠져나간다.
							if(data.goodsList[i+1]==null)
								break;
								
							
						}
						$('#goodsListTable').empty();
						$('#goodsListTable').append(str);
						
						// 페이징 버튼 AJAX 처리
						
					
					
						
						$('.page-item').removeClass("active");
						$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
					},
					error:function(){
						console.log("실패");
					}
					});
				
			  });
 
    	  
    	   
    	  
    	  
    	  $(".sidebar-wrapper li").eq(1).addClass('active');
    	 
       	
    	    
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
          alert(new_image);

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
