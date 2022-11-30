<%--
  Created by IntelliJ IDEA.
  User: TRUONGMAI
  Date: 11/30/2022
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create product list</title>
</head>
<body>
<h1>Create product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<p>
    <c:if test='${requestScope["message"]!= null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
<%--            <tr>--%>
<%--                <td>Id</td>--%>
<%--                <td>--%>
<%--                    <input type="text" name="id" id="id" disabled>--%>
<%--                </td>--%>
<%--            </tr>--%>
            <tr>
                <td>Name</td>
                <td>
                    <input type="text" name="name" id="name">
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input type="number" name="price" id="price">
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <input type="text" name="description" id="description">
                </td>
            </tr>
            <tr>
                <td>Manufacturer</td>
                <td>
                    <input type="text" name="manufacturer" id="manufacturer">
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
        </table>
    </fieldset>
</form>

</body>
</html>
