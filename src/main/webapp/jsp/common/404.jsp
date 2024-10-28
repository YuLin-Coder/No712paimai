<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>页面找不到了</title>
        <link rel="stylesheet" href="/assets/css/bootstrap4.1.1.css">
        <%@ include file="head.jsp" %>
    </head>
    <body>
        <%@ include file="header.jsp" %>

<div class="error_section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="error_form">
                    <h1>404</h1>
                    <h2>页面不存在</h2>
                    <p>对不起，页面找不到了</p>
                    <form action="/">
                        <input placeholder="搜索..." type="text" name="keywords">
                        <button type="submit"><i class="ion-ios-search-strong"></i></button>
                    </form>
                    <a href="/">返回首页</a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
