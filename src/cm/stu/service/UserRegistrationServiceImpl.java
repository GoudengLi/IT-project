package cm.stu.service;

import cm.stu.bean.Person;
import cm.stu.dao.UserRegistrationDAO;
import cm.stu.dao.UserRegistrationDAOImpl;

public class UserRegistrationServiceImpl implements UserRegistrationService {

    private UserRegistrationDAO userRegistrationDAO = new UserRegistrationDAOImpl();

    @Override
    public void registerUser(Person person) {


        userRegistrationDAO.registerUser(person);
    }
}