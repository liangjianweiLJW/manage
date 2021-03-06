<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/6
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信贷审批管理系统-流程单展示</title>
    <script type="text/css">
        *{margin:0;padding:0;}
        #flow {color: red;border: solid;text-align: center;}
    </script>
    <script type="text/javascript" src="/js/page.js">
    </script>
</head>
<body onLoad="goPage(1,10);" bgcolor="#3af7ff">
<div style="width: auto;margin-bottom: 10px;"><img src="/image/yewu.jpg" width="100%"></div>
<hr/>
<table border="0" cellspacing="0" cellpadding="0" width="80%" align="center" rules="rows">
    <tr><td align="center" colspan="10"><h1>欢迎${name}进入审批管理系统</h1></td></tr>
    <tr>
        <td colspan="10">
            <table>
                <tr>
                    <td>>><a href="/changePwd">修改密码</a></td>
                    <td>>><a href="/apply/manage">申请单管理</a></td>
                    <c:if test="${sessionScope.User.role!='办单员'}">
                        <td >>><a href="/flow/manage">流程管理</a></td>
                    </c:if>
                    <c:if test="${sessionScope.User.role!='办单员'}">
                        <td>
                            >><a href="/report/manage">报表管理</a>
                        </td>
                    </c:if>
                    <td>
                        <span style="color:red;font-size:10px">${report_error}</span>
                    </td>
                    <td>
                        >><a href="/logout">退出</a></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <span>${upload_success}</span>
            <span style="color:red">${upload_error}</span>
            <span style="color:red">${show_error}</span>
            &nbsp;>><a href="/flow/show">流程单展示</a>
            <form action="/flow/query" method="post">
                <table >
                    <tr>
                        <td>
                            <span>审批结果：</span><select id="flowResult" name="flowResult">
                                <option value="">全部</option>
                                <option value="通过">通过</option>
                                <option value="未通过">未通过</option>
                            </select>
                        </td>
                        <td>
                            <span>申请单号：</span><input type="text" name="applyId" size="10"/>
                        </td>
                        <td><span>排序：</span><input type="radio" value="1" name="isSort"/>是
                            <input type="radio" value="0" name="isSort" checked="checked"/>否</td>
                        <td>
                            &nbsp;&nbsp;<input type="submit" value="查询"/>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
        <td align="center">
            <a href="/flow/delete" style="text-decoration: dashed">清空</a>
        </td>
        <td colspan="2">
            <span style="color: red">${delete_status}</span>
        </td>
    </tr>
    <tr>
        <td align = "center" width="180px">流程id</td>
        <td align = "center" width="180px">申请单号</td>
        <td align = "center" width="180px">流程名称</td>
        <td align = "center" width="180px">流程权重</td>
        <td align = "center" width="180px">流程结果</td>
        <td align = "center" width="180px">流程价格</td>
    </tr>
    <tr>
        <td colspan="6"  align="top">
            <table  border="0" rules="rows"  cellspacing="0" id="idPage" width="100%" >
                <c:forEach items="${list}" var="flow" varStatus="vs">
                <tr >
                    <s:property value="#vs.index+1"/>
                    <td align = "center" width="173px">${flow.id}</td>
                    <td align = "center"  width="173px">${flow.applyid}</td>
                    <td align = "center"  width="173px">${flow.flowname}</td>
                    <td align = "center" width="173px">${flow.flowscale}</td>
                    <td align = "center" width="173px">${flow.flowresult}</td>
                    <td align = "center" width="173px">${flow.flowprice}</td>
                </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="6">
            <table width="60%" align="right">
                <tr><td><div id="barcon" name="barcon"></div></td></tr>
            </table>
        </td>
    </tr>
</table>
<div style="padding-left: 10%;padding-top: 50px">
    >><a href="/root">主页</a>&nbsp;>>
    <a href="javascript:history.go(-1)">返回上一页</a>
</div>
</body>
</html>
