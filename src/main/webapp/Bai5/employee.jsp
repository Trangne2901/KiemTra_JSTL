<%@ page import="com.example.kiemtra_jstl.Bai5.Employee" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
</head>
<body>
<h2>Hien thi danh sach nhan vien</h2>
<%
    List<Employee> listEmployees = new ArrayList<>();
    listEmployees.add(new Employee("HuyenTrang","IT","Leader",50000,"Dang lam"));
    listEmployees.add(new Employee("ThomPham","IT","Leader",50000,"Nghi viec"));
    listEmployees.add(new Employee("DanLe","IT","Internship",10000,"Dang lam"));
    listEmployees.add(new Employee("ChiAnh","IT","Internship",10000,"Dang lam"));
    listEmployees.add(new Employee("TamNguyen","IT","Internship",10000,"Dang lam"));
    request.setAttribute("listEmployee",listEmployees);
%>
<table border="1">
    <tr>
        <td>Ten nhan vien</td>
        <td>Phong ban</td>
        <td>Chuc vu</td>
        <td>Luong</td>
        <td>Trang thai</td>
    </tr>
    <c:forEach var="employee" items="${listEmployee}">
        <tr>
            <td>${employee.nameEmp} </td>
            <td>${employee.department} </td>
            <td>${employee.position} </td>
            <td>${employee.salary} </td>
            <td>${employee.status} </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
