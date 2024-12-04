<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai20.Scholarship" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 9:06 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan ly hoc bong</title>
</head>
<body>
<h2>Danh sach hoc bong</h2>
<%
    List<Scholarship> scholarshipList = new ArrayList<>();
    scholarshipList.add(new Scholarship("Hoc bong A", "Diem GPA tren 3.5", 1000, "2024-12-31"));
    scholarshipList.add(new Scholarship("Hoc bong B", "Hoat dong ngoai khoa tich cuc", 1500, "2024-12-28"));
    scholarshipList.add(new Scholarship("Hoc bong C", "Nghien cuu khoa hoc xuat sac", 2000, "2024-12-14"));
    request.setAttribute("scholarshipList", scholarshipList);
%>
<table border="1">
    <tr>
        <th>Ten hoc bong</th>
        <th>Tieu chi</th>
        <th>Gia tri</th>
        <th>Han nop don</th>
    </tr>
    <c:forEach var="scholarship" items="${scholarshipList}">
        <tr>
            <td>${scholarship.name}</td>
            <td>${scholarship.criteria}</td>
            <td>${scholarship.value}</td>
            <td>${scholarship.deadline}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>