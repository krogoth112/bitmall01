package com.bit2015.bitvga.vo;



public class UserVo {
	
	private Long no;
	private String email;
	private String password;
	private String name;
	private String ph;
	private String zipcode;
	private String address;
	private String status; // 'a' = avilable, 'd' =dormancy
	private String type; // 'y'= admin

	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "UserVo [no=" + no + ", email=" + email + ", password="
				+ password + ", name=" + name + ", ph=" + ph + ", zipcode="
				+ zipcode + ", address=" + address + ", status=" + status
				+ ", type=" + type + "]";
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



}
