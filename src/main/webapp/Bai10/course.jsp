<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai10.Course" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 4:00 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Danh sách khóa học trực tuyến</title>
</head>
<body>
<h2>Hien thi danh sach khoa hoc</h2>
<%
    List<Course> listCourse = new ArrayList<>();
    listCourse.add(new Course("LTPT", "Can Tuan Anh", 30, 199.99));
    listCourse.add(new Course("JSP?JSTL", "Can Tuan Anh", 25, 149.99));
    listCourse.add(new Course("Java", "Can Tuan Anh", 40, 299.99));
    request.setAttribute("course",listCourse);
%>
<table border="1">
    <tr>
        <th>Ten khoa hoc</th>
        <th>Giang vien</th>
        <th>So gio hoc</th>
        <th>Gia tien</th>
    </tr>
    <c:forEach var="course" items="${course}">
        <tr>
            <td>${course.nameCourse}</td>
            <td>${course.instructor}</td>
            <td>${course.hours}</td>
            <td>${course.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
