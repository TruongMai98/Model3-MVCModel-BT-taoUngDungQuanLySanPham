<%--
  Created by IntelliJ IDEA.
  User: TRUONGMAI
  Date: 11/30/2022
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product list</title>
</head>
<body>
<h1>Product list</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form action="" method="get">
    <table>
        <tr>
            <td>
                <input type="text" name="search" placeholder="Search">
            </td>
            <td>
                <input type="submit" value="Search">
            </td>
        </tr>
    </table>
</form>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Manufacturer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${requestScope['products']}" var="pr">
    <tr>
        <td>${pr.getProductId()}</td>
        <td><a href="/products?action=view&id=${pr.getProductId()}">${pr.getProductName()}</a></td>
        <td>${pr.getProductPrice()}</td>
        <td>${pr.getProductDescription()}</td>
        <td>${pr.getManufacturer()}</td>
        <td><a href="/products?action=edit&id=${pr.getProductId()}">Edit</a></td>
        <td><a href="/products?action=delete&id=${pr.getProductId()}">Delete</a></td>
    </tr>
    </c:forEach>
</table>
<c:forEach var="pageId" begin="1" end="${requestScope['totalPage']}">
    <a href="/products?page=${pageId}">${pageId}</a>
</c:forEach>
</body>
</html>
