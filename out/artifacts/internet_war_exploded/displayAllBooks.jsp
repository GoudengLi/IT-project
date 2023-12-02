<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Images</title>
</head>
<body>
<h1>Book Images</h1>
<c:forEach var="book" items="${books}">
    <div>
        <p>Title: ${book.title}</p>
        <p>Author: ${book.author}</p>
        <img src="${book.bookSrc}" alt="${book.title} Image"/>
    </div>
</c:forEach>
</body>
</html>