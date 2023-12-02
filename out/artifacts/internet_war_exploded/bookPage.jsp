<%--
  Created by IntelliJ IDEA.
  User: 张san
  Date: 2023/11/29
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Details</title>
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
            padding: 1rem;
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

        .book-overview {
            display: flex;
            margin-bottom: 1rem;
        }

        .book-cover {
            width: 230px;
            height: 300px;
            background: #eee; /* Placeholder for book cover */
            margin-right: 10rem;
        }

        .book-content {
            margin-top: 50px;
            width: 70%;
        }

        .book-content h1 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .book-description {
            margin-bottom: 1rem;
        }

        .book-author {
            margin-bottom: 1rem;
            font-style: italic;
        }

        .book-stats {
            font-size: 1.2rem;
        }

        .rating {
            font-weight: bold;
        }
        .rating img{
            width: 100px;
            position: relative;
            top: 42px;
        }
        .reviews {
            width: 100%;
            height: 800px;
            background: #eeeeee;
        }
        .review-container{
            width: 80%;
            font-size: 0.8rem;
            position: relative;
            margin: 30px auto;

        }
        .reviews h2 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .comment-container {
            position: relative;
            margin-top: 50px; /* Adjust the margin as needed */
        }

        .comment-list {
            list-style: none;
            position: absolute;
            left: 0;
            width: 100%; /* Make the list take the full width */
            padding: 0;
        }

        .comment {
            padding: 1rem;
            border-bottom: 1px solid #ccc;
        }

        .comment-header {
            display: flex;
            align-items: center;
            margin-bottom: 0.5rem;
        }

        .user-avatar {
            width: 50px;
            height: 50px;
            background: #bbb; /* Placeholder for user avatar */
            border-radius: 50%;
            margin-right: 0.5rem;
        }

        .user-info {
            font-size: 0.8rem;
        }

        .user-name {
            display: block;
            font-weight: bold;
        }

        .comment-text {
            font-size: 0.9rem;
        }

        .write-comment {
            position: absolute;
            right: 20%;
            padding: 20px;
            background: #dfdfdf;
            border-radius: 10px;
        }

        .comment-input {
            width: 100%;
            margin-bottom: 10px;
            padding: 5px;
        }

        .comment-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }
        .write-review textarea {
            width: 100%;
            padding: 0.5rem;
            margin-bottom: 3rem;
            border: 1px solid #ccc;
            border-radius: 20px;
            height: 200px;
            background: #f1f1f1;
        }

        .write-review button {
            height: 50px;
            padding: 0.5rem;
            width: 100%;
            background: linear-gradient(grey, #404040);
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
        }

    </style>
</head>
<body>
<header>
    <div class="logo"><a href="Login.html">Hupu Book</a></div>
    <nav>
        <ul class="nav-list">
            <li><a href="main.jsp">Popular</a></li>
            <li><a href="#">Category</a></li>
            <li><a href="userLogin.jsp">Login</a></li>
            <li><a href="#">About</a></li>
        </ul>
    </nav>
    <div class="search-bar">
        <input type="search" placeholder="Search">
        <button type="submit"><svg t="1701173512563" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1555" width="30" height="30"><path d="M953.474215 908.234504l-152.576516-163.241391c61.92508-74.48211 95.81186-167.36973 95.81186-265.073744 0-229.294809-186.63531-415.930119-416.102133-415.930119-229.294809 0-415.930119 186.63531-415.930119 415.930119s186.63531 415.930119 415.930119 415.930119c60.032925 0 118.00168-12.55703 172.186125-37.327062 16.169326-7.396607 23.221905-26.318159 15.825298-42.315471-7.396607-16.169326-26.318159-23.221905-42.315471-15.825298-45.927768 20.813707-94.951789 31.478582-145.695952 31.478582-194.031917 0-351.94087-157.908953-351.94087-351.94087 0-194.031917 157.908953-351.94087 351.94087-351.94087 194.031917 0 351.94087 157.908953 351.94087 351.94087 0 91.339493-34.918864 177.86259-98.048043 243.743995-12.213002 12.729044-11.868974 33.026709 0.860071 45.239711 1.032085 0.860071 2.236183 1.204099 3.268268 2.064169 0.860071 1.204099 1.376113 2.752226 2.408198 3.956325l165.477574 177.00252c6.192508 6.70855 14.793214 10.148833 23.393919 10.148833 7.912649 0 15.653284-2.92424 21.845792-8.600706C964.827146 941.433227 965.515202 921.135562 953.474215 908.234504z" fill="#575B66" p-id="1556"></path></svg></button>
    </div>
</header>
<div class="container">
    <main>
        <section class="book-overview">
            <div class="book-cover"></div>
            <div class="book-content">
                <h1>King: A Life</h1>
                <p class="book-description">On following the protagonist's point of view and seeing how he ascends to the throne.</p>
                <p class="book-author">By Jennifer</p>
                <p class="book-stats">
                    <span class="rating">9.8 <img src="评分.png" alt=""></span>
                    <span class="reviews">60,000 reviews</span>
                </p>
            </div>
        </section>
    </main>
</div>
<section class="reviews">
    <div class="review-container">
        <h2>Comments</h2>
        <ul class="comment-list" id="commentList">
            <!-- Comments will be added here dynamically -->
        </ul>
        <div class="write-comment">
            <textarea class="comment-input" id="commentInput" placeholder="Write your comment..."></textarea>
            <button class="comment-button" id="commentButton" onclick="addComment()">Comment</button>
            <img src="" alt="">
        </div>
    </div>

</section>
<script>
    function addComment() {
        var commentText = document.getElementById('commentInput').value;

        if (commentText.trim() !== '') {
            var commentList = document.getElementById('commentList');

            var newComment = document.createElement('li');
            newComment.className = 'comment';

            var commentHeader = document.createElement('div');
            commentHeader.className = 'comment-header';

            var commentUser = document.createElement('span');
            commentUser.textContent = 'Guest'; // You can customize this with user input

            var commentDate = document.createElement('span');
            commentDate.textContent = getCurrentDate();

            commentHeader.appendChild(commentUser);
            commentHeader.appendChild(commentDate);

            var commentTextElement = document.createElement('p');
            commentTextElement.className = 'comment-text';
            commentTextElement.textContent = commentText;

            newComment.appendChild(commentHeader);
            newComment.appendChild(commentTextElement);

            commentList.appendChild(newComment);

            // Clear the comment input
            document.getElementById('commentInput').value = '';
        }
    }

    function getCurrentDate() {
        var options = { year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric' };
        return new Date().toLocaleDateString('en-US', options);
    }
</script>

</body>
</html>