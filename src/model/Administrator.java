package model;

	public class Administrator {
		protected int eid;
		protected char access;
		protected String name;
		protected String post;
		protected String department;
		protected String password;
		public int getEid() {
			return eid;
		}
		public void setEid(int eid) {
			this.eid = eid;
		}
		public char getAccess() {
			return access;
		}
		public void setAccess(char access) {
			this.access = access;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return name;
		}
		public void setPassword(String name) {
			this.password = name;
		}
		public String getPost() {
			return post;
		}
		public void setPost(String post) {
			this.post = post;
		}
		public String getDepartment() {
			return department;
		}
		public void setDepartment(String department) {
			this.department = department;
		}
		
		   
	    @Override
	    public String toString() {
	        return "Administrator  (eid=" + eid + ", access=" + access + ", name=" + name + ", post=" + post + ", department =" + department +", password =" + password +")";
	    }

	}