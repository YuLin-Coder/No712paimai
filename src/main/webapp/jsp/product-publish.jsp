<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>拍卖网站 | 商品发布</title>
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
                                <li>商品发布</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->

        <div class="contact_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="contact_message form">
                            <h3>发布商品</h3>
                            <form id="product_form" method="POST" action="/account/product"
                                  enctype="multipart/form-data">
                                <input type="hidden" id="id">
                                <p>
                                    <label>商品名称</label>
                                    <input name="name" placeholder="" type="text">
                                </p>
                                <div class="contact_textarea">
                                    <label>商品描述</label>
                                    <textarea placeholder="" name="summary" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6" style="padding-left: 0px;">
                                        <label>所属分类</label>
                                        <select name="cateId" class="form-control">
                                            <c:forEach var="c" items="${categoryList}">
                                                <option value="${c.id}">${c.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6" style="padding-left: 0px;">
                                        <label>起拍价</label>
                                        <input name="startPrice" placeholder="" type="number" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6" style="padding-left: 0px;">
                                        <label>截止时间</label>
                                        <input name="endTime" placeholder="" id="productEndTime">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4 control-label" style="padding-left: 0px;">选择文件</div>
                                    <div class="col-sm-6" style="padding-left: 0px;border-radius: 0;">
                                        <div class="input-group">
                                            <input id='imgUrl' name="imgUrl" class="form-control"
                                                   onclick="$('#file').click();">
                                            <label class="input-group-btn">
                                                <input type="button" id="i-check" value="浏览文件"
                                                       style="border-radius: 0; border-left: 0;" class="btn btn-info"
                                                       onclick="$('#file').click();">
                                            </label>
                                        </div>
                                    </div>

                                    <input type="file" id="file" accept=".png, .jpg, .jpeg" style="display: none">
                                </div>
                                <button type="button" id="product_submit">发布</button>
                                <p class="form-messege"></p>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="common/footer.jsp" %>
