package javabean;

public class Sp {
	public int spid;
	public String spname;
	public String spimg;
	public String spjieshao;
	public String sptime;
	public int spjiage;
	public int spdianjinumber;
	public int spchengjiaonumber;
	public String spzhonglei;
	public int getSpid() {
		return spid;
	}
	public void setSpid(int spid) {
		this.spid = spid;
	}
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public String getSpimg() {
		return spimg;
	}
	public void setSpimg(String spimg) {
		this.spimg = spimg;
	}
	public String getSpjieshao() {
		return spjieshao;
	}
	public void setSpjieshao(String spjieshao) {
		this.spjieshao = spjieshao;
	}
	public String getSptime() {
		return sptime;
	}
	public void setSptime(String sptime) {
		this.sptime = sptime;
	}
	public int getSpjiage() {
		return spjiage;
	}
	public void setSpjiage(int spjiage) {
		this.spjiage = spjiage;
	}
	public int getSpdianjinumber() {
		return spdianjinumber;
	}
	public void setSpdianjinumber(int spdianjinumber) {
		this.spdianjinumber = spdianjinumber;
	}
	public int getSpchengjiaonumber() {
		return spchengjiaonumber;
	}
	public void setSpchengjiaonumber(int spchengjiaonumber) {
		this.spchengjiaonumber = spchengjiaonumber;
	}
	public String getSpzhonglei() {
		return spzhonglei;
	}
	public void setSpzhonglei(String spzhonglei) {
		this.spzhonglei = spzhonglei;
	}
	@Override
	public String toString() {
		return "Sp [spid=" + spid + ", spname=" + spname + ", spimg=" + spimg
				+ ", spjieshao=" + spjieshao + ", sptime=" + sptime
				+ ", spjiage=" + spjiage + ", spdianjinumber=" + spdianjinumber
				+ ", spchengjiaonumber=" + spchengjiaonumber + ", spzhonglei="
				+ spzhonglei + "]";
	}
}
