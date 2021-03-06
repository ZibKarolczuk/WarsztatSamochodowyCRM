package pl.coderslab.warsztatsamochodowycrm.controller;

import pl.coderslab.warsztatsamochodowycrm.dao.OrderDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "IndexController", urlPatterns = {"/"})
public class IndexController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            request.setAttribute("orders", OrderDao.loadAll());
            getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/index.jsp")
                    .forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
