<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>拍卖网站 | 首页</title>
        <link rel="stylesheet" href="/assets/css/bootstrap4.1.1.css">
        <%@ include file="common/head.jsp" %>
    </head>
    <body>
        <%@ include file="common/header.jsp" %>
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="/">首页</a></li>
                                <c:if test="${category != null}">
                                    <li><a href="?cateId=${category.id}">${category.name}</a></li>
                                </c:if>
                                <li>商品列表</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->

        <!--shop area start-->
        <div class="shop_area shop_reverse">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <!--shop wrapper start-->
                        <!--shop toolbar start-->
                        <div class="shop_toolbar_wrapper">
                            <div class="shop_toolbar_btn">

                                <button data-role="grid_3" type="button" class="btn-grid-3" data-toggle="tooltip"
                                        title="3"></button>

                                <button data-role="grid_4" type="button" class="active btn-grid-4" data-toggle="tooltip"
                                        title="4"></button>

                                <button data-role="grid_list" type="button" class="btn-list active"
                                        data-toggle="tooltip"
                                        title="List"></button>
                            </div>
                            <div class="page_amount">
                                <p>总共 ${pageInfo.total} 条 &nbsp;&nbsp; 第 ${pageInfo.pageNum}/${pageInfo.pages} 页</p>
                            </div>
                        </div>
                        <!--shop toolbar end-->

                        <div class="row shop_wrapper grid_4">
                            <c:choose>
                                <c:when test="${pageInfo.total != 0}">
                                    <c:forEach items="${pageInfo.list}" var="c">
                                        <div class="col-lg-3 col-md-4 col-sm-6 col-12  ">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a class="primary_img" href="/product/${c.id}">
                                                        <img src="${c.imgUrl}" alt="" style="height:230px">
                                                    </a>
                                                        <%--                                    <a class="secondary_img" href="product-details.html">--%>
                                                        <%--                                        <img src="assets/img/product/product14.jpg" alt="">--%>
                                                        <%--                                    </a>--%>
                                                    <div class="add_to_cart">
                                                        <a href="javascript:void(0)" class="add_cart" data-id="${c.id}"
                                                           title="加入购物车">加入购物车</a>
                                                    </div>
                                                </div>
                                                <div class="product_content grid_content">
                                                    <p class="manufacture_product">发布者：<!-- <a
                                                            href="/user/${c.user.id}"> -->${c.user.displayName}<!--  </a> --></p>
                                                    <h4><a href="/product/${c.id}">${c.name}</a></h4>
                                                    <div class="price_box">
                                                            <%--                                                <span class="old_price">${c.startPrice}</span>--%>
                                                        当前价：<span class="current_price">¥${c.currentPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product_content list_content">
                                                    <div class="left_caption">
                                                        <p class="manufacture_product"><a
                                                                href="/user/${c.user.id}">${c.user.displayName}</a></p>
                                                        <h4><a href="/product/${c.id}">${c.name}</a></h4>
                                                        <div class="product_desc">
                                                            <p>${c.summary}</p>
                                                        </div>
                                                    </div>
                                                    <div class="right_caption">
                                                        <div class="price_box">
                                                                <%--                                                    <span class="old_price">${c.startPrice}</span>--%>
                                                            <span class="current_price">${c.currentPrice}</span>
                                                        </div>
                                                        <div class="cart_links_btn">
                                                            <a href="javascript:void(0)" class="add_cart"
                                                               data-id="${c.id}"
                                                               title="加入购物车">加入购物车</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <div class="col-12">
                                        暂无正在拍卖的商品
                                    </div>
                                </c:otherwise>
                            </c:choose>


                        </div>
                        <c:if test="${pageInfo.pages > 1}">
                            <div class="shop_toolbar t_bottom">
                                <nav class="pagination" role="navigation">
                                    <ul>
                                        <c:choose>
                                            <c:when test="${pageInfo.pages <= 3 }">
                                                <c:set var="begin" value="1"/>
                                                <c:set var="end" value="${pageInfo.pages }"/>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="begin" value="${pageInfo.pageNum-1 }"/>
                                                <c:set var="end" value="${pageInfo.pageNum + 2}"/>
                                                <c:if test="${begin < 2 }">
                                                    <c:set var="begin" value="1"/>
                                                    <c:set var="end" value="3"/>
                                                </c:if>
                                                <c:if test="${end > pageInfo.pages }">
                                                    <c:set var="begin" value="${pageInfo.pages-2}"/>
                                                    <c:set var="end" value="${pageInfo.pages }"/>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                            <%--上一页 --%>
                                        <c:choose>
                                            <c:when test="${pageInfo.pageNum eq 1 }">
                                                <%--当前页为第一页，隐藏上一页按钮--%>
                                            </c:when>
                                            <c:otherwise>
                                                <li>
                                                    <a class="page-numbers" href="?pageIndex=${pageInfo.pageNum-1}">
                                                        <span class="fa fa-angle-left"></span>
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>
                                            <%--显示第一页的页码--%>
                                        <c:if test="${begin >= 2 }">
                                            <li>
                                                <a class="page-numbers" href="?pageIndex=1">1</a>
                                            </li>
                                        </c:if>
                                            <%--显示点点点--%>
                                        <c:if test="${begin  > 2 }">
                                            <li>
                                                <a class="page-numbers" href="javascript:void(0)">...</a>
                                            </li>
                                        </c:if>
                                            <%--打印 页码--%>
                                        <c:forEach begin="${begin }" end="${end }" var="i">
                                            <c:choose>
                                                <c:when test="${i eq pageInfo.pageNum }">
                                                    <li class="current"><a class="page-numbers">${i}</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li><a class="page-numbers" href="?pageIndex=${i}">${i}</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                            <%-- 显示点点点 --%>
                                        <c:if test="${end < pageInfo.pages-1}">
                                            <li><a href="javascript:void(0)">...</a></li>
                                        </c:if>
                                            <%-- 显示最后一页的数字 --%>
                                        <c:if test="${end < pageInfo.pages }">
                                            <li><a href="?pageIndex=${pageInfo.pages}">${pageInfo.pages}</a></li>
                                        </c:if>
                                            <%--下一页 --%>
                                        <c:choose>
                                            <c:when test="${pageInfo.pageNum eq pageInfo.pages }">
                                                <%--到了尾页隐藏，下一页按钮--%>
                                            </c:when>
                                            <c:otherwise>
                                                <li>
                                                    <a class="page-numbers" href="?pageIndex=${pageInfo.pageNum+1}">
                                                        <span class="fa fa-angle-right"></span>
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>
                                    </ul>
                                </nav>
                                    <%--分页 end--%>
                            </div>
                        </c:if>
                        <!--shop toolbar end-->
                        <!--shop wrapper end-->
                    </div>
                </div>
            </div>
        </div>
        <!--shop area end-->

        <%@ include file="common/footer.jsp" %>
