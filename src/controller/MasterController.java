package controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ApplicantInfo;
import model.ApplicantInfo.Eligibility;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import util.*;
@WebServlet("/controller.MasterController")
public class MasterController extends HttpServlet
{
		    private static final long serialVersionUID = 1L;
		    public static int flag=0;
		    private UserDao dao;
		    public MasterController() {
		        super();
		        	dao = new UserDao();
		    }
		    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	String query;
		    	if(request.getParameter("query")=="select"){
		    		String select_value =request.getParameter("select_value");
		    		String select_table=request.getParameter("select_table");
		    		String select_condition=request.getParameter("select_condition");
		    		if(select_value==null || select_table==null){
		    			RequestDispatcher view1 = request.getRequestDispatcher("/master.jsp");
		        		view1.forward(request, response);
		    		}
		    		else
		    		{
		    			query="select " + select_value+ " from "+ select_table;
		    			if (select_condition!=null){
		    				query= query+ " "+select_condition;
		    			}
		    			//request.setAttribute("users", dao.getAllUsers(query));
		    			   List<Object> users = new ArrayList<Object>();
		    			   users=dao.getAllUsers(query);
		    			 
		    			   dao.next_result(flag);
		    			   dao.prev_result(flag);
		    			   Object o = users.get(flag);
		    			   request.setAttribute("results",o);
		    			   RequestDispatcher view4 = request.getRequestDispatcher("/master.jsp");
			        		view4.forward(request, response);
		    			     
		    		}
		    		
		    	}
		    	else if(request.getParameter("query")=="delete"){
		    		String delete_table=request.getParameter("delete_table");
		    		
		    		if(delete_table==null){
		    			RequestDispatcher view1 = request.getRequestDispatcher("/master.jsp");
		        		view1.forward(request, response);
		    		}
		    		else
		    		{
		    		 query="delete from " + delete_table;
	    			   dao.getAllUsers(query);
	    			   
		    		}
		    		
		    	}
		    	else if(request.getParameter("query")=="alter"){
		    		
		    	}
		    	else if(request.getParameter("query")=="update"){
		    		
		    	}
		    	RequestDispatcher view = request.getRequestDispatcher("/displayresult.jsp");
		        view.forward(request, response);
		    	
		    }
		    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	doGet(request,response);
		    }
}