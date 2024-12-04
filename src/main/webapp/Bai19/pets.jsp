<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai19.Pets" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 8:57 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan ly thu cung</title>
</head>
<body>
<h2>Danh sach thu cung</h2>
<%
    List<Pets> petList = new ArrayList<>();
    petList.add(new Pets("Milo", "Golden Retriever", 3, "HuyenTrang"));
    petList.add(new Pets("Bella", "Poodle", 2, "Tuan Anh"));
    petList.add(new Pets("Max", "Bulldog", 4, "Minh"));
    request.setAttribute("petList", petList);
%>
<table border="1">
    <tr>
        <th>Ten</th>
        <th>Giong loai</th>
        <th>Tuoi</th>
        <th>Chu so huu</th>
    </tr>
    <c:forEach var="pets" items="${petList}">
        <tr>
            <td>${pets.name}</td>
            <td>${pets.species}</td>
            <td>${pets.age}</td>
            <td>${pets.owner}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>