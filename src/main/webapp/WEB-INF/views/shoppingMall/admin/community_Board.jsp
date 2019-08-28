<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*"%>
<%@ page import="com.bbshop.bit.domain.*"%>
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
                <div class="card-header card-header-primary" style='display:block;'>
                  <h4 class="card-title ">커뮤니티 게시글관리</h4>
                  <p class="card-category">게시글 내용을 볼수있습니다.</p>
                

              		
                </div>
                <div class="card-body">
					<form action="searchBoardCategory.do" >
    	              <table id='categoryList' align=right>
						<tr>
							<td><label for="category">구단 게시판 분류</label> &nbsp; &nbsp;</td>
							<td><input type='checkbox' id='notice_all' name='Team_Notice_category' value="all">전체 &nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_LG' name='category' value='lg'>LG &nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_Doosan' name='category' value='doosan'>두산&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_Hanwha' name='category' value='hanwha'>한화&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_Samsung' name='_category' value='samsung'>삼성&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_Kia' name='category' value='kia'>기아&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_NC' name='category' value='nc'>NC&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_SK' name='category' value='sk'>SK&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_KT' name='category' value='kt'>KT&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_Lotte' name='category' value='lotte'>롯데&nbsp;&nbsp;&nbsp;</td>
							<td><input type='checkbox' id='notice_Kiwoom' name='category' value='kiwoom'>키움&nbsp;&nbsp;&nbsp;</td>
							<td><input type='submit' id='notice_submit' name='notice_category_submit' value='조회' class='btn btn-info btn-sm'></td>
						</tr>		
					  </table>
					</form>
                 
                  <div class="table-responsive">
      			   	<table class="table" style="background-color: rgba(230, 236, 236, 0.4)">
                      <thead class=" text-primary">
                      
                        <th style="text-align: center"  width=2%>
                         <input type='checkbox' id='check_all'>
                        </th>
                        
                        <th style="text-align: center"  width=10%>
                          게시글 번호
                        </th>
                        <th  style="text-align:center" width=10%>
             	팀		
                        </th>
                        <th style="text-align: center">
                          제목
                        </th>
					   <th style="text-align: center">
                          작성자
                        </th>                
					    <th style="text-align: center">
                          등록 날짜
                        </th>
                      <th style="text-align: center">
                          조회수
                        </th>
                            <th style="text-align: center;" width=5%>
                          
                        </th>
                        
                      </thead>	
                      <tbody id="boardListTable">
                      <c:forEach var="board" items="${boardList}" varStatus="status" begin="${PageMaker.cri.pageNum*5-5 }" end="${PageMaker.cri.pageNum*5-1 }">
                      	<tr>
                      		
                      		<td style='text-align:center'><input type='checkbox' class='check'>
                      		<td style='text-align:center'><text id='board_numbtn${status.index}'>${board.BOARD_NUM}</text></td>
                      		<td style='text-align:center'>${board.TEAM_NAME}</td>
                      		<td style='text-align:center'><Button id="info_board${status.index}" type="button" class="btn btn-link" align=center>${board.TITLE }</Button></td>
                      		<td style='text-align:center'>${board.WRITER}</td>
                      		<td style='text-align:center'>
                      			<fmt:formatDate pattern="yyyy-MM-dd" value='${board.REGDATE}'/></td>
                      		<td style='text-align:center'>${board.HIT}</td>
                  			
                      	</tr>
                     	</c:forEach>
                      </tbody>
                     <table id='table_footer'width="100%">
                      	<tr>
                      	 	<td align=left><button id="SelectDelete" class="btn btn-danger btn-sm">선택 삭제</button></td>
                      
                   
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
									<li><a href="#">팀</a></li>
									<li><a href="#">제목</a></li>
									<li><a href="#">작성자</a></li>
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
			<h4 align=center>글조회</h4>
			<div class='modal_body' style='padding: 40px 50px;'>
				<table width=100% style="text-align: center">
					<tr>
						<td><label for='writer'>작성자</label></td>
						<td><text id="writer"></text></td>
					</tr>
					<tr>
						<td><label for='title'>제목</label></td>
						<td><text id="subject"></text></td>
					</tr>
					<tr>
						<td><label for='goodsCategory'>구단</label></td>
						<td><text id="team"></text></td>
					</tr>
					<tr>
						<td><label for='write_date'>작성일</label></td>
						<td><text id="regdate"></text></td>
					</tr>
					<tr>
						<td><label for='write_content'>내용</label></td>
						<td><textarea id="contents" rows="10" cols="40"></textarea></td>
					</tr>
				</table>
			</div>
			<!-- Footer -->
			<div class="modal-footer" style="margin-top: 0px;">
				<table align="center">
					<tr>
						<td><button type="button" class="btn btn-info btn-block"
								id="confirmation">확인</button></td>
					</tr>
				</table>
			</div>
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
	$('#info_board0').click(function(){
	      info.style.display = "block";
	      $('#writer').html("${boardList[0].WRITER}");
	      $('#subject').html("${boardList[0].TITLE}");
	      $('#team').html("${boardList[0].TEAM_NAME}");
	      $('#regdate').html("<fmt:formatDate pattern="yyyy-MM-dd" value='${boardList[0].REGDATE}'/></td>");
	      $('#contents').html("${boardList[0].BOARD_CONTENT}");
	    });
	$('#info_board1').click(function(){
	      info.style.display = "block";

	      $('#writer').html("${boardList[1].WRITER}")
	      $('#subject').html("${boardList[1].TITLE}");
	      $('#team').html("${boardList[1].TEAM_NAME}")
	      $('#regdate').html("<fmt:formatDate pattern="yyyy-MM-dd" value='${boardList[1].REGDATE}'/></td>");
	      $('#contents').html("${boardList[1].BOARD_CONTENT}");});
	$('#info_board2').click(function(){
	      info.style.display = "block";

	      $('#writer').html("${boardList[2].WRITER}")
	      $('#subject').html("${boardList[2].TITLE}");
	      $('#team').html("${boardList[2].TEAM_NAME}")
	      $('#regdate').html("<fmt:formatDate pattern="yyyy-MM-dd" value='${boardList[2].REGDATE}'/></td>");
	      $('#contents').html("${boardList[2].BOARD_CONTENT}");});
	$('#info_board3').click(function(){
	      info.style.display = "block";

	      $('#writer').html("${boardList[3].WRITER}")
	      $('#subject').html("${boardList[3].TITLE}");
	      $('#team').html("${boardList[3].TEAM_NAME}")
	      $('#regdate').html("<fmt:formatDate pattern="yyyy-MM-dd" value='${boardList[3].REGDATE}'/></td>");
	      $('#contents').html("${boardList[3].BOARD_CONTENT}");});
	$('#info_board4').click(function(){
	      info.style.display = "block";

	      $('#writer').html("${boardList[4].WRITER}")
	      $('#subject').html("${boardList[4].TITLE}");
	      $('#team').html("${boardList[4].TEAM_NAME}")
	      $('#regdate').html("<fmt:formatDate pattern="yyyy-MM-dd" value='${boardList[4].REGDATE}'/></td>");
	      $('#contents').html("${boardList[4].BOARD_CONTENT}");})
	    

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
    		
    		 $("#SelectDelete").click(function(){
    				var listindex=[];
    				var boardnum=[];
    				$('input:checkbox[type=checkbox]:checked').each(function (index) {
    					listindex.push($('.check').index(this));
    					boardnum.push($('#board_numbtn'+listindex[index]).text());
    					});
    				var ajaxarr={"boardnum":boardnum}
    				alert(listindex);
    				alert(boardnum);
    				alert(ajaxarr);
    				$.ajaxSettings.traditional = true;
    				$.ajax({
    					url:"selectBoardDelete.do",
    					type:"POST",
    					data:ajaxarr,
    					dataType:"text",
    					success : function(data) {
    						console.log("삭제 성공");
    						console.log(data);
    						location.reload();
    						}, 
    					error : function() {
    						console.log("실패");
    						}
    					});
    			});

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
 					url:"boardListPaging.do",
 					type:"GET",
 					data:data,
 					dataType:"json",
 					contentType:"application/json",
 					success:function(data){
 						
 						var count=0;
 						
 						//한 페이지당 굿즈 리스트를 5개씩 받기위해 설정. 초기에는 pageNum이 1 이고 ajax가 실행될 시기에는 2부터 시작하기에 가능하게만듬.
 						for( var i = data.PageMaker.cri.pageNum*5-5;i<data.PageMaker.cri.pageNum*5;i++){
 							
 							var values=data.board[i];
 							
 	  						// 가입날짜
 	  						var time1 = new Date(values.regdate).getTime();
 	  						var regdate = new Date(time1);
 	  						var formatRegdate = regdate.getFullYear()+"-0"+(regdate.getMonth() + 1)+"-"+regdate.getDate();
 							
 							str+="<tr><td style='text-align:center'><input type='checkbox' class='check'></td>"
                      			+"<td style='text-align:center'><text id='board_numbtn"+count+"'>"+values.board_NUM+"</text></td>"
                      			+"<td style='text-align:center'>"+values.team_NAME+"</td>"
                      			+"<td style='text-align:center'><Button id='info_QNA' type='button' class='btn btn-link' align=center>"+values.title+"</Button></td>"
                      			+"<td style='text-align:center'>"+values.writer+"</td>"
                      			+"<td style='text-align:center'>" + formatRegdate + "</td>"
                      			+"<td style='text-align:center'>"+values.hit+"</td></tr>";
                      		count++;
 							//마지막 페이지에서 증가 사이즈를 5의 폭으로 줬는데 마지막페이지가 5가 안될경우에는 오류가 나기 때문에 goodsList[i+1]가 null일경우 포문을 빠져나간다.
 							if(data.board[i+1]==null)
 								break;
 								
 							
 						}
 						$('#boardListTable').empty();
 						$('#boardListTable').append(str);
 						
 						// 페이징 버튼 AJAX 처리
 						
 					
 					
 						
 						$('.page-item').removeClass("active");
 						$('#btn_' + actionForm.find("input[name='pageNum']").val()).addClass("active");
 					},
 					error:function(){
 						console.log("실패");
 					}
 					});
 				
 			  });
  
    	  
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
    
    // x 버튼
    $(".close")[0].onclick = function(){
    	info_modal.style.display = "none";
    }
    
    // 확인 버튼
    $("#confirmation")[0].onclick = function(){
    	info_modal.style.display = "none";
     }
  </script>
</body>

</html>
