package javabean;

public class Users {
	public int userid;
	public String username;
	public String userpwd;
	public String usersex;
	public int userage;
	public String usertel;
	public int userqx;
	public int userjf;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}

	public int getUserage() {
		return userage;
	}
	public void setUserage(int userage) {
		this.userage = userage;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public int getUserqx() {
		return userqx;
	}
	public void setUserqx(int userqx) {
		this.userqx = userqx;
	}
	public int getUserjf() {
		return userjf;
	}
	public void setUserjf(int userjf) {
		this.userjf = userjf;
	}
	@Override
	public String toString() {
		return "Users [userid=" + userid + ", username=" + username
				+ ", userpwd=" + userpwd + ", usersex=" + usersex + ", userage="
				+ userage + ", usertel=" + usertel + ", userqx=" + userqx
				+ ", userjf=" + userjf + "]";
	}
	
}
