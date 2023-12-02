<%--@elvariable id="person" type="java"--%>
<%--
  Created by IntelliJ IDEA.
  User: 张san
  Date: 2023/11/15
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Website Homepage</title>
    <style>
        /* Reset some basic elements */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #fff;
            color: #333;
        }

        .container {
            width: 80%;
            margin: auto;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;

            border-bottom: 1px solid #ccc;
            font-weight: bold;
            width: 100%;
            background: #6c6c6c;
            padding: 20px 150px;

        }

        .logo a{
            font-size: 1.5rem;
            color: darkorange;
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

        .featured {
            margin: 2rem auto;
            width: 100%;
            text-align: center;
        }

        .latest-read {
            padding: 1rem 0;
        }

        .latest-read h2 {
            margin-bottom: 1rem;
            font-size: 1.5rem;
        }

        .book-list {
            display: flex;
            overflow-x: auto;
            flex-flow:row wrap;
        }

        .book-item {
            margin-bottom: 2rem;
            margin-right: 2rem;
            width: 200px;
            text-align: center;
        }
        .book-item a{
            color: black;
            text-decoration: none;
        }
        .book-item:hover .book-thumbnail{
            transform: scale(1.3);
        }
        .book-item:hover .book-info{
            display: none;
        }

        .book-thumbnail {
            width: 60%;
            height: 150px;
            margin: 0 auto;
            background: #eee; /* Placeholder for thumbnail */
            margin-bottom: 0.5rem;
            transition: 0.6s;
        }

        .book-info h3 {
            font-size: 1rem;
            margin-bottom: 0.5rem;
        }

        .book-description {
            font-size: 0.8rem;
            margin-bottom: 0.5rem;
        }

        .book-meta .rating {
            position: relative;
            font-weight: bold;
            top: -60px;
        }
        .book-meta .rating img{
            width: 70px;
            position: relative;
            top: 30px;
        }
        .book-meta .reviews {
            position: relative;
            font-size: 0.8rem;
            top: -60px;
        }

        .more-link {
            display: inline-block;
            margin-top: 1rem;
            text-decoration: none;
            color: #333;
        }

        /* Add media queries for responsiveness */
        @media (max-width: 768px) {
            .container {
                width: 95%;
            }

            .nav-list {
                display: none; /* Hide navbar on small screens */
            }

            .search-bar button {
                width: 100%;
            }
        }

    </style>
</head>
<body>
<header>
    <div class="logo"><a href="Login.html">Hupu Book</a></div>
    <nav>
        <ul class="nav-list">
            <li><a href="main.jsp">Popular</a></li>
            <li><a href="userLogin.jsp">Login</a></li>
            <li><a href="#">Premium</a></li>
            <c:choose>
                <c:when test="${not empty sessionScope.loggedInUser and sessionScope.loggedInUser.userIdentify == 1}">
                    <li><a href="upload.jsp">Post</a></li>
                </c:when>
                <c:otherwise>
                </c:otherwise>
            </c:choose>

        </ul>
    </nav>
    <div class="search-bar">
        <input type="search" placeholder="Search">
        <button type="submit"><svg t="1701173512563" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1555" width="30" height="30"><path d="M953.474215 908.234504l-152.576516-163.241391c61.92508-74.48211 95.81186-167.36973 95.81186-265.073744 0-229.294809-186.63531-415.930119-416.102133-415.930119-229.294809 0-415.930119 186.63531-415.930119 415.930119s186.63531 415.930119 415.930119 415.930119c60.032925 0 118.00168-12.55703 172.186125-37.327062 16.169326-7.396607 23.221905-26.318159 15.825298-42.315471-7.396607-16.169326-26.318159-23.221905-42.315471-15.825298-45.927768 20.813707-94.951789 31.478582-145.695952 31.478582-194.031917 0-351.94087-157.908953-351.94087-351.94087 0-194.031917 157.908953-351.94087 351.94087-351.94087 194.031917 0 351.94087 157.908953 351.94087 351.94087 0 91.339493-34.918864 177.86259-98.048043 243.743995-12.213002 12.729044-11.868974 33.026709 0.860071 45.239711 1.032085 0.860071 2.236183 1.204099 3.268268 2.064169 0.860071 1.204099 1.376113 2.752226 2.408198 3.956325l165.477574 177.00252c6.192508 6.70855 14.793214 10.148833 23.393919 10.148833 7.912649 0 15.653284-2.92424 21.845792-8.600706C964.827146 941.433227 965.515202 921.135562 953.474215 908.234504z" fill="#575B66" p-id="1556"></path></svg></button>
    </div>

    <c:if test="${not empty sessionScope.loggedInUser}">
        <h1>Welcome, ${sessionScope.loggedInUser.userName}!</h1>
        <p>User Account: ${sessionScope.loggedInUser.userAccount}</p>
        <p>User Identify: ${sessionScope.loggedInUser.userIdentify}</p>
        <a href="delete.jsp"><p>delete my account</p></a>
    </c:if>
</header>
<div class="container">
    <main>
        <section class="featured">
            <!-- Add your featured book slider here -->
            <img src="15260132422567725796.jpg">
        </section>
        <section class="latest-read">
            <h2>Latest View</h2>
            <div class="book-list">
                <!-- Book items -->
                <div class="book-item">
                    <a href="bookPage.jsp">
                        <div class="book-thumbnail"></div>
                        <div class="book-info">
                            <h3>King: A life</h3>
                            <p class="book-description">On following the protagonist's point of view and seeing...</p>
                            <div class="book-meta">
                                <span class="rating">9.8 <img src="score.png" alt=""></span>
                                <span class="reviews">60,000 reviews</span>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- Repeat for other books -->
            </div>
            <a href="#" class="more-link">More ›</a>
        </section>
    </main>
</div>
<%--<jsp:include page="${mainRight=null?'blank.jsp':mainRight}"></jsp:include>--%>
</body>
</html>






