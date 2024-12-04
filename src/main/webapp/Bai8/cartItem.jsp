<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai8.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 3:34 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý cửa hàng trực tuyến</title>
</head>
<body>
<h2>Hien thi danh sach gio hang</h2>
<%
    List<CartItem> listCartItem = new ArrayList<>();
   listCartItem.add(new CartItem("San pham 1",2,100,200));
   listCartItem.add(new CartItem("San pham 2",1,45,45));
   listCartItem.add(new CartItem("San pham 3",4,25,100));
   listCartItem.add(new CartItem("San pham 2",5,45,225));
   listCartItem.add(new CartItem("San pham 1",5,100,500));
   request.setAttribute("listCartItem",listCartItem);
%>
<table border="1">
    <tr>
        <td>San pham</td>
        <td>So luong</td>
        <td>Gia tien</td>
        <td>Tong tien</td>
    </tr>
    <c:forEach var="cartItem" items="${listCartItem}">
        <tr>
          <td>${cartItem.product}</td>
          <td>${cartItem.quantity}</td>
          <td>${cartItem.price}</td>
          <td>${cartItem.total}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
