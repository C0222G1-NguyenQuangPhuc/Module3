<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>
    <style>
        img {
            width: 300px;
            height: 250px;
        }
        table {
            width: 800px;
            height: auto;
            text-align: center;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <table border="1" width="500px">
        <tr>
            <th>NO.</th>
            <th>Name</th>
            <th>Date Of Birth</th>
            <th>Address</th>
            <th>Avatar</th>
        </tr>
        <c:forEach items="${listCustomer}" var="customer" varStatus="haitt">
            <tr>
                <td>${haitt.count}</td>
                <td>${customer.name}</td>
                <td>${customer.dateOfBirth}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.image}" alt=""></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
