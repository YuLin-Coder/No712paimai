<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>拍卖网站 | ${product.name}</title>
        <link rel="stylesheet" href="/assets/css/bootstrap4.1.1.css">
        <%@ include file="common/head.jsp" %>
        <style>
        h1{
            line-height: 20px;
            font-size: 12px;
        }
    </style>
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
                        <li>商品详情</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs area end-->

<!--product details start-->
<div class="product_details">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6" style="padding-left: 0!important;">
                <div align="center" class="product-details-tab">

                    <div id="img-1" >
                        <a href="#">
                       <img src="${product.imgUrl}" alt="big-1">  
                          <!-- <img src="/assets/img/uploads/2020\5/灌篮高手5.jpg" alt="big-1">  -->
                        </a>
                    </div>

                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product_d_right">
                    <form action="#">

                        <h1>${product.name}</h1>
                        <div class="product_ratting">
                            <ul>
                                <li class="review">发布时间：
                                    <font>
                                        <fmt:formatDate value="${product.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    </font>
                                </li>
                                <li class="review">&nbsp;&nbsp;结束时间：
                                    <font <c:if test="${product.status == 0}">style="color:red" </c:if>>
                                        <fmt:formatDate value="${product.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    </font>
                                </li>
                            </ul>

                        </div>
                        <div class="product_meta">
                            <span>所属分类: <!-- <a href="/category/${product.category.id}"> -->${product.category.name}</span>
                        </div>

                        <div>
                            <p class="old_price" title="起拍价">起拍价：<font style="font-size: 1.2em;">¥${product.startPrice}</font></p>
                            <p class="current_price" title="最高价">最高价：<font style="font-size: 1.5em; color: red;">¥${product.currentPrice}</font></p> &nbsp;

                        </div>
                        <div class="product_desc">
                            ${product.summary}
                        </div>
                        <div class="product_meta">
                            <span>状态:&nbsp;
                            <c:if test="${product.status == 0}"><a href="javascript:void(0)"  class="text-danger">流拍</a></c:if>
                            <c:if test="${product.status == 1}"><a href="javascript:void(0)"  class="text-primary">正在拍卖</a></c:if>
                            <c:if test="${product.status == 2}"> <a href="javascript:void(0)" class="text-success"><strong>成交</strong></a></c:if>
                            </span>
                        </div>
                        <c:choose>
                            <c:when test="${product.status == 1}">
                                <div class="product_variant quantity">
                                    <label>您的竞价</label>
                                    <input min="${product.currentPrice+1}" class="price" value="${biddingPrice}"
                                           type="number" required>
                                    <button class="button bg-success add_bidding" data-id="${product.id}" type="button">
                                        <c:choose>
                                            <c:when test="${isAddBidding == false}">竞拍</c:when>
                                            <c:otherwise>修改竞拍价格</c:otherwise>
                                        </c:choose>
                                    </button>

                                </div>
                                <div class="product_variant quantity">
                                    <button class="button add_cart" data-id="${product.id}" type="button" style="margin-left: 0;">
                                        <c:choose>
                                        <c:when test="${isAddCart == false}">加入购物车</c:when>
                                        <c:otherwise>已加入购物车</c:otherwise>
                                        </c:choose>
                                    </button>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="product_variant quantity">
                                    <button class="button bg-danger" type="button" style="margin-left: 0;">已结束</button>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<!--product details end-->

<!--product info start-->
<div class="product_d_info">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="product_d_inner">
                    <div class="product_info_button">
                        <p style="text-align: center;font-size: 1.5em;">竞价记录</p>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="sheet" role="tabpanel">
                            <div class="product_d_table">
                                <table class="table" >
                                    <thead>
                                    <tr>
                                        <th width="25%">序号</th>
                                        <th width="25%">用户</th>
                                        <th width="25%">竞价</th>
                                        <th width="25%">竞拍时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${product.biddingList}" var="c" varStatus="status">
                                        <tr>
                                            <td>${status.index+1}</td>
                                            <td>${c.user.displayName}</td>
                                            <td>¥${c.price}</td>
                                            <td><fmt:formatDate value="${c.createTime}"
                                                                pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        </tr>
                                    </c:forEach>
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
<!--product info end-->

<%@ include file="common/footer.jsp" %>
