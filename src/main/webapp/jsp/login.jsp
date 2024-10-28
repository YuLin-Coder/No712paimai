<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %> -->
<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> -->
<!DOCTYPE html>
<script
  src="http://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"
></script>
<html class="no-js" lang="en">
  <head>
    <title>拍卖网站 | 登录注册</title>
    <link rel="stylesheet" href="/assets/css/bootstrap4.1.1.css" />
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
                <li>登录</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--breadcrumbs area end-->

    <!-- customer login start -->
    <div class="customer_login">
      <div class="container">
        <div class="row">
          <!--login area start-->
          <div class="col-lg-6 col-md-6">
            <div class="account_form">
              <h2>登录</h2>
              <form action="#" id="login_form">
                <p>
                  <label>用户名<span>*</span></label>
                  <input
                    type="text"
                    name="username"
                    placeholder="请输入学号或手机号"
                  />
                </p>
                <p>
                  <label>密码 <span>*</span></label>
                  <input type="password" name="password"/>
                </p>
                <div class="login_submit">
                  <button type="button" id="login_submit">登录</button>
                </div>
              </form>
            </div>
          </div>
          <!--login area start-->

          <!--register area start-->
          <div class="col-lg-6 col-md-6">
            <div class="account_form register">
              <h2>注册</h2>
              <form action="#" id="register_form">
                <p>
                  <label>用户名 <span>*</span></label>
                  <input
                    type="text"
                    name="username"
                    placeholder="请输入学号"
                    id="studentNo"
                  />
                </p>
                <p>
                  <label>密码 <span>*</span></label>
                  <input type="password" name="password" id="password" />
                </p>
                <div class="login_submit">
                  <button type="button" id="register_submit">注册</button>
                </div>
              </form>
            </div>
          </div>
          <!--register area end-->
        </div>
        <br /><br /><br />
      </div>
    </div>
    <!-- customer login end -->
    <script>
      // js
      $("#register_submit").click(function () {
        console.log($("#register_form").serialize());
      });
    </script>
    <!-- <%@ include file="common/footer.jsp" %> -->
  </body>
</html>
