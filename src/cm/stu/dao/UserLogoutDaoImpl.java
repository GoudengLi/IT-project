package cm.stu.dao;

import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserLogoutDaoImpl implements UserLogoutDao {
    @Override
    public boolean logoutUser(String userAccount) {
        String sql = "DELETE FROM person WHERE userAccount = ?";
        Connection connection = ConnectionFactory.getConnection();
        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, userAccount);

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        } finally {
            ConnectionFactory.close(connection, preparedStatement, null);
        }

        return false;
    }


}

