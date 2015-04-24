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

@WebServlet("/controller.ApplicantInfoController")
public class ApplicantInfoController extends HttpServlet 
{
		    private static final long serialVersionUID = 1L;
		    private UserDao dao;
		    public ApplicantInfoController() {
		        super();
		        dao = new UserDao();
		    }
		    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	ApplicantInfo user = new ApplicantInfo();
		    	ApplicantInfo.AddressInfo add = user.new AddressInfo();
		    	ApplicantInfo.SchoolInfo ten = user.new SchoolInfo();
		    	ApplicantInfo.SchoolInfo twelve = user.new SchoolInfo();
		    	ApplicantInfo.Eligibility eli = user.new Eligibility();
		    	
		    	HttpSession session = request.getSession();    		
		    	user.setId((int) session.getAttribute("id"));
		    	System.out.println((int) session.getAttribute("id"));
		        user.setFatherame(request.getParameter("fathername").toUpperCase());
		        user.setMotherame(request.getParameter("mothername").toUpperCase());
		        user.setAltemailid(request.getParameter("altemailid").toUpperCase());
		        user.setGender(request.getParameter("gender").toUpperCase().charAt(0));
		        user.setNationality(request.getParameter("nationality").toUpperCase());
		    
		        add.setId((int) session.getAttribute("id"));
		        add.setAddress(request.getParameter("address").toUpperCase());
		        add.setCity(request.getParameter("city").toUpperCase());
		        add.setPincode(Integer.parseInt(request.getParameter("pincode")));
		        add.setState(request.getParameter("state").toUpperCase());
			    
		        eli.setId((int) session.getAttribute("id"));
		        eli.setChemmarks(Integer.parseInt(request.getParameter("chemmarks")));
		        eli.setPhymarks(Integer.parseInt(request.getParameter("phymarks")));
		        eli.setMathsmarks(Integer.parseInt(request.getParameter("mathsmarks")));
		        eli.setTotalmarks();
		        eli.setJeerollno(request.getParameter("jeerollno"));
		        eli.setRank(Integer.parseInt(request.getParameter("rank")));
		        
		        ten.setId((int) session.getAttribute("id"));
		        ten.setBoard(request.getParameter("10board").toUpperCase());
		        ten.setCity(request.getParameter("10city").toUpperCase());
		        ten.setPincode(Integer.parseInt(request.getParameter("10pincode").toUpperCase()));
		        ten.setState(request.getParameter("10state").toUpperCase());
		        ten.setCountry(request.getParameter("10country").toUpperCase());
		        ten.setName(request.getParameter("10name").toUpperCase());
		        ten.setPercentage(Float.parseFloat(request.getParameter("10percentage")));
			    ten.setStd(10);
			    
			    twelve.setId((int) session.getAttribute("id"));
			    twelve.setBoard(request.getParameter("12board").toUpperCase());
		        twelve.setCity(request.getParameter("12city").toUpperCase());
		        twelve.setPincode(Integer.parseInt(request.getParameter("12pincode").toUpperCase()));
		        twelve.setState(request.getParameter("12state").toUpperCase());
		        twelve.setCountry(request.getParameter("12country").toUpperCase());
		        twelve.setName(request.getParameter("12name").toUpperCase());
		        twelve.setPercentage(Float.parseFloat(request.getParameter("12percentage")));
		        twelve.setStd(12);
			    
		        dao.addApplicantInfo(user,ten,twelve,eli,add);
		        RequestDispatcher view1 = request.getRequestDispatcher("/index2.jsp");
		        view1.forward(request, response);
		    }
		    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
		    {
		    	 doGet(request, response);
		    }
}