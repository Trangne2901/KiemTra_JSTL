<%@ page import="com.example.kiemtra_jstl.Bai18.Appointment" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 8:52 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sach cuoc hen</title>
</head>
<body>
<h2>Danh sach cuoc hen</h2>
<%
    List<Appointment> appointmentList = new ArrayList<>();
    appointmentList.add(new Appointment("Hop voi khach hang", "2024-12-05 10:00", "Phong hop 1", "Thao luan du an moi"));
    appointmentList.add(new Appointment("Kham suc khoe dinh ky", "2024-12-06 14:00", "Benh vien A", "Kham suc khoe tong quat"));
    appointmentList.add(new Appointment("Hop phong ban", "2024-12-07 09:00", "Phong hop 2", "Bao cao tien do"));
    request.setAttribute("appointmentList", appointmentList);
%>
<table border="1">
    <tr>
        <th>Ten</th>
        <th>Ngay gio</th>
        <th>Dia diem</th>
        <th>Mo ta</th>
    </tr>
    <c:forEach var="appointment" items="${appointmentList}">
        <tr>
            <td>${appointment.name}</td>
            <td>${appointment.dateTime}</td>
            <td>${appointment.location}</td>
            <td>${appointment.description}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>