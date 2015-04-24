package util;

import model.*;
import model.ApplicantInfo.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.*;

import com.ibm.db2.jcc.am.SqlDataException;

import model.Registration;

public class UserDao {

    public Connection connection;
    public static Connection con=null;
    public UserDao() 
    {
        connection = getConnection();
        if(connection==null)
        	System.out.println("connection error");
    }
    public static Connection getConnection() 
    {
        if (con != null)
        { System.out.println("CONNECTION ALREADY SET"); return con; }
        else {
            try {
            	 Class.forName("com.ibm.db2.jcc.DB2Driver");
                 con = DriverManager.getConnection("jdbc:db2://localhost:50000/portal","Anshi","mittal");
                if(con==null)
                	System.out.println("not connected");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }         
            return con;
        }
    }
    public void addRegisration(Registration user) throws SqlDataException,SQLException
    {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into anshi.registration (id,name,contactno,emailid,password) values ( ? , ? , ? , ? ,? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            // Parameters start with 1
            preparedStatement.setInt(1,user.getId());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setLong(3, user.getContactno());
            preparedStatement.setString(4, user.getEmailid());
            preparedStatement.setString(5, user.getPassword());
            preparedStatement.executeUpdate();

        } catch (SqlDataException e) {
        	System.out.println("34 dao");
            e.printStackTrace();
        }
        catch (SQLException e) {
        	System.out.println("34 dao");
            e.printStackTrace();
        }
    }

    public ResultSet exquery(String query)
    {
    	ResultSet res = null;
		try
    	{
    	 Statement ps1 = connection.createStatement();
    	 res =ps1.executeQuery(query);
    	}
    	catch(SQLException e ){
    		e.printStackTrace(); return null;
    	}
    	catch(Exception e){
    		e.printStackTrace(); return null;
    	}
		return res;
    }
    public ResultSet exupdate(String query)
    {
    	ResultSet res = null;
		try
    	{
    	 Statement ps1 = connection.createStatement();
    	 Statement ps2 = connection.createStatement();
    	 ps1.executeUpdate(query);
    	 res = ps2.executeQuery("select * from eligiibility");
    	}
    	catch(SQLException e ){
    		e.printStackTrace(); return null;
    	}
    	catch(Exception e){
    		e.printStackTrace(); return null;
    	}
		return res;
    }
    public void addApplicantInfo(ApplicantInfo user,ApplicantInfo.SchoolInfo ten , SchoolInfo twelve , ApplicantInfo.Eligibility eli , ApplicantInfo.AddressInfo add ) {
        try {
            PreparedStatement ps1 = connection.prepareStatement("insert into anshi.applicantinfo (id,fathername,mothername,altemailid,gender,nationality) values ( ? , ? , ? , ? ,? ,? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            PreparedStatement ps2 = connection.prepareStatement("insert into anshi.addressinfo (id,address,city,pincode,state) values ( ? , ? , ? , ? ,? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            PreparedStatement ps3 = connection.prepareStatement("insert into anshi.eligibility (id,chemmarks,phymarks,mathsmarks,totalmarks,jeerollno,rank) values ( ? , ? , ? , ? , ? , ? , ? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            PreparedStatement ps4 = connection.prepareStatement("insert into anshi.schoolinfo (id,board,city,country,name,percentage,pincode,state,std) values ( ? , ? , ? , ? ,? , ? , ? , ? ,? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            PreparedStatement ps5 = connection.prepareStatement("insert into anshi.schoolinfo (id,board,city,country,name,percentage,pincode,state,std) values ( ? , ? , ? , ? ,? , ? , ? , ? ,? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            // Parameters start with 1
            ps1.setInt(1,user.getId());
            ps1.setString(2, user.getFathername().toUpperCase());
            ps1.setString(3, user.getMothername().toUpperCase());
            ps1.setString(4, user.getAltemailid().toUpperCase());
            ps1.setString(5, Character.toString(user.getGender()));
            ps1.setString(6, user.getNationality().toUpperCase());
            
            ps2.setInt(1,user.getId());
            ps2.setString(2, add.getAddress().toUpperCase());
            ps2.setString(3, add.getCity().toUpperCase());
            ps2.setInt(4, add.getPincode());
            ps2.setString(5, add.getState().toUpperCase());
            //(id,chemmarks,phymarks,mathsmarks,totalmarks,jeerollno,rank)

            ps3.setInt(1,user.getId());
            ps3.setFloat(2, eli.getChemmarks());
            ps3.setFloat(3, eli.getPhymarks());
            ps3.setFloat(4, eli.getMathsmarks());
            ps3.setFloat(5, eli.getTotalmarks());
            ps3.setString(6, eli.getJeerollno());
            ps3.setInt(7, eli.getRank());
      //(id,board,city,country,name,percentage,pincode,state,std) values ( ? , ? , ? , ? ,? , ? , ? , ? ,? )"
            ps4.setInt(1, user.getId());
            ps4.setString(2, ten.getBoard().toUpperCase());
            ps4.setString(3, ten.getCity().toUpperCase());
            ps4.setString(4, ten.getCountry().toUpperCase());
            ps4.setString(5, ten.getName().toUpperCase());
            ps4.setFloat(6, ten.getPercentage());
            ps4.setInt(7, ten.getPincode());
            ps4.setString(8, ten.getState().toUpperCase());
            ps4.setInt(9, ten.getStd());
         
            ps5.setInt(1, user.getId());
            ps5.setString(2, twelve.getBoard().toUpperCase());
            ps5.setString(3, twelve.getCity().toUpperCase());
            ps5.setString(4, twelve.getCountry().toUpperCase());
            ps5.setString(5, twelve.getName().toUpperCase());
            ps5.setFloat(6, twelve.getPercentage());
            ps5.setInt(7, twelve.getPincode());
            ps5.setString(8, twelve.getState().toUpperCase());
            ps5.setInt(9, twelve.getStd());
            
            ps1.executeUpdate();
            ps2.executeUpdate();
            ps3.executeUpdate();
            ps4.executeUpdate();
            ps5.executeUpdate();
        } catch (SQLException e) {
        	System.out.println("34 dao");
            e.printStackTrace();
        }
    }
    public boolean loginapplicant(int checkid , String checkpassword)
    {
    	try
    	{
    		System.out.println("inside login applicant");	
    	PreparedStatement preparedStatement = connection.prepareStatement("select id , password from registration where id= ? and password=? ", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    	System.out.println("ps executed");
    	preparedStatement.setInt(1,checkid);
        preparedStatement.setString(2, checkpassword);
        ResultSet rs = preparedStatement.executeQuery();
        System.out.println("rs stored");
        if(!rs.next())
        	 return(false);
         else
        	 return(true);
    	}
    	catch(Exception e)
    	{ e.printStackTrace();}
    	return(false);
    }
    public boolean loginadministrator(int checkid , String checkpassword)
    {
    	try
    	{	
    	PreparedStatement preparedStatement = connection.prepareStatement("select eid , password from administrator where eid= ? and password=? ", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    	System.out.println("ps executed");
    	preparedStatement.setInt(1,checkid);
        preparedStatement.setString(2, checkpassword);
        ResultSet rs = preparedStatement.executeQuery();
        System.out.println("rs stored");
        if(!rs.next())
        	 return(false);
         else
        	 return(true);
    	}
    	catch(Exception e)
    	{ e.printStackTrace();}
    	return(false);
    }
    public int getMaxId() 
    {
    	try{
    		 Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    		 ResultSet rs = statement.executeQuery("select max(id) from registration");
    		 if(rs.next())
    		 {
    			return(rs.getInt(1)) ;
    		 }
    	}
    	catch (Exception e) {
    		System.out.println("49 dao");
        e.printStackTrace(); }
    	return 0 ;
    } 
    public void deleteUser(int userId) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from users where userid=?");
            // Parameters start with 1
            preparedStatement.setInt(1, userId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
        	System.out.println("62 dao");
            e.printStackTrace();
        }
    }
    public HashSet<ApplicantInfo.Eligibility> CreateHashSetFromQuery(ResultSet rs) {
        HashSet<ApplicantInfo.Eligibility> users = new HashSet<ApplicantInfo.Eligibility>();
        try {
            while (rs.next()) {
            	ApplicantInfo x = new ApplicantInfo();
            	ApplicantInfo.Eligibility user = x.new Eligibility();
                user.setId(rs.getInt("id"));
                user.setPhymarks(rs.getFloat("phymarks"));
                user.setChemmarks(rs.getFloat("chemmarks"));
                user.setMathsmarks(rs.getFloat("mathsmarks"));
                user.setTotalmarks(rs.getFloat("totalmarks"));
                user.setRank(rs.getInt("rank"));
                user.setJeerollno(rs.getString("jeerollno"));
                users.add(user);
            }
        } catch (Exception e) {
        	System.out.println("81 dao");
            e.printStackTrace();
        }
        return users;
    }
    
    public TreeSet<ApplicantInfo.Eligibility> CounsellingMerit(ResultSet rs) {
        TreeSet<ApplicantInfo.Eligibility> users = new TreeSet<ApplicantInfo.Eligibility>();
        try {
            while (rs.next()) {
            	ApplicantInfo x = new ApplicantInfo();
            	ApplicantInfo.Eligibility user = x.new Eligibility();
                user.setId(rs.getInt("id"));
                user.setPhymarks(rs.getFloat("phymarks"));
                user.setChemmarks(rs.getFloat("chemmarks"));
                user.setMathsmarks(rs.getFloat("mathsmarks"));
                user.setTotalmarks(rs.getFloat("totalmarks"));
                user.setRank(rs.getInt("rank"));
                user.setJeerollno(rs.getString("jeerollno"));
                users.add(user);
            }
        } catch (Exception e) {
        	System.out.println("81 dao");
            e.printStackTrace();
        }
        return users;
    }
    public Registration getUserById(int userId) {
    	Registration user = new Registration();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from users where userid=?");
            preparedStatement.setInt(1, userId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setContactno(rs.getLong("contactno"));
                user.setEmailid(rs.getString("emailid"));
                user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
        	System.out.println("104 dao");
            e.printStackTrace();
        }
        return(user);
    }
    public Administrator retrieveadmininfo(int eid) {
    	Administrator user = new Administrator();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from administrator where eid=?");
            preparedStatement.setInt(1, eid);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                user.setEid(rs.getInt("eid"));
                user.setName(rs.getString("name"));
                user.setPost(rs.getString("post"));
                user.setDepartment(rs.getString("department"));
                user.setAccess(rs.getString("access").charAt(0));
                user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
        	System.out.println("104 dao");
            e.printStackTrace();
        }
        return(user);
    }
	public Collection<ApplicantInfo.Eligibility> rankviewerquery(String parameter,String parameter2) 
	{
		Collection<ApplicantInfo.Eligibility> users = new HashSet<ApplicantInfo.Eligibility>();
		try{
		PreparedStatement ps = connection.prepareStatement("SELect * from eligibility where rank between ? and ?");
		ps.setInt(1, Integer.parseInt(parameter));
		ps.setInt(2, Integer.parseInt(parameter2));
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
        	ApplicantInfo x = new ApplicantInfo();
        	ApplicantInfo.Eligibility user = x.new Eligibility();
            user.setId(rs.getInt("id"));
            user.setPhymarks(rs.getFloat("phymarks"));
            user.setChemmarks(rs.getFloat("chemmarks"));
            user.setMathsmarks(rs.getFloat("mathsmarks"));
            user.setTotalmarks(rs.getFloat("totalmarks"));
            user.setRank(rs.getInt("rank"));
            user.setJeerollno(rs.getString("jeerollno"));
            users.add(user);
        }
		}catch(Exception e){
			e.printStackTrace(); return null; 
		}
		return users;
	}
	public Collection<ApplicantInfo.Eligibility> marksviewerquery(String parameter,String parameter2) 
	{
		Collection<ApplicantInfo.Eligibility> users = new HashSet<ApplicantInfo.Eligibility>();
		try{
			PreparedStatement ps = connection.prepareStatement("SELect * from eligibility where totalmarks between ? and ?");
			ps.setInt(1, Integer.parseInt(parameter));
			ps.setInt(2, Integer.parseInt(parameter2));
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
	        	ApplicantInfo x = new ApplicantInfo();
	        	ApplicantInfo.Eligibility user = x.new Eligibility();
	            user.setId(rs.getInt("id"));
	            user.setPhymarks(rs.getFloat("phymarks"));
	            user.setChemmarks(rs.getFloat("chemmarks"));
	            user.setMathsmarks(rs.getFloat("mathsmarks"));
	            user.setTotalmarks(rs.getFloat("totalmarks"));
	            user.setRank(rs.getInt("rank"));
	            user.setJeerollno(rs.getString("jeerollno"));
	            users.add(user);
	        }
			}catch(Exception e){
				e.printStackTrace(); return null;
			}	
		return users;
	}
	public void counsellingInfo(Counselling user) throws SQLIntegrityConstraintViolationException {
		try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into anshi.counselling (id,pref1,pref2,pref3,pref4,pref1alloted,pref2alloted,pref3alloted,pref4alloted) values ( ? , ? , ? , ? , ? , ?, ? , ?, ? )", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            // Parameters start with 1
            preparedStatement.setInt(1,user.getId());
            preparedStatement.setString(2, user.getPref1());
            preparedStatement.setString(3, user.getPref2());
            preparedStatement.setString(4, user.getPref3());
            preparedStatement.setString(5, user.getPref4());
            preparedStatement.setString(6, Character.toString(user.getPref1allotted()));
            preparedStatement.setString(7, Character.toString(user.getPref2allotted()));
            preparedStatement.setString(8, Character.toString(user.getPref3allotted()));
            preparedStatement.setString(9, Character.toString(user.getPref4allotted()));
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
        	System.out.println("34 dao");
            e.printStackTrace();
        }
		
	}
	public int next_result(int flag)
	{
		return ++flag;
	}
	public int prev_result(int flag)
	{
		return --flag;
	}
	
	 public List<Object> getAllUsers(String query ) {
	        List<Object> users = new ArrayList<Object>();
	        try {
	            Statement statement = connection.createStatement();
	            ResultSet rs = statement.executeQuery("query");
	            int flag=0;
	            
	            while (rs.next()) {
	            	if(flag==0){
	            		users.add(rs.first());
	            		flag=1;
	            	}
	            	else{
	            		users.add(rs.next());
	            	}
	               
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return users;
	    }

	

}