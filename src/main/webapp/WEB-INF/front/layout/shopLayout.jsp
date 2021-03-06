<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="stylesheet" href="/static/front/css/shopLayout.css">
<link rel="stylesheet" href="/static/front/css/shop.css">
<c:if test="${url eq '/shop/bulkOrder'}"><link rel="stylesheet" href="/static/front/css/bulkOrder.css"></c:if>
<c:if test="${url eq '/shop/propositionList'}"><link rel="stylesheet" href="/static/front/css/proposition-list.css"></c:if>
<c:if test="${url eq '/shop/propositionWrite'}"><link rel="stylesheet" href="/static/front/css/proposition-write.css"></c:if>
<c:if test="${url eq '/shop/propositionUpdate'}"><link rel="stylesheet" href="/static/front/css/proposition-write.css"></c:if>
<c:if test="${url eq '/shop/ecoList'}"><link rel="stylesheet" href="/static/front/css/proposition-list.css"></c:if>
<c:if test="${url eq '/shop/ecoWrite'}"><link rel="stylesheet" href="/static/front/css/proposition-write.css"></c:if>
<c:if test="${url eq '/shop/ecoUpdate'}"><link rel="stylesheet" href="/static/front/css/proposition-write.css"></c:if>
<c:if test="${url eq '/shop/event/basket'}"><link rel="stylesheet" href="/static/front/css/event_basket.css"></c:if>
<c:if test="${url eq '/shop/event/benefit'}"><link rel="stylesheet" href="/static/front/css/event_benefit.css"></c:if>
<c:if test="${url eq '/shop/event/friend'}"><link rel="stylesheet" href="/static/front/css/event_friend.css"></c:if>
<c:if test="${url eq '/shop/event/lover'}"><link rel="stylesheet" href="/static/front/css/event_lover.css"></c:if>
<c:if test="${url eq '/shop/event/total'}"><link rel="stylesheet" href="/static/front/css/event_total.css"></c:if>
<c:if test="${url eq '/shop/event/collection'}"><link rel="stylesheet" href="/static/front/css/event_collection.css"></c:if>
<c:if test="${url eq '/shop/event/my_benefit'}"><link rel="stylesheet" href="/static/front/css/event_my_benefit.css"></c:if>
<c:if test="${url eq '/shop/event'}"><link rel="stylesheet" href="/static/front/css/event_list.css"></c:if>
<c:if test="${url eq '/shop/recipe'}"><link rel="stylesheet" href="/static/front/css/recipe_list.css"></c:if>
<c:if test="${url eq '/shop/recipe/content'}"><link rel="stylesheet" href="/static/front/css/recipe_content.css"></c:if>
<c:if test="${url eq '/shop/deliveryList'}"><link rel="stylesheet" href="/static/front/css/deliveryList.css"></c:if>
<c:if test="${url eq '/shop/notice'}"><link rel="stylesheet" href="/static/front/css/notice.css"></c:if>
<c:if test="${url eq '/shop/notice_view'}"><link rel="stylesheet" href="/static/front/css/notice_view.css"></c:if>
<c:if test="${url eq '/shop/qna'}"><link rel="stylesheet" href="/static/front/css/qna.css"></c:if>
<c:if test="${url eq '/shop/qnaUpdate'}"><link rel="stylesheet" href="/static/front/css/qnaUpdate.css"></c:if>
<c:if test="${url eq '/shop/questionList'}"><link rel="stylesheet" href="/static/front/css/questionList.css"></c:if>
<c:if test="${url eq '/shop/order'}"><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"></c:if>
<c:if test="${url eq '/shop/order'}"><link rel="stylesheet" href="/static/front/css/order.css"></c:if>
<c:if test="${url eq '/shop/end'}"><link rel="stylesheet" href="/static/front/css/orderend.css"></c:if>
<c:if test="${url eq '/mypage/orderSumm'}"><link rel="stylesheet" href="/static/front/css/orderSumm.css"></c:if>
<c:if test="${url eq '/mypage/orderSumm_detail'}"><link rel="stylesheet" href="/static/front/css/orderSumm_detail.css"></c:if>
<c:if test="${url eq '/shop/basket'}"><link rel="stylesheet" href="/static/front/css/basket.css"></c:if>
<c:if test="${url eq '/shop/living'}"><link rel="stylesheet" href="/static/front/css/living.css"></c:if>
<c:if test="${url eq '/shop/event/product'}"><link rel="stylesheet" href="/static/front/css/event_product.css"></c:if>
<script defer type="text/javascript" src="/static/core/js/jquery-3.5.1.min.js"></script>
<script defer src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script defer type="text/javascript" src="/static/core/js/bootstrap.min.js"></script>
<script defer type="text/javascript" src="/static/core/js/axios.min.js"></script>
<c:if test="${url eq '/shop/event/collection'}"><script defer type="text/javascript" src="/static/front/js/event_collection.js"></script><link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"><script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script></c:if>
<script defer type="text/javascript" src="/static/front/js/shopGlobal.js"></script>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/core/js/summernote-bs4.min.js"></script></c:if>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/core/js/summernote-ko-KR.min.js"></script></c:if>
<c:if test="${edit eq 'edit'}"><script defer type="text/javascript" src="/static/front/js/edit.js"></script></c:if>
<c:if test="${url eq 'main'}"><script defer type="text/javascript" src="/static/front/js/shop.js"></script></c:if>
<c:if test="${url eq '/shop/product/form'}"><script defer type="text/javascript" src="/static/front/js/form.js"></script></c:if>
<c:if test="${url eq '/shop/bulkOrder'}"><script defer type="text/javascript" src="/static/front/js/bulk.js"></script></c:if>
<c:if test="${url eq '/shop/bulkOrder'}"><script defer type="text/javascript" src="/static/front/js/bulklist.js"></script></c:if>
<c:if test="${url eq '/shop/propositionList'}"><script defer type="text/javascript" src="/static/front/js/propositionList.js"></script></c:if>
<c:if test="${url eq '/shop/propositionWrite'}"><script defer type="text/javascript" src="/static/front/js/bulklist.js"></script></c:if>
<c:if test="${url eq '/shop/propositionUpdate'}"><script defer type="text/javascript" src="/static/front/js/bulklist.js"></script></c:if>
<c:if test="${url eq '/shop/propositionWrite'}"><script defer type="text/javascript" src="/static/front/js/propositionWrite.js"></script></c:if>
<c:if test="${url eq '/shop/propositionUpdate'}"><script defer type="text/javascript" src="/static/front/js/propositionWrite.js"></script></c:if>
<c:if test="${url eq '/shop/ecoList'}"><script defer type="text/javascript" src="/static/front/js/ecoList.js"></script></c:if>
<c:if test="${url eq '/shop/ecoWrite'}"><script defer type="text/javascript" src="/static/front/js/bulklist.js"></script></c:if>
<c:if test="${url eq '/shop/ecoUpdate'}"><script defer type="text/javascript" src="/static/front/js/bulklist.js"></script></c:if>
<c:if test="${url eq '/shop/ecoWrite'}"><script defer type="text/javascript" src="/static/front/js/propositionWrite.js"></script></c:if>
<c:if test="${url eq '/shop/ecoUpdate'}"><script defer type="text/javascript" src="/static/front/js/propositionWrite.js"></script></c:if>
<c:if test="${url eq '/shop/event/basket'}"><script defer type="text/javascript" src="/static/front/js/event_nav.js"></script></c:if>
<c:if test="${url eq '/shop/event/benefit'}"><script defer type="text/javascript" src="/static/front/js/event_nav.js"></script></c:if>
<c:if test="${url eq '/shop/event/friend'}"><script defer type="text/javascript" src="/static/front/js/event_nav.js"></script></c:if>
<c:if test="${url eq '/shop/event/lover'}"><script defer type="text/javascript" src="/static/front/js/event_lover.js"></script></c:if>
<c:if test="${url eq '/shop/event/total'}"><script defer type="text/javascript" src="/static/front/js/event_nav.js"></script></c:if>
<c:if test="${url eq '/shop/event/collection'}"><script defer type="text/javascript" src="/static/front/js/event_collection.js"></script></c:if>
<c:if test="${url eq '/shop/event/my_benefit'}"><script defer type="text/javascript" src="/static/front/js/event_my_benefit.js"></script></c:if>
<c:if test="${url eq '/shop/recipe'}"><script defer type="text/javascript" src="/static/front/js/recipe_list.js"></script></c:if>
<c:if test="${url eq '/deliveryPop'}"><script defer type="text/javascript" src="/static/front/js/deliveryPop.js"></script></c:if>
<c:if test="${url eq '/shop/deliveryList'}"><script defer type="text/javascript" src="/static/front/js/delivery.js"></script></c:if>
<c:if test="${url eq '/shop/notice'}"><script defer type="text/javascript" src="/static/front/js/notice.js"></script></c:if>
<c:if test="${url eq '/notice_insert'}"><script defer type="text/javascript" src="/static/front/js/notice_insert.js"></script></c:if>
<c:if test="${url eq '/notice_update'}"><script defer type="text/javascript" src="/static/front/js/notice_update.js"></script></c:if>
<c:if test="${url eq '/shop/qna'}"><script defer type="text/javascript" src="/static/front/js/qna.js"></script></c:if>
<c:if test="${url eq '/shop/qnaUpdate'}"><script defer type="text/javascript" src="/static/front/js/qnaRegister.js"></script></c:if>
<c:if test="${url eq '/qna_register'}"><script defer type="text/javascript" src="/static/front/js/qnaRegister.js"></script></c:if>
<c:if test="${url eq '/questionRegister'}"><script defer type="text/javascript" src="/static/front/js/questionRegister.js"></script></c:if>
<c:if test="${url eq '/questionUpdate'}"><script defer type="text/javascript" src="/static/front/js/questionUpdate.js"></script></c:if>
<c:if test="${url eq '/shop/order'}"><script defer type="text/javascript" src="/static/front/js/order.js"></script></c:if>
<c:if test="${url eq '/shop/basket'}"><script defer type="text/javascript" src="/static/front/js/basket.js"></script></c:if>
<c:if test="${url eq '/shop/living'}"><script defer type="text/javascript" src="/static/front/js/living.js"></script></c:if>
<c:if test="${url eq '/shop/product/detail'}"><script defer type="text/javascript" src="/static/front/js/productDetail.js"></script></c:if>
<sitemesh:write property="head" /></head>
<body>
	<div id="wrap">
		<!-- s:?????? -->
		<jsp:useBean id="now" class="java.util.Date" />
		<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />		
		<c:forEach items="${pulist}" var="pudto">
			<c:if test="${today >= pudto.start_date && today <= pudto.end_date && pudto.type == 'y'}">
				<input type="hidden" name="popup_no" value="${pudto.puno}"/>
				<input type="hidden" name="popup_title" value="${dto.title}"/>
				<input type="hidden" name="popup_left" value="${pudto.left}"/>
				<input type="hidden" name="popup_top" value="${pudto.top}"/>
				<input type="hidden" name="popup_width" value="${pudto.width}"/>
				<input type="hidden" name="popup_height" value="${pudto.height}"/>
			</c:if>
		</c:forEach>
		<!-- e:?????? -->
		<div id="main-banner">
			<div class="wrap-container">
				<a href="/shop/event/collection">?????? ???????????? ???????????? <b>100?????? ???????????????!</b><img src="/static/front/img/shop/ico_arrow.webp" /></a>
				<button type="button" id="btn-main-banner-close">???????????? ????????????</button>
			</div>
		</div>
		<header>
			<div class="wrap-container">
				<div id="top-banner"><a href="#"><img src="/static/front/img/shop/img_courier.webp" alt="??????, ??????, ?????? ????????????, ????????? ?????? ?????? ????????????" /></a></div>
				<h1 id="home"><a href="/shop"><img src="/static/front/img/shop/doogle_shopping.png" /></a></h1>
				<ul id="member-menu">
					<c:if test="${not empty id}">
						<li class="main">
							<a href="#">${name} ???</a>
							<ul class="sub hide">
								<li><a href="/shop/mypage/orderSumm">????????????</a></li>
								<li><a href="/shop/deliveryList">????????? ??????</a></li>
								<li><a href="/shop/living">??? ?????????</a></li>
								<li><a href="#">?????? ??????</a></li>
								<li><a href="/shop/mypage/mysaving">?????????</a></li>
								<li><a href="/shop/mypage/mycoupon">??????</a></li>
								<li><a href="/member/info">?????? ?????? ??????</a></li>
								<li><a href="/logout">????????????</a></li>
							</ul>
						</li>
					</c:if>
					<c:if test="${empty id}">
						<li><a href="/terms">????????????</a></li>
						<li></li>
						<li><a href="/login">?????????</a></li>
					</c:if>
					<li></li>
					<li class="main">
						<a href="/shop/notice" class="before">????????????</a>
						<ul class="sub hide">
							<li><a href="/shop/notice">????????????</a></li>
							<li><a href="/shop/questionList">???????????? ??????</a></li>
							<li><a href="/shop/qna">1:1 ??????</a></li>
							<li><a href="/shop/bulkOrder">???????????? ??????</a></li>
							<li><a href="/shop/propositionList">?????? ??????</a></li>
							<li><a href="/shop/ecoList">???????????? ?????????</a></li>
						</ul>
					</li>
				</ul>
				<nav>
					<div class="wrap-container">
						<ul id="main-menu">
							<li>
								<a href="#">?????? ????????????</a>
								<ul id="product-menu"  class="hide">
									<li>
										<ul id="product-main-wrap">	
											<c:forEach items="${clist}" var="dto"><li><a href="/shop/product/${dto.ctno}" ctno="${dto.ctno}">${dto.name}</a></li></c:forEach>
										</ul>
									</li>
									<li class="hide" id="product-sub-wrap">
										<div id="sub-loading"><div class="spinner-border text-muted"></div></div>
		<!-- 								<ul id="product-sub-menu"><li><a href="#">??????</a></li></ul> -->
									</li>
								</ul>
							</li>
							<li><a href="/shop/product/new">?????????</a></li>
							<li><a href="/shop/product/best">?????????</a></li>
							<li><a href="/shop/product/dis">????????????</a></li>
							<li><a href="/shop/event">????????????</a></li>
							<li>
								<form action="/shop/product/search" method="post">
									<input type="text" id="shop-search" name="search" placeholder="??? ????????? ???????????? ???????????? ?????????" />
									<button type="submit" id="btn-shop-search"></button>
									<button type="button" id="btn-shop-search-del" class="hide"></button>
								</form>
							</li>
							<li class="pl20 pr20"><a href="/shop/deliveryList"><img src="/static/front/img/shop/ico_delivery_setting.svg" /></a></li>
							<li class="pr20"><a href="/shop/basket" data-toggle="tooltip" data-placement="bottom" data-original-title="" id="btn-basket"><img src="/static/front/img/shop/ico_cart.svg" /></a></li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<main>
			<sitemesh:write property="body" />
		</main>
		<footer>
			<div class="wrap-container">
				<div class="footer-top">
					<div class="help">
						<h2>??????????????????</h2>
						<div class="call">
							<h3>0000-0000</h3>
							<dl>
								<dt>365????????????</dt>
								<dd>?????? 7??? - ?????? 7???</dd>
							</dl>
						</div>
						<div class="kakao mt12">
							<a href="#"><h3>???????????? ??????</h3></a>
							<dl>
								<dt>365????????????</dt>
								<dd>?????? 7??? - ?????? 7???</dd>
							</dl>
						</div>
						<div class="qna mt12">
							<a href="#"><h3>1:1 ??????</h3></a>
							<dl>
								<dt>24?????? ?????? ??????</dt>
								<dd>???????????? ??????????????? ??????????????? ???????????????????????????.</dd>
							</dl>
						</div>
					</div>
					<div class="company">
						<ul class="list">
							<li><a href="#">????????????</a></li>
							<li><a href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&amp;showinfo=0&amp;wmode=opaque&amp;enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">??????????????????</a></li>
							<li><a href="#">????????????</a></li>
							<li><a href="#">????????????</a></li>
							<li><a href="#"><strong>????????????????????????</strong></a></li>
							<li><a href="#">????????????</a></li>
						</ul>
						<p>????????? (??????):???????????? ?????? | ?????????????????????:000-00-00000 ??????????????? ??????</p>
						<p>???????????????:??? 0000-????????????-00000 ??? | ???????????????????????????:?????????</p>
						<p>??????:??????????????? ????????? ???????????????34??? 33-4(?????????, ???????????????????????????) | ????????????:?????????</p>
						<p>????????????:?????????????????? | ????????????:business@doogle.com</p>
						<p>????????????:recruit@doogle.com</p>
						<p>??????:000-0000-0000 | ?????????:help@doogle.com</p>
						<p class="copy">?? KURLY CORP. ALL RIGHTS RESERVED</p>
						<ul class="list-sns">
							<li><a href="https://instagram.com/marketkurly" class="link_sns" target="_blank"><img src="/static/front/img/shop/ico_instagram.webp" alt="???????????? ??????????????? ????????????"></a></li>
							<li><a href="https://www.facebook.com/marketkurly" class="link_sns" target="_blank"><img src="/static/front/img/shop/ico_fb.webp" alt="???????????? ???????????? ????????????"></a></li>
							<li><a href="http://blog.naver.com/marketkurly" class="link_sns" target="_blank"><img src="/static/front/img/shop/ico_blog.webp" alt="???????????? ?????????????????? ????????????"></a></li>
							<li><a href="https://m.post.naver.com/marketkurly" class="link_sns" target="_blank"><img src="/static/front/img/shop/ico_naverpost.webp" alt="???????????? ????????? ????????????"></a></li>
							<li><a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" class="link_sns lst" target="_blank"><img src="/static/front/img/shop/ico_youtube.webp" alt="???????????? ????????? ????????????"></a></li>
						</ul>
					</div>
				</div>
				<div class="authentication">
					<a href="#">
						<img src="/static/front/img/shop/logo_isms.webp" />
						<p>[????????????] ?????? ????????? ????????? ?????? ?? ??????</p>
						<p>[????????????] 2019.04.01 ~ 2022.03.31</p>
					</a>
					<a href="#">
						<img src="/static/front/img/shop/logo_eprivacyplus.webp" />
						<p>?????????????????? ?????? ???????????? ??</p>
						<p>??????????????????????????? ?????? (ePRIVACY PLUS)</p>
					</a>
					<a href="#">
						<img src="/static/front/img/shop/logo_payments.webp" />
						<p>???????????? ??????????????? ?????? ?????? ????????? ?????? ??? ?????? ??????????????? ?????????</p>
						<p>?????? ???????????? ????????????(????????????) ???????????? ???????????? ??? ????????????.</p>
					</a>
				</div>
			</div>
		</footer>
		<div id="qnb">
			<div class="pb7">
				<a href="#"><img src="/static/front/img/shop/img_qnb.webp" /></a>
			</div>
			<div class="pb7">
				<ul>
					<li><a href="/">Doogle</a></li>
					<li><a href="/shop/event/lover">????????? ??????</a></li>
					<li><a href="/shop/recipe">?????????</a></li>
					<li><a href="#">???????????????</a></li>
				</ul>
			</div>
			<div id="latest" class="hide">
				<button type="button" id="btn-latest-up">?????? ??? ?????? ?????? ?????????</button>
				<strong>?????? ??? ??????</strong>
				<div class="latest-wrap">
					<ul id="latest-list"></ul>
				</div>
				<button type="button" id="btn-latest-down">?????? ??? ?????? ????????? ?????????</button>
			</div>
		</div>
		<a href="#" id="btn-page-top"><button type="button">??? ????????????</button></a>
	</div>
</body>
</html>