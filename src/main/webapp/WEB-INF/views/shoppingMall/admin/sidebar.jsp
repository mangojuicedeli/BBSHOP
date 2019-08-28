<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<div class="wrapper ">
    <div class="sidebar" data-color="azure" data-background-color="black" data-image="${pageContext.request.contextPath }/resources/admin_bootstrap/assets/img/admin_img2.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          BBShop Admin
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
         <div class="menubar">
              <li class="nav-item dropdown">
                  <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">회원 관리
                    <i class="material-icons">person</i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                    <a class="dropdown-item" href="userlist.do" style="color: indianred">회원목록</a>
                      <a class="dropdown-item" href="withdrawal.do" style="color: indianred">회원탈퇴관리</a>
                </li>
        </div>
        
          <li class="nav-item" data-value="111">
            <a class="nav-link" href="goodsList.do" id="goodslist">
              <i class="material-icons">content_paste</i>
              <p>상품 관리</p>
            </a>
          </li>

             <li class="nav-item dropdown">
                  <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">주문 관리
                    <i class="material-icons">library_books</i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                    <a class="dropdown-item" href="admin_order.do" style="color: indianred">주문목록</a>
                    <a class="dropdown-item" href="refund.do" style="color: indianred">교환/반품</a>   
                  </div>                  
          </li>

          <li class="nav-item ">
            <a class="nav-link" href="review.do">
              <i class="material-icons">bubble_chart</i>
              <p>후기 관리</p>
            </a>
          </li>
               <li class="nav-item dropdown">
                  <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터
                    <i class="material-icons">location_ons</i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                    <a class="dropdown-item" href="service_FAQ.do" style="color: indianred">FAQ</a>
                      <a class="dropdown-item" href="service_OneToOne.do" style="color: indianred">1:1</a>
                      <a class="dropdown-item" href="service_QNA.do" style="color: indianred">QNA</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#pablo community_Notice" id='navbarDropdownProfile' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>커뮤니티 관리
              <i class="material-icons">language</i>
            </a>
            <div class='dropdown-menu dropdown-menu-right' aria-labelledby='navbarDropdownProfile'>
            	<a class='dropdown-item' href='community_Board.do' style='color:indianred'>게시글 관리</a>
            	<a class='dropdown-item' href='community_Report.do' style='color:indianred'>신      고</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
   
    
