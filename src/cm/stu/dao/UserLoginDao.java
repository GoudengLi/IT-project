package cm.stu.dao;

import cm.stu.bean.Person;

public interface UserLoginDao {
    Person getLogin(Person person);
    Person getUserDetailsByAccount(String userAccount);
    boolean deleteUser(String userAccount);
}
