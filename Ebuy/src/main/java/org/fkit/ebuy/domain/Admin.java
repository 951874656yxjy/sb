package org.fkit.ebuy.domain;

public class Admin {

	 private int id;
	 private String adminname;
	 private String adminpassword;
	 private String adminrealname;
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	public String getAdminrealname() {
		return adminrealname;
	}
	public void setAdminrealname(String adminrealname) {
		this.adminrealname = adminrealname;
	}
	 
	@Override
	public String toString() {
		return "Admin [id="+ id + " adminname=" + adminname + ", adminpassword="
				+ adminpassword + ", adminrealname=" + adminrealname + "]";
	}

}
