package dao;

import java.util.List;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javabean.Adminly;
import javabean.Users;

public class Adminlydao extends Basedao{
	//用户给管理员留言
	public int usertoadminly(Adminly adminly){
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("insert into adminly VALUES(null,?,?,?,?,?)");
			pst.setInt(1, adminly.getUser().getUserid());
			pst.setString(2, adminly.getAdminlytel());
			pst.setString(3, adminly.getAdminlyemail());
			pst.setString(4, adminly.getAdminlyneirong());
			Date now = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String shijian = dateFormat.format(now);
			pst.setString(5, shijian);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	//管理员查看留言
	public List<Adminly> alltoadminly(){
		List<Adminly> list = new ArrayList<Adminly>();
		super.getconn();
		try {
			pst = conn.prepareStatement("select * from adminly "
					+ "join users on adminly.adminuserid = users.userid "
					+ "ORDER BY adminlytime DESC ");
			rs = pst.executeQuery();
			while(rs.next()){
				Users user = new Users();
				Adminly adminly = new Adminly();
				
				user.setUsername(rs.getString("username"));
				adminly.setUser(user);
				adminly.setAdminlytel(rs.getString("adminlytel"));
				adminly.setAdminlyemail(rs.getString("adminlyemail"));
				adminly.setAdminlyneirong(rs.getString("adminlyneirong"));
				adminly.setAdminlytime(rs.getString("adminlytime"));
				adminly.setAdminlyid(rs.getInt("adminlyid"));
				list.add(adminly);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return list;
	}
	//删除给管理员的留言
	public int deladminly (int adminlyid){
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("delete from adminly where adminlyid = ?");
			pst.setInt(1, adminlyid);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
}
