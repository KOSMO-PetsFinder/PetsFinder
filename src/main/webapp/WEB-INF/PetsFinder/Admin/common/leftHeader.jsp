<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Left Header -->
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
				<div class="nav">
						<div class="sb-sidenav-menu-heading">Pets Finder</div>
							<a class="nav-link" href="<c:url value='/' />Admin/adminMain">
									<div class="sb-nav-link-icon"><i class="fa-solid fa-dog"></i></div>
									Dashboard
							</a>
						<div class="sb-sidenav-menu-heading">Pets Finder 관리자</div>
						<!-- 뎁스1 -->
						<!-- 공지사항 리액트 테스트 -->
						<a class="nav-link" href="<c:url value='/' />Admin/noticeReact.do">
								<div class="sb-nav-link-icon"><i class="fa-solid fa-address-card"></i></div>
								공지사항
						</a>
						<!-- 뎁스2 -->
						<!-- 회원관리 -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#member" aria-expanded="false" aria-controls="member">
								<div class="sb-nav-link-icon"><i class="fa-solid fa-address-card"></i></div>
								회원
								<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="member" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="<c:url value='/' />Admin/AdminMember/memberAd">회원관리</a>
								</nav>
						</div>

						<!-- ** Wonjae ** -->
						<!-- 뎁스3 -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#adoption" aria-expanded="false" aria-controls="adoption">
							<!-- 입양관리 -->
							<div class="sb-nav-link-icon"><i class="fa-solid fa-bone"></i></div>
							입양
							<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="adoption" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
										
										<a class="nav-link" href="<c:url value='/' />Admin/reportList.do">유기동물 신고</a>
										<a class="nav-link" href="<c:url value='/' />Admin/animalRegistration.do">유기동물 등록</a>
										<a class="nav-link" href="<c:url value='/' />Admin/animalList.do">유기동물 목록</a>
										<a class="nav-link" href="<c:url value='/' />Admin/adoptAppList.do">입양 신청 접수 목록</a>
								</nav>
						</div>
						
						<!-- 뎁스4 -->
						<!-- 시터 -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#sitter" aria-expanded="false" aria-controls="sitter">
								<div class="sb-nav-link-icon"><i class="fa-solid fa-money-check-dollar"></i></div>
								시터
								<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="sitter" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
										<a class="nav-link" href="<c:url value='/'/>Admin/sitBList.do">
												시터예약 &amp; 결제내역
										</a>
										<a class="nav-link" href="<c:url value="/" />Admin/AdminSitter/sitterApp">
												시터신청
										</a>
								</nav>
							</div>	
						
						
						<!-- 뎁스5 -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#board" aria-expanded="false" aria-controls="board">
							<div class="sb-nav-link-icon"><i class="fa-solid fa-table-list"></i></div>
							게시판
							<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						
						<div class="collapse" id="board" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="<c:url value='/' />Admin/AdpReview.do">입양후기 게시판</a>
										<a class="nav-link" href="<c:url value="/" />Admin/AdminBoard/sitterps">시터후기 게시판</a>
										<!-- <a class="nav-link" href="layout-static.html">쇼핑몰후기 게시판</a> -->
										<a class="nav-link" href="<c:url value='/' />Admin/FaqList.do">FAQ 게시판</a>
										<a class="nav-link" href="<c:url value='/' />Admin/qnaList.do">Q&amp;A 게시판</a>
								</nav>
						</div>

						
							
						<!-- 쇼핑몰 -->
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#shop" aria-expanded="false" aria-controls="shop">
								<div class="sb-nav-link-icon"><i class="fa-solid fa-money-check-dollar"></i></div>
								쇼핑몰
								<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="shop" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
										<a class="nav-link" href="<c:url value="/" />Admin/AdminShop/shopRegi">
												상품등록
										</a>
										<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#shopPay" aria-expanded="false" aria-controls="pagesCollapseError1">
												결제
												<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
										</a>
										<div class="collapse" id="shopPay" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
												<nav class="sb-sidenav-menu-nested nav">
														<a class="nav-link" href="<c:url value='/' />Admin/PayMent.do">고객 주문내역</a>
														<a class="nav-link" href="<c:url value='/' />Admin/ShipLocInfo.do">배송내역</a>
												</nav>
										</div>
								</nav>
							</div>
				</div>
		</div>
		<div class="sb-sidenav-footer">
				<div class="small"></div>
				
		</div>
</nav>