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
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>信贷审批管理系统-登录</title>
</head>
<body bgcolor="#3af7ff">
<div style="width: auto;margin-bottom: 10px;"><img src="/image/index.jpg" width="100%"></div>
<hr/>
<table align="center" border="0" width="100%" cellpadding="0" cellspacing="0">
    <%--<tr><td></td></tr>--%>
    <tr><td align="center"><h1>欢迎进入审批管理系统</h1></td></tr>
    <tr>
        <td align="center">

            <form action="/login" method="post" >
                <table border="0" cellspacing="0">
                    <tr>
                        <td><span style="color:red;font-size: 10px">${error}</span></td>
                    </tr>
                    <tr>
                        <td>用户名：<input type="text" name="name" path="name"/></td>
                    </tr>
                    <tr>
                        <td>密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" path="password"/></td>
                    </tr>
                    <tr>
                        <td>
                            <a href="/forgetPwd" style="padding-left: 30%;text-decoration: aquamarine"><span style="font-size: 10px;color: red">(忘记密码)</span></a>
                        </td>
                    </tr>
                    <tr>
                        <td>角&nbsp;&nbsp;&nbsp;色：<input type="radio" name="role" value="经理">经理
                            <input type="radio" name="role" value="主管" checked>主管
                            <input type="radio" name="role" value="办单员">办单员</td>
                    </tr>
                    <tr><td align="center">
                        <input type="submit" name="登录" value="登录"/>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" name="重置"/></td>
                    </tr>


                </table>
            </form>
        </td>
    </tr>
    <tr><td align="center">未注册：&nbsp;&nbsp;<a href="/index" style="text-decoration:black">注册</a></td></tr>
    <tr></tr>
    <tr></tr>
</table>

</body>
</html>
