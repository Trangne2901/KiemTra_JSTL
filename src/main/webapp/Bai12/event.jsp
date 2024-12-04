<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai12.Event" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 4:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Event> events = new ArrayList<>();
    events.add(new Event("Event A", "2024-04-01 10:00", "Conference Room 1", 50));
    events.add(new Event("Event B", "2024-04-02 14:00", "Conference Room 2", 75));
    events.add(new Event("Event C", "2024-04-03 16:00", "Conference Room 3", 100));
    request.setAttribute("events", events);
%>
<table border="1"> 
    <tr> 
        <th>ten su kien</th> 
        <th>Ngay</th>
        <th>dia diem</th> 
        <th>So nguoi tham gia</th> 
    </tr> 
    <c:forEach var="event" items="${events}">
        <tr>
            <td>${event.name}</td> 
            <td>${event.datetime}</td>
            <td>${event.location}</td> 
            <td>${event.participants}</td> 
        </tr>
    </c:forEach> 
</table>
</body>
</html>
