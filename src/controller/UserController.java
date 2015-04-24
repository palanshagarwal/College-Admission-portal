package controller;
import util.*;
import model.*;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.db2.jcc.am.SqlDataException;
@WebServlet("/controller.UserController")
public class UserController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao dao;

    public UserController() {
        super();
        dao = new UserDao();
        		
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
    	RequestDispatcher view1 = request.getRequestDispatcher("/index.jsp");
    	if(request.getParameter("Name")==null||request.getParameter("Contactno")==null||request.getParameter("Emailid")==null||request.getParameter("Password")==null)
    	{
    		System.out.println("something null");
    		view1.forward(request, response);
    	}	
    	else
    	{
    		Registration user = new Registration();
    			try {
    				user.setId(dao.getMaxId() +1);
    			} catch (Exception e) {
    				// TODO Auto-generated catch block
    				System.out.println("32 controller");
    				e.printStackTrace();
    			}
        user.setName(request.getParameter("Name").toUpperCase());
        user.setContactno(request.getParameter("Contactno").toUpperCase());
        user.setEmailid(request.getParameter("Emailid").toUpperCase());
        user.setPassword(request.getParameter("Password"));
        try{
        dao.addRegisration(user);
        }
        catch(SqlDataException e){
        		view1.forward(request,response);
        }
        catch(SQLException e){
    		view1.forward(request,response);
    }
        HttpSession session = request.getSession();    				
		session.setAttribute( "id",user.getId());
        RequestDispatcher view2 = request.getRequestDispatcher("/fill_details.jsp");
        view2.forward(request, response);
    	}
    }	
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
    	 doGet(request, response);
    }
  }