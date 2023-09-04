package join.model;

import java.sql.Date;

public class memberVO {
	
	private String name;
	private String id;
	private	String Password;
	private	String email;
	private	String phone1;
	private	String gender;
	private	String cal;
	private String tag;
	
	public memberVO () {
		
	}
	
	public memberVO (String name, String id, String passwd, String e_mail, String phone, String gender, String birth, String tag) {
		
		this.name = name;
		this.id = id;
		this.Password = Password;
		this.email = email;
		this.phone1 = phone1;
		this.gender = gender;
		this.cal = cal;
		this.tag = tag;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCal() {
		return cal;
	}

	public void setCal(String cal) {
		this.cal = cal;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}


}
