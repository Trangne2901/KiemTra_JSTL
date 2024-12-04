<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.kiemtra_jstl.Bai15.EmployeeLeaveApplication" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan ly don xin nghi phep</title>
</head>
<body>
<h2>Danh sach don xin nghi phep</h2>
<%
    List<EmployeeLeaveApplication> listEmployeeLeaveApplication = new ArrayList<>();
    listEmployeeLeaveApplication.add(new EmployeeLeaveApplication("HuyenTrang", "2024-12-01", "2024-12-05", "Cho duyet"));
    listEmployeeLeaveApplication.add(new EmployeeLeaveApplication("NgocThom", "2024-12-01", "2024-12-03", "Da duyet"));
    listEmployeeLeaveApplication.add(new EmployeeLeaveApplication("PhuongAnh", "2024-12-03", "2024-12-10", "Cho duyet"));
    request.setAttribute("EmployeeLeaveApplication", listEmployeeLeaveApplication);
%>
<table border="1">
    <tr>
        <th>Ten nhan vien</th>
        <th>Ngay bat dau</th>
        <th>Ngay ket thuc</th>
        <th>Trang thai</th>
    </tr>
    <c:forEach var="employeeLeaveApplication" items="${EmployeeLeaveApplication}">
        <tr>
            <td>${employeeLeaveApplication.employeeName}</td>
            <td>${employeeLeaveApplication.startDate}</td>
            <td>${employeeLeaveApplication.endDate}</td>
            <td>${employeeLeaveApplication.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>