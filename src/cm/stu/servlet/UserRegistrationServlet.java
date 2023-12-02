package cm.stu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cm.stu.bean.Person;
import cm.stu.service.UserRegistrationService;
import cm.stu.service.UserRegistrationServiceImpl;

@WebServlet("/userRegistration")
public class UserRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserRegistrationService userRegistrationService = new UserRegistrationServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 从请求参数中获取用户注册信息
        String userAccount = request.getParameter("userAccount");
        String userName = request.getParameter("userName");
        String userIdCard = request.getParameter("userIdCard");
        String userPassword = request.getParameter("userPassword");

        // 创建Person对象
        Person person = new Person();
        person.setUserAccount(userAccount);
        person.setUserName(userName);
        person.setUserIdCard(userIdCard);
        person.setUserPassword(userPassword);
        person.setUserIdentify(0);


//        System.out.println("User Account: " + person.getUserAccount());
//        System.out.println("User Name: " + person.getUserName());
//        System.out.println("User ID: " + person.getUserIdCard());
//        System.out.println("User Password: " + person.getUserPassword());
//        System.out.println("User Identify: " + person.getUserIdentify());
        // 调用服务层注册用户
        userRegistrationService.registerUser(person);

        // 可以在这里添加重定向或其他响应逻辑
        response.sendRedirect("registrationSuccess.jsp");
    }
}
