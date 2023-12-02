<%--
  Created by IntelliJ IDEA.
  User: 张san
  Date: 2023/11/30
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
</head>
<body>

<h2>User Registration Form</h2>

<form action="userRegistration" method="post">
    <label for="userAccount">User Account:</label>
    <input type="text" id="userAccount" name="userAccount" required><br>

    <label for="userName">User Name:</label>
    <input type="text" id="userName" name="userName" required><br>

    <label for="userIdCard">User ID Card:</label>
    <input type="text" id="userIdCard" name="userIdCard" required><br>

    <label for="userPassword">User Password:</label>
    <input type="password" id="userPassword" name="userPassword" required><br>

    <button type="submit">Register</button>
</form>

</body>
</html>