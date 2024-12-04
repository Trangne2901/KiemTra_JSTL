<%@ page import="com.example.kiemtra_jstl.Bai2.Order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản lý đơn hàng</title>
</head>
<body>
<%
  List<Order> listOrder = new ArrayList<>();
  listOrder.add(new Order("OD1","2024-12-02","HuyenTrang","Da giao "));
  listOrder.add(new Order("OD2","2024-12-03","NgocThom","Chua giao "));
  listOrder.add(new Order("OD3","2024-12-04","DanLe","Dang giao"));
  listOrder.add(new Order("OD4","2024-12-04","KhanhNg","Da giao "));
  listOrder.add(new Order("OD5","2024-12-04","HuyenTrang","Chua giao "));
  request.setAttribute("listOrder",listOrder);
%>
<table border="1px">
  <tr>
    <th>Ma don hang</th>
    <th>Ngay dat</th>
    <th>Ngay dat</th>
    <th>Trang thai</th>
  </tr>
<c:forEach var="order" items="${listOrder}">
  <tr>
    <td>${order.orderId}</td>
    <td>${order.orderDate}</td>
    <td>${order.customer}</td>
    <td>${order.status}</td>
  </tr>
</c:forEach>
</table>
</body>
</html>
