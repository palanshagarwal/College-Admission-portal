package model;

public class ApplicantInfo 
{
	protected String fathername;
	protected String mothername;
	protected String altemailid;
	protected String nationality;
	protected char gender;	
	protected int id;
	
	public String getFathername() {
		return fathername;
	}
	public void setFatherame(String name) {
		this.fathername = name;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMotherame(String name) {
		this.mothername = name;
	}
	public String getAltemailid() {
		return altemailid;
	}
	public void setAltemailid(String name) {
		this.altemailid = name;
	}
	public String getNationality() {
		return nationality; 
	}
	public void setNationality(String nationality) 
	{
		this.nationality = nationality;
	}
	public char getGender() {
		return gender; 
	}
	public void setGender(char gender) 
	{
		this.gender = gender;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id)
	{
		this.id=id;
	}
	
	public class SchoolInfo
	{
		private int std;
		private String board;
		private String name;
		private String country;
		private float percentage;
		private String city;
		private String state;
		private int pincode;
		
		public String getCity() {
			return city;
		}
		
		public void setCity(String sboard) {
			this.city = sboard;
		}
		
		public String getState() {
			return state;
		}
		public void setStd(int sboard) {
			this.std = sboard;
		}
		public int getStd() {
			return std;
		}		
		public void setPincode(int sboard) {
			this.pincode = sboard;
		}
		public int getPincode() {
			return pincode;
		}
		
		public void setState(String sboard) {
			this.state = sboard;
		}
		public String getBoard() {
			return board;
		}
		
		public void setBoard(String sboard) {
			this.board = sboard;
		}
		public void setPercentage(float p) {
			this.percentage = p;
		}
		public String getName() {
			return name;
		}
		public float getPercentage() {
			return percentage;
		}
		public void setName(String sname) {
			this.name = sname;
		}
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}

		public void setId(int attribute) {
			id=attribute;
		}
		public int getId() {
			return id;
		}
}
	public class AddressInfo
	{
		private String address;
		private String city;
		private String state;
		private int pincode;
		
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public int getPincode() {
			return pincode;
		}
		public void setPincode(int pincode) {
			this.pincode = pincode;
		}
		public void setId(int attribute) {
			id=attribute;
		}
		public int getId() {
			return id;
		}


	}
	public class Eligibility
	{
		private String jeerollno;
		private float phymarks;	
		private float chemmarks;
		private float mathsmarks;
		private float totalmarks;
		private int rank;
	
		public String getJeerollno() {
			return jeerollno;
		}
		public void setJeerollno(String jeeroll) {
			this.jeerollno = jeeroll;
		}
		public int getRank() {
			return rank;
		}
		public void setRank(int rank) {
			this.rank = rank;
		}
		public float getPhymarks() {
			return phymarks;
		}
		public void setPhymarks(float phymarks) {
			this.phymarks = phymarks;
		}
		public float getChemmarks() {
			return chemmarks;
		}
		public void setChemmarks(float chemmarks) {
			this.chemmarks = chemmarks;
		}
		public float getMathsmarks() {
			return mathsmarks;
		}
		public void setMathsmarks(float mathsmarks) {
			this.mathsmarks = mathsmarks;
		}
		public float getTotalmarks() {
			return totalmarks;
		}
		public int getId() {
			return id;
		}
		public void setTotalmarks()
		{
			this.totalmarks = (phymarks+chemmarks+mathsmarks);// calculate in its set method
		}
		public void setId(int int1) {
			id=int1; 
			
		}
		public void setTotalmarks(float float1) {
			this.totalmarks=float1;
			
		}
	}
	    @Override
    public String toString() {
        return "ApplicantInfo  (id=" + id + ", fathername=" + fathername + ", mothername=" + mothername + ", altemailid=" + altemailid + ", natonality =" + nationality +", gender =" + gender +")";
    }

}