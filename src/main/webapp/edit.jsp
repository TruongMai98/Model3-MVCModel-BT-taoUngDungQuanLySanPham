<%--
  Created by IntelliJ IDEA.
  User: TRUONGMAI
  Date: 11/30/2022
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit customers</h1>
<p>
    <a href="/products">Back to customer list</a>
</p>
<p>
    <c:if test='${requestScope["message"]!= null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <tr>
            <td>Id</td>
            <td>
                <input type="text" name="id" id="id" value="${requestScope["product"].getProductId()}" disabled>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" name="name" id="name" value="${requestScope["product"].getProductName()}">
            </td>
        </tr>
        <tr>
            <td>Price</td>
            <td>
                <input type="number" name="price" id="price" value="${requestScope["product"].getProductPrice()}">
            </td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td>
                <input type="text" name="manufacturer" id="manufacturer" value="${requestScope["product"].getManufacturer()}">
            </td>
        </tr>
        <tr>
            <td>
                <a href="/products">
                    <input type="button" value="No">
                </a>
            </td>
            <td>
                <input type="submit" value="Save">
            </td>
        </tr>
    </fieldset>
</form>

</body>
</html>
