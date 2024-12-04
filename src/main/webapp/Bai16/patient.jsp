<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai16.Patient" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 8:13 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>He thong quan ly benh nhan</title>
</head>
<body>
<h2>Danh sach benh nhan</h2>
    <%
    List<Patient> patientList = new ArrayList<>();
    patientList.add(new Patient("HuyenTrang", 19, "Cam cum", "2024-12-01", "Dang dieu tri"));
    patientList.add(new Patient("ThuyPham", 20, "Viem phoi", "2024-12-02", "Da xuat vien"));
    patientList.add(new Patient("NgocThom", 22, "Dau da day", "2024-12-03", "Dang dieu tri"));
    request.setAttribute("patientList", patientList);
%>
<table border="1">
    <tr>
        <th>Ten</th>
        <th>Tuoi</th>
        <th>Benh ly</th>
        <th>Ngay nhap vien</th>
        <th>Trang thai dieu tri</th>
    </tr>
<c:forEach var="patient" items="${patientList}">
    <tr>
        <td>${patient.name}</td>
        <td>${patient.age}</td>
        <td>${patient.diagnosis}</td>
        <td>${patient.admissionDate}</td>
        <td>${patient.status}</td>
    </tr>
</c:forEach>