<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtra_jstl.Bai1.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản lý sản phẩm</title>
</head>
<body>
<%
    List<Product> listProduct = new ArrayList<>();
    listProduct.add(new Product("MacBook",1100,"San pham1","https://cafefcdn.com/203337114487263232/2022/6/11/photo-1-16549111128021638840065.jpg"));
    listProduct.add(new Product("Dell",1500,"San pham2","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQc-iMoM9BKYa-4iF5biIT5OqsoeEEizXVfQ&s"));
    listProduct.add(new Product("ThinkPad",900,"San pham3","https://laptopsgn.com/public/upload/800x800x1x80/Lenovo-Thinkpad-T14-gen-1-laptopsgn.jpg"));
    request.setAttribute("listProduct",listProduct);

%>
<table border="1px" >
    <tr>
        <th>Ten san pham</th>
        <th>Gia</th>
        <th>Mo ta</th>
        <th>Hinh anh</th>
    </tr>
    <c:forEach var="product" items="${listProduct}">
        <tr>
            <td> ${product.nameProduct}</td>
            <td> ${product.priceProduct}</td>
            <td> ${product.descriptionProduct}</td>
            <td><img src="${product.imageUrlProduct}" style="width: 100px;height: 100px"> </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
