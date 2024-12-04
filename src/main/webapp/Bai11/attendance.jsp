<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai11.Attendance" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 4:12 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hệ thống chấm công nhân viên</title>
</head>
<body>
<h2>Bang cham cong</h2>
<%
    List<Attendance> attendanceList = new ArrayList<>();
    attendanceList.add(new Attendance("Nguyen Van A", "2024-04-01", 8, "Da hoan tat"));
    attendanceList.add(new Attendance("Le Thi B", "2024-04-01", 7, "Thieu"));
    attendanceList.add(new Attendance("Tran Van C", "2024-04-01", 8, "da hoan tat"));
    request.setAttribute("attendanceList", attendanceList);
%>
<table border="1">
    <tr>
        <th>Ten nhan vien</th>
        <th>Ngay lam viec</th>
        <th>So gio lam</th>
        <th>Trang thai</th>
    </tr>
    <c:forEach var="attendance" items="${attendanceList}">
    <tr>
        <td>${attendance.employeeName}</td>
        <td>${attendance.workDate}</td>
        <td>${attendance.workHours}</td>
        <td>${attendance.status}</td>
    </tr>
    </c:forEach>
</body>
</html>
