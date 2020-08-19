package dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javabean.Ly;
import javabean.Sp;
import javabean.Users;

public class Lydao extends Basedao {

	// 根据商品id显示留言
	public List<Ly> queryspidly(int id) {
		List<Ly> listly = new ArrayList<Ly>();
		super.getconn();
		try {
			pst = conn
					.prepareStatement("SELECT users.username,ly.lybiaoti,ly.lyneirong,ly.lytime,ly.lyid "
			+"FROM ly JOIN  users  on  ly.lyuserid = users.userid "
							+" WHERE ly.lyspid = ?");
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while(rs.next()){
				Ly ly = new Ly();
				Users users = new Users();
				
				users.setUsername(rs.getString("username"));
				
				ly.setLybiaoti(rs.getString("lybiaoti"));
				ly.setLyneirong(rs.getString("lyneirong"));
				ly.setLytime(rs.getString("lytime"));
				ly.setLyid(rs.getInt("lyid"));
				ly.setUser(users);
				
				listly.add(ly);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return listly;
	}
	//发表评论
	public int addly(Ly ly){
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("insert into ly VALUES(null,?,?,?,?,?)");
			pst.setInt(1, ly.getUser().getUserid());
			pst.setInt(2, ly.getSp().getSpid());
			pst.setString(3, ly.getLyneirong());
			pst.setString(4, ly.getLyneirong());
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
	//查看所有留言
	public List<Ly> allly(){
		List<Ly> list = new ArrayList<Ly>();
		super.getconn();
		try {
			pst = conn.prepareStatement("select * from ly "
					+ "join users on ly.lyuserid = users.userid "
					+ "join sp on ly.lyspid = sp.spid "
					+ "ORDER BY lytime DESC ");
			rs = pst.executeQuery();
			while (rs.next()){
				Ly ly = new Ly();
				Sp sp = new Sp();
				Users users = new Users();
				users.setUsername(rs.getString("username"));
				sp.setSpname(rs.getString("spname"));
				sp.setSpimg(rs.getString("spimg"));
				sp.setSpzhonglei(rs.getString("spzhonglei"));
				ly.setLytime(rs.getString("lytime"));
				ly.setLyneirong(rs.getString("lyneirong"));
				ly.setLyid(rs.getInt("lyid"));
				ly.setSp(sp);
				ly.setUser(users);
				list.add(ly);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return list;
	}
	//根据留言id删除留言
	public int delly(int id){
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("delete from ly where lyid = ?");
			pst.setInt(1, id);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
}
