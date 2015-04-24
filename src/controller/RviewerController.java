package controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.*;
import model.*;
import model.ApplicantInfo.Eligibility;
@WebServlet("/controller.RviewerController")
public class RviewerController extends HttpServlet
{
		    private static final long serialVersionUID = 1L;
		    private UserDao dao;
		    public RviewerController() {
		        super();
		        dao = new UserDao();
		    }
		    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	HashSet<ApplicantInfo.Eligibility> users = new HashSet<ApplicantInfo.Eligibility>(dao.rankviewerquery(request.getParameter("minrangemarks"),request.getParameter("maxrangemarks")));
		    	Iterator<ApplicantInfo.Eligibility> user = users.iterator();
		    	    while(user.hasNext())
		    	    {	
		    	      response.getWriter().println("<br/>" + ((Eligibility) user).getId() + " " + ((Eligibility) user).getRank());
		    	     }
		    }
		    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	doGet(request,response);
		    }
}