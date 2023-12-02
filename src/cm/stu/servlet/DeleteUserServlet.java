package cm.stu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import cm.stu.service.UserLoginService;
import cm.stu.service.UserLoginServiceImpl;
@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {
    private UserLoginService ul = new UserLoginServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userAccount = req.getParameter("ayaka");

        // 删除用户
        boolean deleted = ul.deleteUser(userAccount);

        if (deleted) {
            // 注销用户
            HttpSession session = req.getSession(false);
            if (session != null) {
                session.removeAttribute("loggedInUser");
            }

            // 重定向到登录页面或其他页面
            resp.sendRedirect("successDelete.jsp");
        } else {
            // 删除失败，处理错误逻辑
            req.setAttribute("error", "Failed to delete user");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }
}
