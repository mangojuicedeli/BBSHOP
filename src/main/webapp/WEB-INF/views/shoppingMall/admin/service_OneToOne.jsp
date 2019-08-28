<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bbshop.bit.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/demo/demo.css" rel="stylesheet" />
  <!-- 스마트 에디터 -->
  <link href="${pageContext.request.contextPath }/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8" />
  
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
                  <h4 class="card-title ">1:1문의</h4>
                  <p class="card-category">문의 별로 내용을 볼수있습니다.</p>
                </div>
                <div class="card-body">
                  <table id='categoryList'>
						<form action="searchOtoCategory.do">
							<tr>
								<td><label for="category">카테고리</label> &nbsp; &nbsp;</td>
								<td><input type='checkbox' name='Category' value="주문/배송">주문/배송 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' name='Category' value="상품관련">상품관련 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' name='Category' value="결제관련">결제관련&nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' name='Category' value="기타">기타&nbsp;&nbsp;&nbsp;</td>
								<td><input type='submit' id='oto_submit' name='category_submit' value='조회' class='btn btn-info btn-sm'>
								
						</form>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<form action="searchOtoAnswer.do">
							
								<td><label for="answer">답변여부</label> &nbsp; &nbsp;</td>
								<td><input type='checkbox' id='answer_all' name='Answer' value='answerAll'>전체 &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='complete_answer' name='Answer' value='answerOk'>답변O &nbsp;&nbsp;&nbsp;</td>
								<td><input type='checkbox' id='no_answer' name='Answer' value='answerNo'>답변X&nbsp;&nbsp;&nbsp;</td>
								<td><input type='submit' id='FAQ_submit' name='answer_category_submit' value='조회' class='btn btn-info btn-sm'>
							</form>	
						
							</tr>
				  </table>
                 
                  <div class="table-responsive">
      			   	<table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                       
                        <th style="text-align: center"  width=10%>
                          문의 번호
                        </th>
                        <th  style="text-align:center" width=10%>
                          카테고리
                        </th>
                        <th style="text-align: center">
                          문의 제목
                        </th>
                        <th style="text-align: center">
             회원 번호
                        </th>
					   <th style="text-align: center">
                          등록날짜
                        </th>                
					    <th style="text-align: center">
                          답변여부
                        </th>
                    
                      </thead>	
                      <tbody id="OnetooneListTable">
                      <c:forEach var="oto" items="${onetoone}" varStatus="status" begin="${PageMaker.cri.pageNum*5-5 }" end="${PageMaker.cri.pageNum*5-1 }">
                      	
                      	
                      		<tr>
                      		<td style='text-align:center'>${oto.one_one_num}</td>
                      		<td style='text-align:center'>${oto.one_category}</td>
                      		<td style='text-align:center'><Button id="info_OTO${status.index}" type="button" class="btn btn-link" align=center>${oto.one_title}</Button></td>
                      		<td style='text-align:center'>${oto.user_key}</td>
                      		<td style='text-align:center'>${oto.regdate }</td>
                      		<td style='text-align:center'>
                      		<c:choose>
                          	<c:when test="${oto.lev==0}">
                              <button class='btn btn-default btn-sm' value='답변 없음'>답변없음</button>
                            </c:when>
                                   	<c:when test="${oto.lev>=1}">
                              <button class='btn btn-success btn-sm' value='답변 보기'>답변완료</button>
                            </c:when>
                                        
                          </c:choose></td>
                      		
                      	</tr>
                      	</c:forEach>
                      </tbody>
                      <table id='table_footer'width="100%">
                      	<tr>
                      	<td><h2 style="color:white">이건히든</h2>
                      	</td>
                      
                      
                   
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
									<li><a href="#">회원 번호</a></li>
									<li><a href="#">답변 여부</a></li>
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
						</td>
                      	 
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
				<form action='answerOTO.do' method="get">
					<table width=100% style="text-align:center" align=center>
	
						<tr>
							<td>
								<label for='writer'>작성자</label></td>
							<td><text id="one_one_num"></text></td> 
						</tr>
						<tr>
							<td>
								<label for='writer'>회원 번호</label></td>
							<td><text id="user_key"></text></td> 
						</tr>
						<tr>
							<td>
								<label for='title'>제목</label></td>
							<td><text id="title"></text></td>
						</tr>
						<tr>
							<td>
								<label for='goodsCategory'>카테고리</label></td>
							<td><text id="category"></text></td>
						</tr>
						<tr>
							<td>
								<label for='write_date'>작성일</label></td>
							<td><text id="regdate"></text></td>
						</tr>
						<tr>
							<td>
								<label for='write_content'>내용</label>
							</td>
							<td><textarea id="contents"rows="10" cols="40" name="one_contents"></textarea></td>
						</tr>
				
				</table>
				<table width=100%>
					<tr>
						<td style='text-align:center'>
						<button class='btn btn-info'>취소</button>
						<input type=submit id='submit' class="btn btn-success" value="답변하기"/>
						</td>
					</tr>
				</table>
				<input type="hidden" name="one_one_num" value="" id="hiddenOTONum"/>
			</form>
			</div>
		</div>
	 </div>

  <script type="text/javascript">
    var info = document.getElementById('info_modal');
    var span = document.getElementsByClassName('close')[0];

    $('#info_OTO0').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[0].one_one_num}")
	      $('#user_key').html("${onetoone[0].user_key}")
	      $('#title').html("${onetoone[0].one_title}");
	      $('#regdate').html("${onetoone[0].regdate}")
	      $('#contents').html("${onetoone[0].one_contents}");
	      $('#category').html("${onetoone[0].one_category}");
	      $('#hiddenOTONum').val("${onetoone[0].one_one_num}");
	      
	    });
    $('#info_OTO1').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[1].one_one_num}")
	      $('#user_key').html("${onetoone[1].user_key}")
	      $('#title').html("${onetoone[1].one_title}");
	      $('#regdate').html("${onetoone[1].regdate}")
	      $('#contents').html("${onetoone[1].one_contents}");
	      $('#category').html("${onetoone[1].one_category}");
	      
	    });
  
    $('#info_OTO2').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[2].one_one_num}")
	      $('#user_key').html("${onetoone[2].user_key}")
	      $('#title').html("${onetoone[2].one_title}");
	      $('#regdate').html("${onetoone[2].regdate}")
	      $('#contents').html("${onetoone[2].one_contents}");
	      $('#category').html("${onetoone[2].one_category}");
	      
	    });
  
    $('#info_OTO3').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[3].one_one_num}")
	      $('#user_key').html("${onetoone[3].user_key}")
	      $('#title').html("${onetoone[3].one_title}");
	      $('#regdate').html("${onetoone[3].regdate}")
	      $('#contents').html("${onetoone[3].one_contents}");
	      $('#category').html("${onetoone[3].one_category}");
	      
	    });
    $('#info_OTO4').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[4].one_one_num}")
	      $('#user_key').html("${onetoone[4].user_key}")
	      $('#title').html("${onetoone[4].one_title}");
	      $('#regdate').html("${onetoone[4].regdate}")
	      $('#contents').html("${onetoone[4].one_contents}");
	      $('#category').html("${onetoone[4].one_category}");
	      
	    });
    
    $('#info_OTO0').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[0].one_one_num}")
	      $('#user_key').html("${onetoone[0].user_key}")
	      $('#title').html("${onetoone[0].one_title}");
	      $('#regdate').html("${onetoone[0].regdate}")
	      $('#contents').html("${onetoone[0].one_contents}");
	      $('#category').html("${onetoone[0].one_category}");
	      
	    });
  $('#info_OTO1').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[1].one_one_num}")
	      $('#user_key').html("${onetoone[1].user_key}")
	      $('#title').html("${onetoone[1].one_title}");
	      $('#regdate').html("${onetoone[1].regdate}")
	      $('#contents').html("${onetoone[1].one_contents}");
	      $('#category').html("${onetoone[1].one_category}");
	      
	    });

  $('#info_OTO2').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[2].one_one_num}")
	      $('#user_key').html("${onetoone[2].user_key}")
	      $('#title').html("${onetoone[2].one_title}");
	      $('#regdate').html("${onetoone[2].regdate}")
	      $('#contents').html("${onetoone[2].one_contents}");
	      $('#category').html("${onetoone[2].one_category}");
	      
	    });

  $('#info_OTO3').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[3].one_one_num}")
	      $('#user_key').html("${onetoone[3].user_key}")
	      $('#title').html("${onetoone[3].one_title}");
	      $('#regdate').html("${onetoone[3].regdate}")
	      $('#contents').html("${onetoone[3].one_contents}");
	      $('#category').html("${onetoone[3].one_category}");
	      
	    });
  $('#info_OTO4').click(function(){
	      info.style.display = "block";
	      $('#one_one_num').html("${onetoone[4].one_one_num}")
	      $('#user_key').html("${onetoone[4].user_key}")
	      $('#title').html("${onetoone[4].one_title}");
	      $('#regdate').html("${onetoone[4].regdate}")
	      $('#contents').html("${onetoone[4].one_contents}");
	      $('#category').html("${onetoone[4].one_category}");
	      
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
  					url:"service_OnetoonePaging.do",
  					type:"GET",
  					data:data,
  					dataType:"json",
  					contentType:"application/json",
  					success:function(data){
  						console.log("성공!");
  						//여러가지 데이터 타입을 받아옴.
  						console.log(data);
  						console.log(data.oto);
  						console.log(data.oto[0]);
  						console.log(data.PageMaker.cri.pageNum);
  						//한 페이지당 굿즈 리스트를 5개씩 받기위해 설정. 초기에는 pageNum이 1 이고 ajax가 실행될 시기에는 2부터 시작하기에 가능하게만듬.
  						for( var i = data.PageMaker.cri.pageNum*5-5;i<data.PageMaker.cri.pageNum*5;i++){
  							var values=data.oto[i];
  							console.log(values);
  							str+="<tr><td style='text-align:center'>"+ values.one_one_num+"</td>"
                      		+"<td style='text-align:center'>"+values.one_category+"</td>"
                      		+"<td style='text-align:center'><Button id='info_Onetoone' type='button' class='btn btn-link' align=center>"+values.one_title+"</Button></td>"
                      		+"<td style='text-align:center'>"+values.user_key+"</td>"
                      		+"<td style='text-align:center'>"+values.regdate+"</td>"
                      		+"<td style='text-align:center'>";
                      		
                      		if(values.lev==0){
                            str+=  "<button class='btn btn-default btn-sm' value='답변 없음' disabled='true'>답변없음</button></td>";
                      		}
                            else{
                      			str+= " <button class='btn btn-success btn-sm' value='답변 보기'>답변보기</button></td>";
                      		}
                        	
  								//마지막 페이지에서 증가 사이즈를 5의 폭으로 줬는데 마지막페이지가 5가 안될경우에는 오류가 나기 때문에 goodsList[i+1]가 null일경우 포문을 빠져나간다.
  							if(data.oto[i+1]==null)
  								break;
  						}
  						$('#OnetooneListTable').empty();
  						$('#OnetooneListTable').append(str);
  						
  						// 페이징 버튼 AJAX 처리
  						
  					
  					
  						
  						$('.page-item').removeClass("active");
  						$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
  					},
  					error:function(){
  						console.log("실패");
  					}
  					});
  				
  			  });
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
