package cm.stu.dao;
import cm.stu.bean.Book;
import cm.stu.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class BookDAOImpl implements BookDAO {
    @Override
    public void uploadBook(Book book) {
        String sql = "INSERT INTO book (title, author, bookSrc, bookContent) VALUES (?, ?, ?, ?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = ConnectionFactory.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, book.getTitle());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getBookSrc());
            preparedStatement.setString(4, book.getBookContent());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        } finally {
            ConnectionFactory.close(connection, preparedStatement, null);
        }


    }
    @Override
    public List<Book> getAllBooks() {
        String sql = "SELECT * FROM book";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Book> books = new ArrayList<>();

        try {
            connection = ConnectionFactory.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setTitle(resultSet.getString("title"));
                book.setAuthor(resultSet.getString("author"));
                book.setBookSrc(resultSet.getString("bookSrc"));
                book.setBookContent(resultSet.getString("bookContent"));
                books.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        } finally {
            ConnectionFactory.close(connection, preparedStatement, resultSet);
        }

        return books;
    }

}
