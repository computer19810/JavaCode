<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HT
  Date: 12/26/2020
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>

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

<div class="row">
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/addNewBook">Add New Book</a>
    </div>
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBooks">All Books</a>
    </div>
    <div class="col-md-4 column">
        <form action="${pageContext.request.contextPath}/book/searchBook" method="post" class="form-inline">
           <div class="form-group">
               <label >BookName</label>

               <input type="text" class="form-control" id="bkname" name="bookName" placeholder="请输入书籍名称">
               <input type="submit" class="btn btn-primary"></input>
    </div>
        </form>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column">
        <span style="color: crimson">${error}</span>
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名字</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${list}">
                <tr>
                <td>${book.bookID}</td>
                <td>${book.bookName}</td>
                <td>${book.bookCounts}</td>
                <td>${book.detail}</td>
                    <td><a href="${pageContext.request.contextPath}/book/UpdateBookDone?id=${book.bookID}">Update</a> |
                        <a href="${pageContext.request.contextPath}/book/DeleteBook/${book.bookID}">Delete</a> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
