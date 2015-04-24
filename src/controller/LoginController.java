package controller;
import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.*;
@WebServlet("/controller.LoginController")
public class LoginController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private UserDao dao;
	public Connection connection;
    public LoginController() 
    {
        super();
        dao = new UserDao();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    { 	
    		 //RequestDispatcher view1 = request.getRequestDispatcher("/index.jsp");
    		 RequestDispatcher view2 = request.getRequestDispatcher("/failedlogin.jsp");
    		 RequestDispatcher view3 = request.getRequestDispatcher("/index2.jsp");
     		boolean found= dao.loginapplicant(Integer.parseInt(request.getParameter("id")),request.getParameter("password"));
    		System.out.println(request.getParameter("id") + request.getParameter("password"));	
    		if(found == true)
    			{	 
					HttpSession session = request.getSession();    				
					session.setAttribute( "id",Integer.parseInt(request.getParameter("id")));
					view3.forward(request,response);
    					//out.println("<center><h1>Welcome: " + name + "</h1>");
    					//oalut.println("<br/><b>You are successfully login........ ");
    			}
    			else
    				  view2.forward(request, response);				
    	}   
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
    	 doGet(request, response);
    }
  }