<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.kiemtra_jstl.Bai14.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan ly xe hoi</title>
</head>
<body>
<h2>Danh sach xe hoi</h2>
<%
    List<Car> listCar = new ArrayList<>();
    listCar.add(new Car("Toyota Camry", "Toyota", 30000, "Con hang"));
    listCar.add(new Car("Honda Accord", "Honda", 28000, "Het hang"));
    listCar.add(new Car("Ford Mustang", "Ford", 55000, "Con hang"));
    request.setAttribute("listCar", listCar);
%>
<table border="1">
    <tr>
        <th>Ten xe</th>
        <th>Hang san xuat</th>
        <th>Gia ban</th>
        <th>Trang thai</th>
    </tr>
    <c:forEach var="car" items="${listCar}">
        <tr>
            <td>${car.name}</td>
            <td>${car.manufacturer}</td>
            <td>${car.price}</td>
            <td>${car.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>