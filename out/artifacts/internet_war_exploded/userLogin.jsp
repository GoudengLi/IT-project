<%--
  Created by IntelliJ IDEA.
  User: 张san
  Date: 2023/11/8
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body{
      height: 100%;
      margin: 0;
      font-family: Arial, sans-serif;
    }
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-sizing: border-box;
      border-bottom: 1px solid #ccc;
      font-weight: bold;
      width: 100%;
      background: #6c6c6c;
      padding: 20px 150px;

    }

    .logo a{
      font-size: 1.5rem;
      color: #d4790d;
      text-decoration: none;
    }

    .nav-list {
      list-style: none;
      display: flex;
    }

    .nav-list li {
      padding: 0 3rem;
      transition: 0.6s;
    }
    .nav-list li:hover a{
      color: darkorange;

    }
    .nav-list li:hover{
      transform: scale(1.3);
    }
    .nav-list li a {
      text-decoration: none;
      color: #333;
      font-size: 1rem;
      transition: 0.6s;
    }

    .search-bar {
      display: flex;
    }

    .search-bar input {
      padding: 0.5rem;
      border: 1px solid #ccc;
      border-radius: 20px;
      margin-right: 0.5rem;
    }

    .search-bar button {
      padding: 0.5rem;
      background: white;
      color: white;
      border: 1px solid #000;
      border-radius: 30px;
      cursor: pointer;

    }
    .login-container {
      width: 300px;
      margin: 100px auto;
      padding: 20px;
      border-radius: 5px;
    }

    .login-form {
      text-align: center;
      display: block;
    }
    .signup-form{
      text-align: center;
      display: none;
    }
    .tab {
      background: none;
      border: none;
      outline: none;
      cursor: pointer;
      padding: 10px;
      margin-right: 5px;
    }
    .tab.active {
      border-bottom: 2px solid #000;
      font-weight: bolder;
    }
    .login-container input {
      width: 90%;
      height:30px;
      padding: 10px;
      margin: 20px 0;
      border: 1px solid #ccc;
      border-radius: 20px;
      background: #f1f1f1;
    }
    .confirm-button {
      width: 50%;
      padding: 10px;
      border: none;
      border-radius: 20px;
      background-color: #000;
      color: white;
      cursor: pointer;
    }

    .forgot-password, .signin-options {
      margin-top: 20px;
      font-size: 0.9em;
      color: #777;
    }

  </style>
</head>
<body>
<header>
  <div class="logo"><a href="Login.html">Hupu Book</a></div>
  <nav>
    <ul class="nav-list">
      <li><a href="Home.html">Popular</a></li>
      <li><a href="#">Category</a></li>
      <li><a href="#">Premium</a></li>
      <li><a href="about.jsp">About</a></li>
    </ul>
  </nav>
  <div class="search-bar">
    <input type="search" placeholder="Search">
    <button type="submit"><svg t="1701173512563" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1555" width="30" height="30"><path d="M953.474215 908.234504l-152.576516-163.241391c61.92508-74.48211 95.81186-167.36973 95.81186-265.073744 0-229.294809-186.63531-415.930119-416.102133-415.930119-229.294809 0-415.930119 186.63531-415.930119 415.930119s186.63531 415.930119 415.930119 415.930119c60.032925 0 118.00168-12.55703 172.186125-37.327062 16.169326-7.396607 23.221905-26.318159 15.825298-42.315471-7.396607-16.169326-26.318159-23.221905-42.315471-15.825298-45.927768 20.813707-94.951789 31.478582-145.695952 31.478582-194.031917 0-351.94087-157.908953-351.94087-351.94087 0-194.031917 157.908953-351.94087 351.94087-351.94087 194.031917 0 351.94087 157.908953 351.94087 351.94087 0 91.339493-34.918864 177.86259-98.048043 243.743995-12.213002 12.729044-11.868974 33.026709 0.860071 45.239711 1.032085 0.860071 2.236183 1.204099 3.268268 2.064169 0.860071 1.204099 1.376113 2.752226 2.408198 3.956325l165.477574 177.00252c6.192508 6.70855 14.793214 10.148833 23.393919 10.148833 7.912649 0 15.653284-2.92424 21.845792-8.600706C964.827146 941.433227 965.515202 921.135562 953.474215 908.234504z" fill="#575B66" p-id="1556"></path></svg></button>
  </div>
</header>
<div class="login-container">
  <div class="login-form">
    <button class="tab active login1">Login</button>
    <button class="tab sign1">Signup</button>
    <form action="userLogin" method="post" onclick="return checkLogin()">
<%--    <input type="text" id="userAc"  required>--%>
<%--    <input type="password" id="userPw" " required>--%>
<%--    <input type="submit" class="confirm-button">Confirm</input>--%>
  <input type="text" id="userAc" placeholder="Username" name="ayaka" class="myText">
  <input type="password" placeholder="Password" id="userPw" name="6" class="myText">
  <button class="confirm-button" type="submit" value="submit">Confirm</button>
    <div class="forgot-password">Forget your password?</div>
    <div class="signin-options">Or signin with</div>
    </form>
  </div>
  <div class="signup-form">
    <button class="tab login2">Login</button>
    <button class="tab active sign2">Signup</button>

<%--   <input type="text" placeholder="UserAccount"  required>--%>
<%--    <input type="password" placeholder="Password"  required>--%>
<%--    <input type="text" placeholder="email" required>--%>
<%--    <input type="submit" class="confirm-button">Confirm</input>--%>
    <form action="userRegistration" method="post">
    <input type="text" id="userAccount" name="userAccount" placeholder="UserAccount" required>

    <input type="text" id="userName" name="userName" placeholder="Name" required>

    <input type="password" id="userPassword" name="userPassword" placeholder="Password" required>
    <input type="submit" class="confirm-button">Confirm</input>
    </form>
    <div class="forgot-password">Forget your password?</div>
    <div class="signin-options">Or signin with</div>

  </div>
</div>
</body>

</html>

<script>
  let oSign = document.querySelector(".signup-form");
  let oLog = document.querySelector(".login-form");
  let oSignButton1 = document.querySelector(".sign1");
  let oSignButton2 = document.querySelector(".sign2");
  let oLoginButton1 = document.querySelector(".login1");
  let oLoginButton2 = document.querySelector(".login2");
  oSignButton1.onclick = function () {
    oSign.style.display = "block";
    oLog.style.display = "none";
  }
  oSignButton2.onclick = function () {
    oSign.style.display = "block";
    oLog.style.display = "none";
  }

  oLoginButton1.onclick = function () {
    oSign.style.display = "none";
    oLog.style.display = "block";
  }
  oLoginButton2.onclick = function () {
    oSign.style.display = "none";
    oLog.style.display = "block";
  }

  function checkLogin(){
    let userAccount=document.getElementById("userAc").value;
    let userPwd=document.getElementById("userPw").value;
    if(userAccount==null||userAccount.trim()===""){
      document.getElementById("tip").innerHTML="blank account";
      return false;
    }if (userPwd==null||userPwd.trim()===""){
      document.getElementById("tip").innerHTML="pwd can not be null";
      return false;
    }


  }

</script>
