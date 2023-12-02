package cm.stu.dao;

import cm.stu.bean.Book;

import java.util.List;

public interface BookDAO {
    void uploadBook(Book book);
    List<Book> getAllBooks();
}