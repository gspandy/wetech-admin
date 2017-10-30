<%--
  Created by IntelliJ IDEA.
  User: cjbi
  Date: 2017/9/29
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!doctype html>
<html class="no-js fixed-layout">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Wetech Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/static/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/amazeui.datatables.min.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/libs/zTree_v3/css/metroStyle/metroStyle.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/admin.css">
</head>
<body>
<%-- header start --%>
<jsp:include page="header.jsp"/>
<%-- header end --%>
<div class="am-cf admin-main">
    <%-- sidebar start --%>
    <jsp:include page="sidebar.jsp"/>
    <%-- sidebar end --%>
    <%-- content start --%>
    <content id="admin-content">
        <div class="admin-content">
            <div class="admin-content-body">
                <div class="am-cf am-padding am-padding-bottom-0">
                    <div class="am-fl am-cf">
                        <strong class="am-text-primary am-text-lg">仪表盘</strong> /
                        <small>没有内容</small>
                    </div>
                </div>
                ${dom}
            </div>
            <%-- footer start --%>
            <jsp:include page="footer.jsp"/>
            <%-- footer end --%>
        </div>
    </content>
    <%-- content end --%>
</div>
<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
<input id="basePath" type="hidden" value="<%=basePath%>"/>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="<%=request.getContextPath()%>/static/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=request.getContextPath()%>/static/js/amazeui.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/amazeui.datatables.min.js"></script>
<script src="<%=request.getContextPath()%>/static/libs/layer-v3.1.0/layer/layer.js"></script>
<script src="<%=request.getContextPath()%>/static/libs/zTree_v3/js/jquery.ztree.all.js"></script>
<script src="<%=request.getContextPath()%>/static/js/common/common.js"></script>
<script src="<%=request.getContextPath()%>/static/js/admin.js"></script>
</body>
</html>