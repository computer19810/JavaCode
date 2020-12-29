<%--
  Created by IntelliJ IDEA.
  User: HT
  Date: 12/26/2020
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style type="text/css">
      h3{
        width: 180px;
        height:38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: bisque;
        border-radius: 4px;
      }
      a{
        text-decoration: blueviolet;
        color: #ffc4c4;
        font-size: 18px;
      }

    </style>
  </head>
  <body>
  <h3><a href="${pageContext.request.contextPath}/book/allBooks">点击进入列表页</a></h3>
  </body>
</html>
