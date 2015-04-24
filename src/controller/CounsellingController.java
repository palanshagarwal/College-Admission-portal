package controller;

import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;
import util.UserDao;
@WebServlet("/controller.CounsellingController")
public class CounsellingController extends HttpServlet
	 {
	 		    private static final long serialVersionUID = 1L;
	 		    private UserDao dao;
	 		    public CounsellingController() {
	 		        super();
	 		        dao = new UserDao();
	 		    }
	 		    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	 		    {  
	 		    	RequestDispatcher view2 = request.getRequestDispatcher("/merit.jsp");
	 		    	RequestDispatcher view1 = request.getRequestDispatcher("/logoutprocess.jsp");
	 		    	Counselling user = new Counselling();
	 		    	HttpSession session = request.getSession();    		
			    	user.setId((int) session.getAttribute("id"));
			    	System.out.println("id :" + user.getId());
			    	try
			    	{
		            user.setPref1(request.getParameter("branch1").toUpperCase());
	 		        user.setPref2(request.getParameter("branch2").toUpperCase());
	 		        user.setPref3(request.getParameter("branch3").toUpperCase());
	 		        user.setPref4(request.getParameter("branch4").toUpperCase());
	 		        user.setPref1allotted('N');
	 		        user.setPref2allotted('N');
	 		        user.setPref3allotted('N');
	 		        user.setPref4allotted('N');
	 		        dao.counsellingInfo(user);
	 		        view2.forward(request, response);
			    	}catch(SQLIntegrityConstraintViolationException e)
			    	{		
			    		view1.forward(request, response);
			    		response.getWriter().println("invalid prefernces");
			    	}
	 		        
	 		       
			    	
	 		    }
	 		    

	 		    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	 		    {
	 		    }
	 }		    