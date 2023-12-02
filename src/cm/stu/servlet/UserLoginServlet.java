package cm.stu.servlet;

import cm.stu.bean.Person;
import cm.stu.service.UserLoginService;
import cm.stu.service.UserLoginServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("here is jonny!!!");
        String userAccount = req.getParameter("ayaka");
        String userPwd = req.getParameter("6");
        Person person = new Person(userAccount, userPwd);
        UserLoginService ul = new UserLoginServiceImpl();
        Person newPerson = ul.getLogin(person);
        if (newPerson != null) {
            // 将用户信息存储在会话中
            req.getSession().setAttribute("loggedInUser", newPerson);
            if ("17287".equals(newPerson.getUserAccount())) {
                newPerson.setUserIdentify(1);
            } else {
                newPerson.setUserIdentify(0);
            }

            // 获取用户的详细信息
            // 在登录成功后
            Person userDetails = ul.getUserDetailsByAccount(userAccount);


            // 将用户详细信息存储在请求属性中，以便在 JSP 中使用
            req.setAttribute("userDetails", userDetails);

            req.setAttribute("mainRight", "blank.jsp");
            req.getRequestDispatcher("main.jsp").forward(req, resp);
        } else {
            // 返回到登录页面
            req.setAttribute("tip", "account can not match password");
            req.getRequestDispatcher("userLogin.jsp").forward(req, resp);
        }


    }

}
