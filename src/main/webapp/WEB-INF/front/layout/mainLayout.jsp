<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="/static/front/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/static/front/img/favicon.ico" type="image/x-icon">
<title>Doogle</title>
<link rel="stylesheet" href="/static/core/css/bootstrap.min.css">
<c:if test="${edit eq 'edit'}"><link rel="stylesheet" href="/static/core/css/summernote-bs4.min.css"></c:if>
<link rel="stylesheet" href="/static/front/css/global.css">
<link rel="stylesheet" href="/static/front/css/layout.css">
<link rel="stylesheet" href="/static/front/css/main.css">
<c:if test="${url eq '/search'}"><link rel="stylesheet" href="/static/front/css/search.css"></c:if>
<c:if test="${url eq '/map'}"><link rel="stylesheet" href="/static/front/css/kakao_map.css"></c:if>
<c:if test="${url eq '/calendar'}"><link rel="stylesheet" href="/static/front/css/calendar.css"></c:if>
<c:if test="${url eq '/terms' || url eq '/join' || url eq '/login' || url eq '/member/info'}"><link rel="stylesheet" href="/static/front/css/member.css"></c:if>
<script defer type="text/javascript" src="/static/core/js/jquery-3.5.1.min.js"></script>
<c:if test="${edit eq 'edit'}"><script defer src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script></c:if>
<script defer type="text/javascript" src="/static/core/js/bootstrap.min.js"></script>
<script defer type="text/javascript" src="/static/core/js/axios.min.js"></script>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/core/js/summernote-bs4.min.js"></script></c:if>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/core/js/summernote-ko-KR.min.js"></script></c:if>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/front/js/edit.js"></script></c:if>
<script defer type="text/javascript" src="/static/front/js/global.js"></script>
<script defer type="text/javascript" src="/static/front/js/main.js"></script>
<c:if test="${url eq '/map'}"><script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${apikey}&libraries=services"></script></c:if>
<c:if test="${url eq '/map'}"><script defer type="text/javascript" src="/static/front/js/kakao_map.js"></script></c:if>
<c:if test="${url eq '/calendar'}"><script defer type="text/javascript" src="/static/front/js/calendar.js"></script></c:if>
<c:if test="${url eq '/terms'}"><script defer type="text/javascript" src="/static/front/js/terms.js"></script></c:if>
<c:if test="${url eq '/join'}"><script defer type="text/javascript" src="/static/front/js/join.js"></script></c:if>
<c:if test="${url eq '/login'}"><script defer type="text/javascript" src="/static/front/js/login.js"></script></c:if>
<c:if test="${url eq '/member/info'}"><script defer type="text/javascript" src="/static/front/js/member_info.js"></script></c:if>
<c:if test="${url eq '/test/edit'}"><script defer type="text/javascript" src="/static/front/js/test.js"></script></c:if>
<c:if test="${url eq '/search'}"><script defer type="text/javascript" src="/static/front/js/search.js"></script></c:if>
<sitemesh:write property="head" /></head>
<body>
	<div id="wrap">
		<header>
			<div class="base_wrap">
				<h1 id=logo>
					<a href="/"><span>Doogle</span></a>
				</h1>
				<c:if test="${id ne null}">
				<ul id="member">
					<li><a href="/member/info">${name}</a> ??? ???????????????!</li>
					<li><a href="/member/info">????????????</a></li>
					<li><a href="/logout">????????????</a></li>
				</ul>
				</c:if>
				<c:if test="${empty id}">
				<ul id="member">
					<li><a href="/login">?????????</a></li>
					<li><a href="/terms">????????????</a></li>
				</ul>
				</c:if>
				<div class="search_wrap">
					<div class="search_event_wrap">
						<input type="text" id="search" placeholder="??????" value="" />
						<button class="btn btn-success" id="btn_search">??????</button>
						<select class="custom-select hide" id="searchType">
							<option value="NEWS" selected="selected">??????</option>
							<option value="BLOG">?????????</option>
<!-- 							<option value="BOOK">???</option> -->
							<option value="ENCYC">????????????</option>
<!-- 							<option value="MOVIE">??????</option> -->
							<option value="CAFE">?????????</option>
							<option value="KIN">??????iN</option>
<!-- 							<option value="LOCAL">??????</option> -->
							<option value="ERRATA">????????????</option>
							<option value="WEBKR">?????????</option>
							<option value="IMAGE">?????????</option>
<!-- 							<option value="SHOP">??????</option> -->
							<option value="DOC">????????????</option>
						</select>
					</div>
				</div>
			</div>
		</header>
		<nav>
			<div class="base_wrap">
				<ul id="menu">
					<li><a href="/shop">??????</a></li>
					<li><a href="/map">????????????</a></li>
					<li><a href="/calendar">??????</a></li>
				</ul>
			</div>
		</nav>
		<main>
			<div class="base_wrap"><sitemesh:write property="body" /></div>
    	</main>
		<footer>
			<div class="base_wrap">
				<p id="copyright">Copyright 2021 1team.</p>
			</div>
		</footer>
		<div id="darkMode">
			<button type="button">?????? ??????</button>
		</div>
		<div id="imageView" class="hide"></div>
	</div>
</body>
</html>