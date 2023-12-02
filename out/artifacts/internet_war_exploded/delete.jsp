<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: 张san--%>
<%--  Date: 2023/12/1--%>
<%--  Time: 14:23--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="deleteUser" method="post">
    <input type="hidden" name="ayaka" value="${sessionScope.loggedInUser.userAccount}">
    <button type="submit">Delete My Account</button>
</form>

</body>
</html>
