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
  <!-- Chartist JS -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/demo/demo.js"></script>
  
 
  
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
	src: url("font/NanumBarunpenB.eot");
	src: url("font/NanumBarunpenB.woff") format("woff"),
		url("font/NanumBarunpenB.woff2") format("woff2")
}

body {
	font-family: NanumBarunpen, sans-serif
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}


</style>
 <script>
    $(document).ready(function() {
    	
    	function readURL(input) {
   		 
    	    if (input.files && input.files[0]) {
    	        var reader = new FileReader();
    	 
    	        reader.onload = function (e) {
    	            $('#image_section').attr('src', e.target.result);
    	        }
    	 
    	        reader.readAsDataURL(input.files[0]);
    	    }
    	}
    	 
    	$("#imgInput").change(function(){
    	    readURL(this);
    	});
    	function readURL2(input) {
      		 
    	    if (input.files && input.files[0]) {
    	        var reader = new FileReader();
    	 
    	        reader.onload = function (e) {
    	            $('#image_section2').attr('src', e.target.result);
    	        }
    	 
    	        reader.readAsDataURL(input.files[0]);
    	    }
    	}
    	 
    	$("#imgInput2").change(function(){
    	    readURL2(this);
    	});
    	function readURL3(input) {
      		 
    	    if (input.files && input.files[0]) {
    	        var reader = new FileReader();
    	 
    	        reader.onload = function (e) {
    	            $('#image_section3').attr('src', e.target.result);
    	        }
    	 
    	        reader.readAsDataURL(input.files[0]);
    	    }
    	}
    	 
    	$("#imgInput3").change(function(){
    	    readURL3(this);
    	});
    	
		
    	$("#selectCategory").on("change",function(){
        			
    		if($("#selectCategory option:selected").val() =="glove"){
    		alert("glove");
    		var append =document.getElementById("appendMoreDetail");
			var str ="<tr><td><label for='goodsHand'>좌/우</label>&nbsp;&nbsp;&nbsp;&nbsp; <input type='checkbox' id='goodsLeft'name='goodsLeft' value='goodsLeft' "+
			">좌</td> <td><input type='checkbox' id='goodsRight' name='goodsRight' value='goodsRight'>우<br></td></tr>"
			+"<tr><td><label for='goodsPosition'>포지션</label>&nbsp;&nbsp;&nbsp;&nbsp;"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='first_baseman'value='first_baseman'>1루수"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='second_baseman'value='second_baseman'>2루수"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='third_baseman'value='third_baseman'>3루수"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='shortstop'value='shortstop'>유격수"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='outfielder'value='outfielder'>외야수"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='catcher'value='catcher'>포수"+
			"&nbsp;&nbsp;<input type='checkbox' id='goodsPosition' name='pitcher'value='pitcher'>투수</td></tr>"
			+"<br><tr><td><label for='goodsColor_g'>색상</label>&nbsp;&nbsp; <input type='text' class='form-control' id=goodsColor_g name=GoodsColor_g placeholder='색상을 적어주세요'><br></td></tr>";
			
			append.innerHTML =str;    	
    		}
    		if($("#selectCategory option:selected").val() =="bat"){
    			alert("bat");
    			
    			var append = document.getElementById("appendMoreDetail");
    			var str="<tr><td><label for='goodsMaterial'>재질</label> &nbsp;&nbsp; <input type='text' id='goodsMaterial' name='goodsMaterial' class='form-control' placeholder='재질을 적어주세요'><br></td></tr>"
    			+"<br><tr><td><label for='goodsSize_b'>규격</label> &nbsp;&nbsp; <input type='text' id='goodsSize_b' name='goodsSize_b' class='form-control' placeholder='규격을 적어주세요'><br></td></tr>"
    			+"<br><tr><td><label for='goodsColor_b'>색상</label> &nbsp;&nbsp; <input type='text' id='goodsColor_b' name='goodsColor_b' class='form-control' placeholder='색상을 넣어주세요'><br></td></tr>";
    			append.innerHTML=str;
    		}
    		if($("#selectCategory option:selected").val() =="uniform"){
    			alert("uniform");
    			
    			var append = document.getElementById("appendMoreDetail");
    			var str = "<tr><td><label for='goodsTeam'>구단</label>&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='LG'value='LG'>LG&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='Doosan'value='Doosan'>Doosan&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='Kia'value='Kia'>KIA&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='Samsung'value='Samsung'>Samsung&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='Kiwoom'value='Kiwoom'>kiwoom&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='KT'value='KT'>KT&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='SK'value='SK'>SK&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='Hanwha'value='Hanwha'>Hanwha&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsTeam' name='NC'value='NC'>NC&nbsp;&nbsp;&nbsp;&nbsp;<br></td></tr>"+
    			"<tr><td><label for='goodsWear'>홈/어웨이</label> &nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsWear' name='goodsWear' value='Home'>Home &nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsWear' name='goodsWear' value='Away'>Away <br></td></tr>"+
    			"<tr><td><label for ='goodsSize'>사이즈</label>&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsSize_u' name='85'value='85'>85&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsSize_u' name='90'value='90'>90&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsSize_u' name='95'value='95'>95&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsSize_u' name='100'value='100'>100&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsSize_u' name='105'value='105'>105&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsSize_u' name='110'value='110'>110<br> </td></tr>";
    			append.innerHTML=str;
    		}
    		if($("#selectCategory option:selected").val() == "shoes"){
    			alert('shoes');
    			
    			var append = document.getElementById('appendMoreDetail');
    			var str ="<tr><td><label for='goodsShoes'>스파이크</label>&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes' name='spike' value='spike'>있음&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes' name='no' value='no'>없음<br>"+
    			"<tr><td><label for='goodsSize_s'>사이즈</label>&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes_s' name='230' value='230'>230&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes_s' name='240' value='240'>240&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes_s' name='250' value='250'>250&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes_s' name='260' value='260'>260&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes_s' name='270' value='270'>270&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsShoes_s' name='280' value='280'>280<br></td></tr>"+
    			"<tr><td><label for='goodsColor_s'>색상</label>&nbsp;&nbsp;"+
    			"<input type='text'id='goodsColor_s' name='goodsColor_s' class='form-control' placeholder='색상을 적어주세요'></td></tr>";
    			
    			append.innerHTML=str;
    		}
    		if($("#selectCategory option:selected").val() == "ball"){
    			alert("ball");
    			
    			var append = document.getElementById('appendMoreDetail');
    			var str = "<tr><td><label for='goodsUsage'>용도</label>&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsUsage' name='goodsUsage' value='competition'>시합용 &nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='goodsUsage' name='GoodsUsage' value='safety'>안전용<br></td></tr>"+
    			"<tr><td><label for='sellAmount'>판매단위</label>&nbsp;&nbsp;&nbsp;&nbsp;"+
    			"<input type='checkbox' id='sellAmount' name='sellAmount' value='dozen'>다스&nbsp;&nbsp;"+
    			"<input type='checkbox' id='sellAmount' name='sellAmount' value='individual'>낱개</td><tr>";
    			
    			append.innerHTML=str;
    		}
    	
    	});
		    	
    	
    	$().ready(function() {
    		
    	  
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
</head>

<body>
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
									<h4 class="card-title ">상품 수정</h4>
									<p class="card-category">상품을 수정할수 있습니다..</p>
								</div>
								<div class="card-body">
									<div class="table-responsive">
												<form enctype="multipart/form-data">
										<table class="table"
											style="background-color: rgba(230, 236, 236, 0.4); margin-top: 10px">
											<thead class=" text-primary">
													<table width=100% cellspacing=0 cellpadding=0 align=center>
														<div class=modifyForm>
															<tr>
																<td><label for="category">카테고리</label> &nbsp; &nbsp;
																 <select name="selectCategory" id="selectCategory">
																 		<option value="default">선택</option>
																		<option value="glove">글러브</option>
																		<option value="bat">배트</option>
																		<option value="uniform">유니폼</option>
																		<option value="shoes">야구화</option>
																		<option value="ball">야구공</option>
																</select></td>
															</tr>
														
															<tr>
																<td><label for="goodsName">상품명</label> <input
																	text="text" class="form-control" id="goodsName"
																	name="goodsName" placeholder="상품명을 적으세요"></td>
															</tr>

															<tr>
																<td><label for="goodsPrice">가격</label> <input
																	text="text" class="form-control" id="goodsPrice"
																	name="goodsPrice" placeholder="가격을 적으세요"></td>
															</tr>

															<tr>
																<td><label for="goodsContents">상세내용</label> <input
																	text="text" class="form-control" id="goodsContents"
																	name="goodsContents" placeholder="상세 내용을 적으세요">

																</td>
															</tr>
																		

															<tr>
															<div id="imageInsert">
																<table width=100% colspan=2>
																	<tr>
																	
																	<td width =33% height=33%>
																		<label for ="goodsImage">상품 이미지</label>&nbsp;<img style="width:34%; height:34%;" id="image_section"> <input type="file" id="imgInput">
																		
																		</td>
																		
																		<td width =33% height=33%>
																		<label for ="goodsImage2">추가 이미지</label>&nbsp;<img style="width:33%; height:33%;" id="image_section2"> <input type="file" id="imgInput2">
																		
																		</td>
																		
																		<td width =33% height=33%>
																		<label for ="goodsImage3">추가 이미지</label>&nbsp;<img style="width:33%; height:33%;" id="image_section3"> <input type="file" id="imgInput3">
																		</td>
																	
																		</tr>	
																</table>
																</div>
														<tr>
																<td><label for="goodsContents">제조사</label> <input
																	text="text" class="form-control" id="goodsBrand"
																	name="goodsBrand" placeholder="제조사를 적으세요">

																</td>
															</tr>
															<tr><br>
																<td><label for="goodsAmount">재고 수량</label> <input
																	text="text" class="form-control" id="goodsAmount"
																	name="goodsAmount" placeholder="수량을 적으세요">

																</td>
															</tr>
																<tr><br>
																<td><label for="goodsPopular">인기 상품</label> <input
																	type="checkbox" id="goodsPopular"
																	name="goodsPopular">

																</td>
															</tr>
															<tr>
																<td><label for="goodsDiscouint">할인율</label> <input
																	type="text" class="form-control" id="goodsDiscount"
																	name="goodsDiscount" placeholder="할인율을 적으세요 %">

																</td>
															</tr>
															<tr>																													<tr>
																<td><label for="goodsSoldout">품절 여부</label> <input
																	type="checkbox"  id="goodsSoldout"
																	name="goodsSoldout">

																</td>
															</tr>
															<tr><br>
																<td><label for="goodsSellTotal">누적 판매 수</label> <input
																	text="text" class="form-control" id="goodsSellTotal"
																	name="goodsSellTotal" readonly>

																</td>
															</tr><br>
															
														 	<div id="appendMoreDetail">
														 	
														 	</div>
														 	<tr>
														 	<table align=center>
														 	<tr>
														 	<td ><input type='submit' class="btn btn-info" id=goodsModifysubmit name=goodsModifysubmit value="상품등록">
															</td>
															</tr>
															</table>
															</tr>
														</div>
													</table>



												</form>
											</tbody>
										</table>
									</div>
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
													document.write(new Date()
															.getFullYear())
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
  
</body>

</html>
