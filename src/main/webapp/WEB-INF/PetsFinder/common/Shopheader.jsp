<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetsFinder</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow" style="margin-top:120px;">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" >
                <div class="flex-fill" >
                    <ul class="nav navbar-nav d-flex justify-content-around ps-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/'/>Shop">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/'/>ShopList?cate=1">필수 용품</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/'/>ShopList?cate=2">약</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value='/'/>ShopList?cate=3">굿즈</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <!-- <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" name="searchText" id="Search" placeholder="검색하기">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div> -->
                    <a class="nav-icon d-none d-lg-inline" type="submit" href="" data-bs-toggle="modal" data-bs-target="#search">
                        <i class="fa fa-fw fa-search text-dark me-5"></i>
                    </a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="nav-icon position-relative text-decoration-none" href="<c:url value='/'/>shopCart">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark me-1"></i>
                         <span id="cartCount" class="position-absolute top-0 left-100 translate-middle badge rounded-pill" style="background-color: #75c9ba; color: white">${ cartCount }</span>
                    </a>
                    
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
    <!-- Modal -->
    <div class="modal fade bg-white" id="search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" style="background: none;" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<c:url value='/' />ShopList?" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                	<input type="hidden" value="${cate }" name="cate" />
                    <input type="text" class="form-control" id="Search" name="searchText" placeholder="검색하기">
                    <button type="submit" class="input-group-text" style="background-color: #75c9ba;">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- End Modal -->
    
</body>
</html>