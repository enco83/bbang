package com.bbang.dto;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String phone;
	private String email;
	private Date regdate;
	
	
	
	public MemberDTO() {
		super();
	}

	
	public MemberDTO(String id, String pw, String name, String birth, String phone, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
	}


	public MemberDTO(String id, String pw, String name, String birth, String phone, String email, Date regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", phone=" + phone
				+ ", email=" + email + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
	
	
	
}
