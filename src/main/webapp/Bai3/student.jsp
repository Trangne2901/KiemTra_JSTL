<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtra_jstl.Bai3.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hệ thống quản lý lớp học</title>
</head>
<body>
<%
    List<Student> studentList= new ArrayList<>();
    studentList.add(new Student("HuyenTrang","D101",8.5,"Dau"));
    studentList.add(new Student("NgocThom","D102",8,"Dau"));
    studentList.add(new Student("TamNguyen","D103",5,"Rot"));
    studentList.add(new Student("ChiAnh","D104",7,"Dau"));
    studentList.add(new Student("DanLe","D105",4.5,"Rot"));
    request.setAttribute("studentList",studentList);
%>
<h2>Danh sách sinh viên</h2>
<table border="1px">
    <tr>
        <th>Ten sinh vien</th>
        <th>Ma sinh viên</th>
        <th>Diem trung binh</th>
        <th>Trang thai</th>
    </tr>
    <c:forEach var="student" items="${studentList}">
        <tr>
            <td>${student.nameStudent}</td>
            <td>${student.idStudent}</td>
            <td>${student.agvStudent}</td>
            <td>${student.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
