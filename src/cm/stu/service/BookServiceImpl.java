package cm.stu.service;

import cm.stu.bean.Book;
import cm.stu.dao.BookDAO;
import java.util.List;

public class BookServiceImpl implements BookService {

    private BookDAO bookDAO;

    public BookServiceImpl(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @Override
    public void uploadBook(Book book) {
        bookDAO.uploadBook(book);
    }

    public List<Book> getAllBooks() {
        return bookDAO.getAllBooks();
    }
}
