package dto;

public class UserVo {
	private String userid; //id pk
	private String passwd; 
	private String mname;	
	private String tel;		
	private String email;   // tel and email은 비밀번호 찾기용
	
	public UserVo() {
	}
	public UserVo(String userid, String passwd, String mname, String tel, String email) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.mname = mname;
		this.tel = tel;
		this.email = email;
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserVo [userid=");
		builder.append(userid);
		builder.append(", passwd=");
		builder.append(passwd);
		builder.append(", mname=");
		builder.append(mname);
		builder.append(", tel=");
		builder.append(tel);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
	
}
