<%--
  Created by IntelliJ IDEA.
  User: Vivian
  Date: 2019/4/3
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>后台用户管理中心</title>
    <link rel="stylesheet" href="lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="lib/2.2.4/jquery-2.2.4.min.js"></script>
    <script src="lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>后台管理系统<small>用户数据管理中心</small></h1>
        </div>
    </div>

    <div class="row">
        <div class="jumbotron">
            <h1>MyBatis基础入门课程</h1>
            <p>通过一个项目来完成基础部分的学习</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">查看更多，请上Oracle</a></p>
        </div>
    </div>

    <div class="row">
        <table class="table table-hover table-striped">
            <tr>
                <th>用户编号</th>
                <th>登录账号</th>
                <th>用户昵称</th>
                <th>邮箱</th>
                <th>联系方式</th>
                <th>账号创建时间</th>
                <th>最后修改时间</th>
                <th>最后登录时间</th>
                <th>用户状态</th>
                <th>备注</th>
            </tr>
           <c:choose>
                <c:when test="${user.id}">
                    <tr>
                        <td>暂无信息</td>
                    </tr>
                </c:when>
                <c:otherwise>
            <c:forEach var="user" items="${usersList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.nickname}</td>
                <td>${user.email}</td>
                <td>${user.phone}</td>
                <td>${user.createTime}</td>
                <td>${user.updateTime}</td>
                <td>${user.lastLogin}</td>
                <!--<td>${user.userStatus}</td>-->
                <c:if test="${user.userStatus == 0}">
                    <td>正常</td>
                </c:if>

                <c:if test="${user.userStatus == 1}">
                    <td>锁定</td>
                </c:if>

                <c:if test="${user.userStatus == 2}">
                    <td>删除</td>
                </c:if>

                <td>
                    <a href="${pageContext.request.contextPath}/detail?id=${user.id}">查看</a>
                    <a href="">修改</a>
                    <a href="">删除</a>
                </td>
                </c:forEach>
                </c:otherwise>
           </c:choose>

            </tr>
        </table>
    </div>
</div>
</body>
</html>
