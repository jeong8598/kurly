<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="/static/front/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/static/front/img/favicon.ico" type="image/x-icon">
<title>Doogle admin</title>
<link rel="stylesheet" href="/static/core/css/bootstrap.min.css">
<c:if test="${edit eq 'edit'}"><link rel="stylesheet" href="/static/core/css/summernote-bs4.min.css"></c:if>
<link rel="stylesheet" href="/static/back/css/global.css">
<link rel="stylesheet" href="/static/back/css/admin.css">
<c:if test="${url eq '/admin/product' || url eq '/admin/product/add'}"><link rel="stylesheet" href="/static/back/css/product.css"></c:if>
<c:if test="${url eq '/admin/popup/add'}"><link rel="stylesheet" href="/static/back/css/popupAdd.css"></c:if>
<script defer type="text/javascript" src="/static/core/js/jquery-3.5.1.min.js"></script>
<c:if test="${edit eq 'edit'}"><script defer src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script></c:if>
<script defer type="text/javascript" src="/static/core/js/bootstrap.min.js"></script>
<script defer type="text/javascript" src="/static/core/js/axios.min.js"></script>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/core/js/summernote-bs4.min.js"></script></c:if>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/core/js/summernote-ko-KR.min.js"></script></c:if>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/back/js/edit.js"></script></c:if>
<script defer type="text/javascript" src="/static/back/js/admin.js"></script>
<c:if test="${url eq '/admin/category'}"><script defer type="text/javascript" src="/static/back/js/categoryList.js"></script></c:if>
<c:if test="${url eq '/admin/product/add'}"><script defer type="text/javascript" src="/static/back/js/productAdd.js"></script></c:if>
<c:if test="${url eq '/admin/recipe/add'}"><script defer type="text/javascript" src="/static/back/js/recipeAdd.js"></script></c:if>
<c:if test="${url eq '/admin/event/add'}"><script defer type="text/javascript" src="/static/back/js/eventAdd.js"></script></c:if>
<c:if test="${url eq '/admin/popup/add'}"><script defer type="text/javascript" src="/static/back/js/popupAdd.js"></script></c:if>
<c:if test="${url eq '/admin/alarm'}"><script defer type="text/javascript" src="/static/back/js/alarm.js"></script></c:if>
<c:if test="${url eq '/admin/notice'}"><script defer type="text/javascript" src="/static/back/js/notice.js"></script></c:if>
<c:if test="${url eq '/admin/notice/add'}"><script defer type="text/javascript" src="/static/back/js/notice_insert.js"></script></c:if>
<c:if test="${url eq '/admin/notice_update'}"><script defer type="text/javascript" src="/static/back/js/notice_insert.js"></script></c:if>
<c:if test="${url eq '/admin/question'}"><script defer type="text/javascript" src="/static/back/js/questionList.js"></script></c:if>
<c:if test="${url eq '/admin/question/add'}"><script defer type="text/javascript" src="/static/back/js/questionRegister.js"></script></c:if>
<c:if test="${url eq '/admin/questionUpdate'}"><script defer type="text/javascript" src="/static/back/js/questionUpdate.js"></script></c:if>
<c:if test="${url eq '/admin/qnaAnswer'}"><script defer type="text/javascript" src="/static/back/js/qnaAnswer.js"></script></c:if>
<c:if test="${url eq '/admin/qnaAnswerWrite'}"><script defer type="text/javascript" src="/static/back/js/qnaAnswerWrite.js"></script></c:if>
<c:if test="${url eq '/admin/quaAnswerView'}"><script defer type="text/javascript" src="/static/back/js/qnaAnswerWrite.js"></script></c:if>
<c:if test="${url eq '/admin/popup/detail'}"><script defer type="text/javascript" src="/static/back/js/popupDetail.js"></script></c:if>
<sitemesh:write property="head" /></head>
<body>
	<div id="wrap">
		<header>
			<nav class="navbar bg-dark navbar-dark navbar-expand-sm">
				<div class="d-flex flex-column">
					<div class="p-2">
						<ul class="navbar-nav" id="menu">
							<li class="nav-item"><a class="nav-link" href="/">????????? ??????</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin">????????? ??????</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin/member">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/member">??????</a>
										<a class="dropdown-item" href="/admin/member/add">????????????</a>
									</div>
								</div>						
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/category">????????????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/category">????????????</a>
										<a class="dropdown-item" href="/admin/category/add">??????</a>
										<a class="dropdown-item" href="/admin/category/init">????????????????????????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/product">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/product">??????</a>
										<a class="dropdown-item" href="/admin/product/add">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/order">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/order">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/payment">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/payment">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/file">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/file">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/recipe">?????????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/recipe">?????????</a>
										<a class="dropdown-item" href="/admin/recipe/add">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/event">?????????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/event">?????????</a>
										<a class="dropdown-item" href="/admin/event/add">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/popup">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/popup">??????</a>
										<a class="dropdown-item" href="/admin/popup/add">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/notice">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/notice">??????</a>
										<a class="dropdown-item" href="/admin/notice/add">??????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/coupon">??????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/coupon">??????</a>
										<a class="dropdown-item" href="/admin/coupon/add">??????</a>
										<a class="dropdown-item" href="/admin/coupon/myCoupon">????????????</a>
									</div>
								</div>
							</li>
							<li class="nav-item"><a class="nav-link" href="/admin/question">??????????????????</a></li>
							<li>
								<div class="dropdown">
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"></button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="/admin/question">??????????????????</a>
										<a class="dropdown-item" href="/admin/question/add">??????</a>
									</div>
								</div>
							</li>
						</ul>
						<ul class="nav nav-pills" id="adminLoginInfo">
							<li class="nav-item"><a class="nav-link text-white" href="#">${name}??? ???????????????!</a></li>
							<li class="nav-item"><a class="nav-link text-white" href="/logout">????????????</a></li>
		<!-- 					<li class="nav-item"><a class="nav-link active disabled" href="#">Disabled</a></li> -->
						</ul>
					</div>
					<div class="p-2">
						<ul class="navbar-nav" id="menu">
							<li class="nav-item"><a class="nav-link" href="/admin/bulkOrder">??????????????????</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin/proposition">????????????</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin/eco">??????????????????</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin/qnaAnswer">1:1??????</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin/alarm">???????????????</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<main>
			<div class="container-fluid"><sitemesh:write property="body" /></div>
		</main>
	</div>
</body>
</html>