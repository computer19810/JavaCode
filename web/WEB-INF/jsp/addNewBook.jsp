<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HT
  Date: 12/28/2020
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    <div class="form-group">
        <label >BookName</label>
        <input type="text" class="form-control" id="bkname" name="bookName" required>
    </div>
    <div class="form-group">
        <label>BookMount</label>
        <input type="text" class="form-control" id="bkMount" name="bookCounts" required>
    </div>
    <div class="form-group">
        <label>BookDetail</label>
        <input type="text" class="form-control" id="bkDetail" name="detail">
    </div>
    <input type="submit" class="btn btn-default"></input>
</form>

</body>
</html>
