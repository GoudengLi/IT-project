package cm.stu.servlet;

import cm.stu.dao.UserLogoutDao;
import cm.stu.dao.UserLogoutDaoImpl;
import cm.stu.service.UserLogoutService;
import cm.stu.service.UserLogoutServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private UserLogoutService userLogoutService;

    @Override
    public void init() throws ServletException {
        // 初始化服务
        UserLogoutDao userLogoutDao = new UserLogoutDaoImpl();
        userLogoutService = new UserLogoutServiceImpl(userLogoutDao);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取用户账户
        String userAccount = request.getParameter("userAccount");

        // 调用服务层进行注销操作
        boolean isLoggedOut = userLogoutService.logoutUser(userAccount);

        if (isLoggedOut) {
            // 注销成功
            response.sendRedirect("logout_success.jsp");
        } else {
            // 注销失败
            response.sendRedirect("logout_failure.jsp");
        }
    }
}


