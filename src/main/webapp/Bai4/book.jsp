<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.kiemtra_jstl.Bai4.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ứng dụng quản lý sách</title>
</head>
<body>

<h2> Hien thi danh sach </h2>
<%
    List<Book> listBooks = new ArrayList<>();
    listBooks.add(new Book("Sach 1","Tac gia A","Tieu thuyet",2020));
    listBooks.add(new Book("Sach 2","Tac gia B","Truyen ngan",2024));
    listBooks.add(new Book("Sach 3","Tac gia C","Tieu thuyet",2020));
    listBooks.add(new Book("Sach 4","Tac gia D","Tieu thuyet",2022));
    listBooks.add(new Book("Sach 5","Tac gia E","Tieu thuyet",2023));
    request.setAttribute("listBook", listBooks);
%>
<table border="1">
    <tr>
        <td>Ten sach</td>
        <td>Ten tac gia</td>
        <td>The loai</td>
        <td>Nam xuat ban</td>
    </tr>
    <c:forEach var="book" items="${listBook}">
        <tr>
            <td>${book.title} </td>
            <td>${book.author} </td>
            <td>${book.category} </td>
            <td>${book.year} </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
