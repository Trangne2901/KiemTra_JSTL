<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai17.Document" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 8:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Quan ly tai lieu hoc tap</title>
</head>
<body>
<h2>Danh sach tai lieu</h2>
<%
    List<Document> documentList = new ArrayList<>();
    documentList.add(new Document("Giao trinh Java", "Lap trinh Java", "Can Tuan Anh", "PDF"));
    documentList.add(new Document("Giao trinh C++", "Lap trinh C++", "Can Tuan Anh", "Word"));
    documentList.add(new Document("Giao trinh Python", "Lap trinh Python", "Can Tuan Anh", "PDF"));
    request.setAttribute("documentList", documentList);
%>
<table border="1">
    <tr>
        <th>Ten tai lieu</th>
        <th>Mon hoc</th>
        <th>Giang vien</th>
        <th>Dinh dang</th>
    </tr>
    <c:forEach var="document" items="${documentList}">
        <tr>
            <td>${document.name}</td>
            <td>${document.subject}</td>
            <td>${document.lecturer}</td>
            <td>${document.format}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>