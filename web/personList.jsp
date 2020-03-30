<%-- 
    Document   : personList
    Created on : 2020-03-21, 16:17:10
    Author     : micha
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista osób</h1>
        <table style="width: 50%;text-align: center;">
            <tr>
                <th>Imię</th>
                <th>Nazwisko</th>
                <th>Email</th>
            </tr>
            <c:forEach items="${people}" var="person">
            <tr>
                <td>${person.getFirstName()}</td>
                <td>${person.getLastName()}</td>
                <td>${person.getEmail()}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
