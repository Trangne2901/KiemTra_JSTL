<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai9.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 3:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Danh sách tour du lịch</title>
</head>
<body>
<h2>hien thi danh sach tour</h2>
<%
    List<Tour> listTour = new ArrayList<>();
   listTour.add(new Tour("Tour A", "Ha Noi", "2024-04-01", 500.00, "Con cho"));
   listTour.add(new Tour("Tour b", "Ho Chi Minh", "2024-05-15", 750.00, "Het cho"));
   listTour.add(new Tour("Tour C", "da Nang", "2024-06-10", 300.00, "Con cho"));
    request.setAttribute("listTour",listTour);
%>
<table border="1">
    <tr>
        <td>Ten tour</td>
        <td>Dia diem</td>
        <td>Ngay khoi hanh</td>
        <td>Gia</td>
        <td>Trang thai</td>
    </tr>
    <c:forEach var="tour" items="${listTour}">
        <tr>
            <td>${tour.tourName}</td>
            <td>${tour.location}</td>
            <td>${tour.departureDate}</td>
            <td>${tour.price}</td>
            <td>${tour.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
