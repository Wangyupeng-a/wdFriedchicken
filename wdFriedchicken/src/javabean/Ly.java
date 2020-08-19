package javabean;

public class Ly {
	public int lyid;
	public Users  user;
	public Sp sp;
	public String lybiaoti;
	public String lyneirong;
	public String lytime;
	public int getLyid() {
		return lyid;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Sp getSp() {
		return sp;
	}
	public void setSp(Sp sp) {
		this.sp = sp;
	}
	public String getLybiaoti() {
		return lybiaoti;
	}
	public void setLybiaoti(String lybiaoti) {
		this.lybiaoti = lybiaoti;
	}
	public String getLyneirong() {
		return lyneirong;
	}
	public void setLyneirong(String lyneirong) {
		this.lyneirong = lyneirong;
	}
	public String getLytime() {
		return lytime;
	}
	public void setLytime(String lytime) {
		this.lytime = lytime;
	}
	public void setLyid(int lyid) {
		this.lyid = lyid;
	}
	@Override
	public String toString() {
		return "Ly [lyid=" + lyid + ", user=" + user + ", sp=" + sp
				+ ", lybiaoti=" + lybiaoti + ", lyneirong=" + lyneirong
				+ ", lytime=" + lytime + "]";
	}
	
	
}
