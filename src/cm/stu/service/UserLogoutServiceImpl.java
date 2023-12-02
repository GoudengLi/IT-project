package cm.stu.service;

import cm.stu.dao.UserLogoutDao;

public class UserLogoutServiceImpl implements UserLogoutService {
    private UserLogoutDao userLogoutDao;

    public UserLogoutServiceImpl(UserLogoutDao userLogoutDao) {
        this.userLogoutDao = userLogoutDao;
    }

    @Override
    public boolean logoutUser(String userAccount) {
        return userLogoutDao.logoutUser(userAccount);
    }
}

