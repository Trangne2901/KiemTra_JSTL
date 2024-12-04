<%@ page import="com.example.kiemtra_jstl.Bai6.TicketsMovie" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý vé xem phim</title>
</head>
<body>
<h2>Hien thi danh sach ve da dat</h2>
<%
    List<TicketsMovie> listTicketsMovie = new ArrayList<>();
    listTicketsMovie.add(new TicketsMovie("TM01", "Quy Cau", "2024-12-01 19:30", 100));
    listTicketsMovie.add(new TicketsMovie("TM02", "Linh Mieu", "2024-12-02 22:30", 95));
    listTicketsMovie.add(new TicketsMovie("TM03", "Quy Cau", "2024-12-03 10:30", 160));
    listTicketsMovie.add(new TicketsMovie("TM04", "Linh Mieu", "2024-12-04 15:45", 140));
    request.setAttribute("listTicketsMovie", listTicketsMovie);
%>
<table border="1">
    <tr>
        <td>Ma ve</td>
        <td>Ten phim</td>
        <td>Suat chieu</td>
        <td>Gia ve</td>
    </tr>
    <c:forEach var="ticketMovie" items="${listTicketsMovie}">
        <tr>
            <td>${ticketMovie.idTicketsMovie} </td>
            <td>${ticketMovie.movieName} </td>
            <td>${ticketMovie.showTime} </td>
            <td>${ticketMovie.price} </td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
