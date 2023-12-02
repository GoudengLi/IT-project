
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


        .latest-read h2 {
            margin-bottom: 1rem;
            font-size: 1.5rem;
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


        .book-info h3 {
            font-size: 1rem;
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


        @media (max-width: 768px) {
            .container {
                width: 95%;
            }

            .nav-list {
                display: none;
            }

            .search-bar button {
                width: 100%;
            }
        }

        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background: #f8f8f8;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="file"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            background: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background: #45a049;
        }

        @media (max-width: 768px) {
            form {
                width: 80%;
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
            <li><a href="#">Category</a></li>
            <li><a href="#">Premium</a></li>
            <li><a href="upload.jsp">Post</a></li>
        </ul>
    </nav>
    <div class="search-bar">
        <input type="search" placeholder="Search">
        <button type="submit"><svg t="1701173512563" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1555" width="30" height="30"><path d="M953.474215 908.234504l-152.576516-163.241391c61.92508-74.48211 95.81186-167.36973 95.81186-265.073744 0-229.294809-186.63531-415.930119-416.102133-415.930119-229.294809 0-415.930119 186.63531-415.930119 415.930119s186.63531 415.930119 415.930119 415.930119c60.032925 0 118.00168-12.55703 172.186125-37.327062 16.169326-7.396607 23.221905-26.318159 15.825298-42.315471-7.396607-16.169326-26.318159-23.221905-42.315471-15.825298-45.927768 20.813707-94.951789 31.478582-145.695952 31.478582-194.031917 0-351.94087-157.908953-351.94087-351.94087 0-194.031917 157.908953-351.94087 351.94087-351.94087 194.031917 0 351.94087 157.908953 351.94087 351.94087 0 91.339493-34.918864 177.86259-98.048043 243.743995-12.213002 12.729044-11.868974 33.026709 0.860071 45.239711 1.032085 0.860071 2.236183 1.204099 3.268268 2.064169 0.860071 1.204099 1.376113 2.752226 2.408198 3.956325l165.477574 177.00252c6.192508 6.70855 14.793214 10.148833 23.393919 10.148833 7.912649 0 15.653284-2.92424 21.845792-8.600706C964.827146 941.433227 965.515202 921.135562 953.474215 908.234504z" fill="#575B66" p-id="1556"></path></svg></button>
    </div>
</header>
<h2>Upload books</h2>
<form action="uploadBook" method="post" enctype="multipart/form-data">
     <label for="title">title:</label>
    <input type="text" id="title" name="title" required><br>

    <label for="author">author:</label>
    <input type="text" id="author" name="author" required><br>

    <label for="bookSrc">publish book:</label>
    <input type="file" id="bookSrc" name="bookSrc"  required><br>

    <label for="bookContent">content:</label>
    <textarea id="bookContent" name="bookContent" rows="4" cols="50" required></textarea><br>

    <button type="submit">upload</button>
</form>

</body>
</html>
