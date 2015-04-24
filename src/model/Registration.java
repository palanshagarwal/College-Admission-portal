package model;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Registration 
{
	protected int id;
	protected long contactno;
	protected String emailid;
	protected String name;
	protected String password;	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno =  Long.parseLong(contactno);
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String name) {
		this.emailid = name;
	}
	public String getPassword() {
		return password; 
	}
	public void setPassword(String password) 
	{
		this.password =password;
		/*try
		{
		this.password =encrypt(password);
		System.out.print(password);
		}
		catch(NoSuchAlgorithmException e)
		{System.out.println("42 reg");}
	*/
	}
	public int getId() {
		return id;
	}
	
	public void setId(int id) throws Exception
	{
		this.id=id;
	}
	public String encrypt(String message ) throws NoSuchAlgorithmException {
        MessageDigest md;
        try {
            md= MessageDigest.getInstance("SHA-512");
 
            md.update(message.getBytes());
            byte[] mb = md.digest();
            String out = "";
            for (int i = 0; i < mb.length; i++) {
                byte temp = mb[i];
                String s = Integer.toHexString(new Byte(temp));
                while (s.length() < 2) {
                    s = "0" + s;
                }
                s = s.substring(s.length() - 2);
                out += s;
            }
            //System.out.println(out.length());
            //System.out.println("CRYPTO: " + out);
            return out;
 
        } catch (NoSuchAlgorithmException e) { System.out.println("74 reg");}
        return(null);
    }

    @Override
    public String toString() {
        return "registration  (id=" + id + ", name=" + name + ", password=" + password + ", emailid=" + emailid + ", contactno =" + contactno +")";
    }
	public void setContactno(long long1) {
		this.contactno=long1;
	}    
}
