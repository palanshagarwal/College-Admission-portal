package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.*;
import model.*;
@WebServlet("/controller.AdministratorController")
public class AdministratorController extends HttpServlet
{
		    private static final long serialVersionUID = 1L;
		    private UserDao dao;
		    public AdministratorController() {
		        super();
		        dao = new UserDao();
		    }
		    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	RequestDispatcher view1 = request.getRequestDispatcher("/viewer.jsp");
		    	RequestDispatcher view3 = request.getRequestDispatcher("/master.jsp");
	    		 RequestDispatcher view2 = request.getRequestDispatcher("/failedlogin.jsp");
	    		boolean found= dao.loginadministrator(Integer.parseInt(request.getParameter("id")),request.getParameter("password"));
	    		//System.out.println(request.getParameter("id") + request.getParameter("password"));	
	    		if(found == true)
	    		{
	    			Administrator admin = new Administrator();	  
	    			admin = dao.retrieveadmininfo(Integer.parseInt(request.getParameter("id")));  				  
	    				  if(admin==null)
	    				  {
	    					  System.out.println("admin record not found");
		    				  view2.forward(request, response);		
	    				  }
	    				  else if(admin.getAccess()=='V')
	    					  {
	    					  	HttpSession session = request.getSession();    				
	    						session.setAttribute( "id",Integer.parseInt(request.getParameter("id")));
	    						view1.forward(request, response);
	    					  }
	    				  else 
	    				  {
	    					  HttpSession session = request.getSession();    				
	    						session.setAttribute( "id",Integer.parseInt(request.getParameter("id")));
	    						view3.forward(request, response);		
	    				  }		
	    		}
	    			else
	    				  view2.forward(request, response);		
		     }	
		    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	 doGet(request, response);
		    }
}