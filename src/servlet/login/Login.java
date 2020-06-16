package servlet.login;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Login extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        //get type
        String type=request.getParameter("type");
        System.out.println(type);
        //Judgment type
        if("1".equals(type)){
            //Admin
            request.getRequestDispatcher("/Admin_1.jsp").forward(request,response);
        }else if("2".equals(type)){
            //Doctor
            request.getRequestDispatcher("/Doctor_view.jsp").forward(request,response);
        }else if("3".equals(type)){
            //Patient
            request.getRequestDispatcher("/Patient_view.jsp").forward(request,response);
        }
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException{
        doGet(request, response);
    }
}
