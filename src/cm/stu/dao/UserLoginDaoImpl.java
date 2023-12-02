package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLoginDaoImpl implements UserLoginDao{
    @Override
    public Person getLogin(Person person) {
        String sql="select * from person where userAccount='"+person.getUserAccount()+"' and userPassword='"+person.getUserPassword()+"'";
        System.out.println(sql);
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res=null;
        Person newPerson=null;
        try{
            pre=connection.prepareStatement(sql);
            res=pre.executeQuery()  ;
            while (res.next()){
                newPerson=new Person();
                //`userAccount``userName``userGender``userBirthday``userIdCard``userPassword``userIdentify``userOtherName`
                newPerson.setUserAccount(res.getString("userAccount"));
                newPerson.setUserName(res.getString("userName"));
                newPerson.setUserIdCard(res.getString("userId"));
                newPerson.setUserPassword(res.getString("userPassword"));
                newPerson.setUserIdentify(res.getInt("userIdentify"));

            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return newPerson;

    }

    public Person getUserDetailsByAccount(String userAccount) {
        Connection connection = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        Person userDetails = null;

        try {
            connection = ConnectionFactory.getConnection();
            String sql = "SELECT * FROM person WHERE userAccount=?";
            pre = connection.prepareStatement(sql);
            pre.setString(1, userAccount);
            res = pre.executeQuery();

            if (res.next()) {
                userDetails = new Person();
                userDetails.setUserAccount(res.getString("userAccount"));
                userDetails.setUserName(res.getString("userName"));
                userDetails.setUserIdCard(res.getString("userId"));
                userDetails.setUserPassword(res.getString("userPassword"));
                userDetails.setUserIdentify(res.getInt("userIdentify"));

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return userDetails;
    }

    public boolean deleteUser(String userAccount) {
        Connection connection = null;
        PreparedStatement pre = null;

        try {
            connection = ConnectionFactory.getConnection();
            String sql = "DELETE FROM person WHERE userAccount=?";
            pre = connection.prepareStatement(sql);
            pre.setString(1, userAccount);

            int rowsAffected = pre.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

}
