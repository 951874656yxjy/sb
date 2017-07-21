package org.fkit.ebuy.domain;

public class Comment {
	private int pid;
	private int id;
	private int user_id;
	private String username;
	private String service;
	private String logistics; //物流
	private String quality;
	private String comments;
	private String image1;
	//private String image2;
	
	 public Comment() {
			super();
			// TODO Auto-generated constructor stub
		}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getLogistics() {
		return logistics;
	}
	public void setLogistics(String logistics) {
		this.logistics = logistics;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ",pid=" + pid + ",,user_id=" + user_id + " username=" + username + ", service="+ service + ", logistics=" + logistics + ", quality= "+ quality +",comments=" + comments + ",image1=" + image1 + "]";
	}
//	public String getImage2() {
//		return image2;
//	}
//	public void setImage2(String image2) {
//		this.image2 = image2;
//	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
