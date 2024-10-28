<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <title>拍卖网站 | 后台管理</title>
        <link rel="stylesheet" href="/assets/css/bootstrap3.3.7.css">
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
                                <li>后台管理</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->


        <section class="main_content_area" style="min-height: 500px;">
            <div class="container">
                <div class="account_dashboard">
                    <div class="row">
                        <div class="col-sm-12 col-md-3 col-lg-3">
                            <!-- Nav tabs -->
                            <div class="dashboard_tab_button">
                                <ul role="tablist" class="nav flex-column dashboard-list">
                                    <li><a href="#details" data-toggle="tab" id="tab-details" class="nav-link">基本信息</a>
                                    </li>
                                    <li><a href="#password" data-toggle="tab" id="tab-password"
                                           class="nav-link">修改密码</a></li>
                                    <li><a href="#users" data-toggle="tab" id="tab-users" class="nav-link ">用户管理</a>
                                    </li>
                                    <li><a href="#products" data-toggle="tab" id="tab-products"
                                           class="nav-link ">商品信息管理</a></li>
                                    <li><a href="#biddings" data-toggle="tab" id="tab-biddings" class="nav-link ">商品竞拍记录管理</a>
                                    </li>
                                    <li><a href="#orders" data-toggle="tab" id="tab-orders" class="nav-link ">订单管理</a>
                                    </li>
                                    <li><a href="/logout" class="nav-link">退出</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-9 col-lg-9">
                            <!-- Tab panes -->
                            <div class="tab-content dashboard_content">
                                <div class="tab-pane fade" id="details">
                                    <h3>基本信息 </h3>
                                    <div class="login">
                                        <div class="login_form_container">
                                            <div class="account_login_form">
                                                <form action="#" id="user_account_form">
                                                    <input type="text" name="id" value="${user.id}">
                                                    <label>用户名</label>
                                                    <input type="text" name="username" value="${user.username}">
                                                    <label>显示名</label>
                                                    <input type="text" name="displayName" value="${user.displayName}">
                                                    <label>电子邮箱</label>
                                                    <input type="text" name="email" value="${user.email}">
                                                    <label>手机号</label>
                                                    <input type="text" name="phone" value="${user.phone}">
                                                    <label>地址</label>
                                                    <input type="text" name="address" value="${user.address}">
                                                    <div class="save_button primary_btn default_button">
                                                        <button type="button" id="save_account_submit">保存</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <div class="tab-pane fade" id="password">
                                    <h3>修改管理员密码 </h3>
                                    <div class="login">
                                        <div class="login_form_container">
                                            <div class="account_login_form">
                                                <form action="#" id="user_password_form">
                                                    <label>原密码</label>
                                                    <input type="password" name="oldPassword">
                                                    <label>新密码</label>
                                                    <input type="password" name="newPassword">
                                                    <label>确认密码</label>
                                                    <input type="password" name="confirmPassword">
                                                    <div class="save_button primary_btn default_button">
                                                        <button type="button" id="save_password_submit">保存</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <div class="tab-pane fade" id="users">
                                    <h3>用户管理</h3>
                                    <div class="table-responsive">
                                        <table class="table" id="users-table">
                                            <thead>
                                            <tr>
                                                <th>序号</th>
                                                <th>用户名</th>
                                                <th>显示名</th>
                                                <th>邮箱</th>
                                                <th>手机号</th>
                                                <th>注册时间</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${userList}" var="c" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td>${c.username}</td>
                                                    <td>${c.displayName}</td>
                                                    <td>${c.email}</td>
                                                    <td>${c.phone}</td>
                                                    <td><fmt:formatDate value="${c.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.status == 1}">
                                                                <a href="javascript:void(0)" title="禁止该用户登录"
                                                                   class="update_user_status text-danger"
                                                                   data-id="${c.id}" class="view">禁用</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a href="javascript:void(0)" title="解除禁用"
                                                                   class="update_user_status text-success"
                                                                   data-id="${c.id}" class="view">启用</a>
                                                            </c:otherwise>
                                                        </c:choose>

                                                        <a href="javascript:void(0)" title="删除"
                                                           class="delete_user text-danger"
                                                           data-id="${c.id}" class="view">删除</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>

                                        <br><br><br><br>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="products">
                                    <h3>商品管理</h3>
                                    <div class="table-responsive">
                                        <table class="table" id="products-table">
                                            <thead>
                                            <tr>
                                                <th>序号</th>
                                                <th style="width:50px">用户</th>
                                                <th style="width:150px">商品名称</th>
                                                <th>结束时间</th>
                                                <th>起拍价</th>
                                                <th>最高价</th>
                                                <th>竞拍状态</th>
                                                <th>订单状态</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${productList}" var="c" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td><a href="/account/user/edit/${c.user.id}"
                                                           target="_blank">${c.user.displayName}</a></td>
                                                    <td><a href="/product/${c.id}" target="_blank">${c.name}</a></td>
                                                    <td><fmt:formatDate value="${c.endTime}"
                                                                        pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                    <td>${c.startPrice}</td>
                                                    <td>${c.currentPrice}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.status == 0}">
                                                                <span class="text-danger">流拍</span>
                                                            </c:when>
                                                            <c:when test="${c.status == 1}">
                                                                <span class="text-primary">正在拍卖</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="text-success">成交</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.order == null}">
                                                                <span class="text-danger order_status">暂无订单</span>
                                                            </c:when>
                                                            <c:when test="${c.order != null && c.order.status == 0}">
                                                                <span class="text-primary order_status">待联系</span>
                                                            </c:when>
                                                            <c:when test="${c.order != null && c.order.status == 1}">
                                                                <span class="text-primary order_status">沟通中</span>
                                                            </c:when>
                                                            <c:when test="${c.order != null && c.order.status == 2}">
                                                                <span class="text-primary order_status">已完成</span>
                                                            </c:when>
                                                            <c:when test="${c.order != null && c.order.status == 3}">
                                                                <span class="text-success order_status">已完结</span>
                                                            </c:when>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                        <c:if test="${c.order != null && c.order.status == 1}">
                                                            <a href="javascript:void(0)"
                                                               class="text-info send_order order_status"
                                                               data-id="${c.order.id}">联系买家</a>
                                                        </c:if>
                                                        <a href="/product/${c.id}" class="view" target="_blank">查看</a>
                                                        <a href="/account/product/edit/${c.id}" class="view text-info"
                                                           target="_blank">编辑</a>
                                                        <a href="javascript:void(0)" title="删除"
                                                           class="delete_product text-danger"
                                                           data-id="${c.id}" class="view">删除</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>

                                        <br><br><br><br>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="biddings">
                                    <h3>竞拍记录管理</h3>
                                    <div class="table-responsive">
                                        <table class="table" id="biddings-table">
                                            <thead>
                                            <tr>
                                                <th>序号</th>
                                                <th>用户</th>
                                                <th>商品名称</th>
                                                <th>当前竞价</th>
                                                <th>我的竞价</th>
                                                <th>状态</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${biddingList}" var="c" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td>
                                                        <a href="/account/user/edit/${c.user.id}">${c.user.displayName}</a>
                                                    </td>
                                                    <td><a href="/product/${c.product.id}">${c.product.name}</a></td>
                                                    <td>${c.product.currentPrice}</td>
                                                    <td>${c.price}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.product.status == 1}">
                                                                <span class="text-primary">竞拍中</span>
                                                            </c:when>
                                                            <c:when test="${c.product.status == 2 && c.status == 1}">
                                                                <span class="text-success">竞拍成功</span>
                                                            </c:when>
                                                            <c:when test="${c.product.status == 2 && c.status == 0}">
                                                                <span class="text-danger">竞拍失败</span>
                                                            </c:when>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                        <a href="/product/${c.product.id}" class="view" target="_blank">查看</a>
                                                            <%--                                                <a href="javascript:void(0)" title="删除" class="delete_bidding text-danger" data-id="${c.id}" class="view">删除</a>--%>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <br><br><br><br>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="orders">
                                    <h3>订单管理</h3>
                                    <div class="table-responsive">
                                        <table class="table" id="orders-table">
                                            <thead>
                                            <tr>
                                                <th>序号</th>
                                                <th>用户</th>
                                                <th>商品名称</th>
                                                <th>价格</th>
                                                <th>创建时间</th>
                                                <th>订单状态</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${orderList}" var="c" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td><a href="/account/user/edit/${c.user.id}"
                                                           target="_blank">${c.user.displayName}</a></td>
                                                    <td><a href="/product/${c.productId}"
                                                           target="_blank">${c.product.name}</a></td>
                                                    <td>${c.price}</td>
                                                    <td><fmt:formatDate value="${c.createTime}"
                                                                        pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.status == 0}">
                                                                <span class="text-danger order_status">待支付</span>
                                                            </c:when>
                                                            <c:when test="${c.status == 1}">
                                                                <span class="text-primary order_status">待发货</span>
                                                            </c:when>
                                                            <c:when test="${c.status == 2}">
                                                                <span class="text-primary order_status">已发货</span>
                                                            </c:when>
                                                            <c:when test="${c.status == 3}">
                                                                <span class="text-primary order_status">已完结</span>
                                                            </c:when>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.status == 0}">
                                                                <a href="javascript:void(0)" class="view pay_order"
                                                                   data-id="${c.id}">支付</a>
                                                            </c:when>
                                                            <c:when test="${c.status == 2}">
                                                                <a href="javascript:void(0)" class="view confirm_order"
                                                                   data-id="${c.id}">确认收货</a>
                                                            </c:when>
                                                        </c:choose>
                                                        <a href="/product/${c.product.id}" class="view" target="_blank">查看</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>

                                        <br><br><br><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <%@ include file="common/footer.jsp" %>
