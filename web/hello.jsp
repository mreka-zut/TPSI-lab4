<%-- 
    Document   : hello.jsp
    Created on : 2020-03-19, 23:24:09
    Author     : micha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <%--pierwszy wariant 
        Pierwszy wariant kopiuje tekst ktory potem jest traktowany jako html, czyli
        <span style='color: pink'>Piotr</span> zmieni przeslany tekst na rozowy,
        <script>alert('Jestem zlym hackerem i zaraz cie zjem!');</script>
        wywola komunikat przed wejsciem do strony.
        Drugi wariant wyswietla sam tekst i znaczniki html nie działają.
        <h1>Cześć, ${person.getFirstName()}  ${person.getLastName()}! </h1>
        <p>Mail to: <a href="http://${person.getEmail()}">${person.getEmail()}</a></p>
        --%>
        <!-- drugi wariant -->
        <h1>Cześć, <c:out value="${person.getFirstName()}"/> 
                <c:out value="${person.getLastName()}"/> !</h1>

        <p>Mail to: <a href=<c:out value="${person.getEmail()}"/> >
                <c:out value="${person.getEmail()}"/></a></p>

    </body>
</html>