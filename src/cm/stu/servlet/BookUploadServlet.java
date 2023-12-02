package cm.stu.servlet;

import cm.stu.bean.Book;
import cm.stu.dao.BookDAOImpl;
import cm.stu.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.File;

@WebServlet("/uploadBook")
@MultipartConfig
public class BookUploadServlet extends HttpServlet {
    private BookServiceImpl bookService;

    @Override
    public void init() throws ServletException {
        super.init();
        // 初始化BookService，注入BookDAO
        this.bookService = new BookServiceImpl(new BookDAOImpl());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取上传的图书信息
        String title = request.getParameter("title");
        String author = request.getParameter("author");

        // 获取上传的图书文件路径（这里假设你使用了文件上传）
        Part filePart = request.getPart("bookSrc");
        String contentDisposition = filePart.getHeader("content-disposition");
        // 获取文件名
        String fileName = contentDisposition.replaceFirst("(?i)^.*filename=\"([^\"]+)\".*$", "$1");

// 获取基础目录
        String baseDirectory = getServletContext().getRealPath("/");

// 构建相对路径，这里使用相对路径web/WEB-INF/img
        String relativePath ="img" + File.separator;

// 构建完整路径
        String bookSrc = baseDirectory + relativePath + fileName;


        // 将文件保存到服务器目录
        filePart.write(bookSrc);

        // 获取用户输入的图书内容
        String bookContent = request.getParameter("bookContent");

        // 创建Book对象
        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setBookSrc(bookSrc);
        book.setBookContent(bookContent);

        // 将图书信息保存到数据库
        bookService.uploadBook(book);

        // 可以根据需要进行页面跳转或其他操作
        response.sendRedirect("success.jsp");
    }
}



