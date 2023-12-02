package cm.stu.service;

import cm.stu.bean.Book;
import java.util.List;

public interface BookService {
    void uploadBook(Book book);

    List<Book> getAllBooks();
}


