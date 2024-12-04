<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.kiemtra_jstl.Bai7.BankAccount" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tranz_quyzn
  Date: 04/12/2024
  Time: 3:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan ly tai khoan ngan hang</title>
</head>
<body>
<h2>Hien thi danh sach tai khoan ngan hang</h2>
<%
List<BankAccount> listBankAccont = new ArrayList<>();
listBankAccont.add(new BankAccount("123456789","HuyenTrang",50000.5,"Dang hoat dong"));
listBankAccont.add(new BankAccount("987654321","ThomPham",20000.75,"Dong"));
listBankAccont.add(new BankAccount("129834765","DanLe",40500.5,"Dang hoat dong"));
listBankAccont.add(new BankAccount("135798642","ChiAnh",43213.5,"Dang hoat dong"));
listBankAccont.add(new BankAccount("432198765","TamTam",9870.5,"Dong"));
request.setAttribute("listBankAccont",listBankAccont);
%>
<table border="1">
    <tr>
        <td>So tai khoan</td>
        <td>Ten chu tai khoan</td>
        <td>So du</td>
        <td>Trang thai</td>
    </tr>
    <c:forEach var="bankAccount" items="${listBankAccont}">
        <tr>
           <td>${bankAccount.accountNumber}</td>
           <td>${bankAccount.accountHolderName}</td>
           <td>${bankAccount.balance}</td>
           <td>${bankAccount.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
