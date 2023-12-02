package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserRegistrationDAOImpl implements UserRegistrationDAO {
    @Override
    public void registerUser(Person person) {
        String sql = "INSERT INTO person (userAccount, userName, userId, userPassword, userIdentify) VALUES (?, ?, ?, ?, ?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = ConnectionFactory.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, person.getUserAccount());
            preparedStatement.setString(2, person.getUserName());
            preparedStatement.setString(3, person.getUserIdCard());
            preparedStatement.setString(4, person.getUserPassword());
            preparedStatement.setInt(5, person.getUserIdentify());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        } finally {
            ConnectionFactory.close(connection, preparedStatement, null);
        }
    }
}
