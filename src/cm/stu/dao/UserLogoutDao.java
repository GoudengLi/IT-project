package cm.stu.dao;

import cm.stu.bean.Person;

public interface UserLogoutDao {
    boolean logoutUser(String userAccount);
}
