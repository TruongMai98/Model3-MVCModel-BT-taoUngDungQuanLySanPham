<%--
  Created by IntelliJ IDEA.
  User: TRUONGMAI
  Date: 11/30/2022
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>View product</title>
</head>
<body>
<h1>View product</h1>
<p>
  <a href="/products">Back to product list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Id: </td>
        <td>${requestScope["product"].getProductId()}</td>
      </tr>
      <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getProductName()}</td>
      </tr>
      <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getProductPrice()}</td>
      </tr>
      <tr>
        <td>Manufacturer: </td>
        <td>${requestScope["product"].getManufacturer()}</td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
