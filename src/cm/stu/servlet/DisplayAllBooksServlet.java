package cm.stu.servlet;

import cm.stu.bean.Book;
import cm.stu.dao.BookDAOImpl;
import cm.stu.service.BookService;
import cm.stu.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/displayAllBooks")
public class DisplayAllBooksServlet extends HttpServlet {

    private BookService bookService;




    @Override
    public void init() throws ServletException {

        this.bookService = new BookServiceImpl(new BookDAOImpl());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> books = bookService.getAllBooks();
        request.setAttribute("books", books);


        request.getRequestDispatcher("displayAllBooks.jsp").forward(request, response);
    }
    }
