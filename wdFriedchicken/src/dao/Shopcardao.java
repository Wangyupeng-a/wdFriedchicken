package dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javabean.Shopcar;
import javabean.Sp;
import javabean.Users;

public class Shopcardao extends Basedao {

	// �����û�id��ʾ���ﳵcarok=0 ���߹����嵥  carok=1
	public List<Shopcar> queryidShopcar(int userid , int carok) {
		List<Shopcar> listshopcar = new ArrayList<Shopcar>();
		super.getconn();
		try {
			pst = conn
					.prepareStatement("SELECT sp.spid,sp.spname,sp.spimg,sp.spjieshao,sp.spjiage,shopcar.carspnumber,shopcar.carid,shopcar.cartime "
							+ "FROM shopcar "
							+ "JOIN  sp  on  shopcar.carspid= sp.spid "
							+ "JOIN  users  on  shopcar.caruserid= users.userid "
							+ "WHERE userid = ? and carok = ?");
			pst.setInt(1, userid);
			pst.setInt(2, carok);
			rs = pst.executeQuery();
			while (rs.next()) {
				Shopcar shopcar = new Shopcar();
				Sp sp = new Sp();

				sp.setSpid(rs.getInt("spid"));
				sp.setSpname(rs.getString("spname"));
				sp.setSpimg(rs.getString("spimg"));
				sp.setSpjieshao(rs.getString("spjieshao"));
				sp.setSpjiage(rs.getInt("spjiage"));
				shopcar.setCartime(rs.getString("cartime"));
				shopcar.setCarid(rs.getInt("carid"));
				shopcar.setCarspnumber(rs.getInt("carspnumber"));

				shopcar.setSp(sp);

				listshopcar.add(shopcar);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return listshopcar;
	}

	// ��ӹ��ﳵ
	public int addshopcar(Shopcar shopcar) {
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("insert into shopcar VALUES(null,?,?,?,0,?)");
			pst.setInt(1, shopcar.getUser().getUserid());
			pst.setInt(2, shopcar.getSp().getSpid());
			pst.setInt(3, shopcar.getCarspnumber());
			Date now = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String shijian = dateFormat.format(now);
			pst.setString(4, shijian);
			n =pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	//����idɾ�����ﳵ
	public int delshopcar(int shopcarid) {
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("DELETE from shopcar where shopcar.carid=?");
			pst.setInt(1, shopcarid);
			n =pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	//�����û�idȷ��������Ϣ  �޸�carokΪ1 �޸ĳɽ�ʱ��
	public int updatecarok(int userid){
		int n =0 ;
		super.getconn();
		try {
			pst = conn.prepareStatement("UPDATE shopcar set carok=1,cartime=?"
					+ "where caruserid = ?");
			Date now = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String shijian = dateFormat.format(now);
			pst.setString(1, shijian);
			pst.setInt(2, userid);
			n =pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	//����Ա�鿴�ɽ���¼ ��ѯ����carok=1 ���Ұ���ʱ������
	public List<Shopcar> queryallShopcar() {
		List<Shopcar> listshopcar = new ArrayList<Shopcar>();
		super.getconn();
		try {
			pst = conn
					.prepareStatement("SELECT * FROm shopcar "
							+"join sp  on shopcar.carspid=sp.spid "
							+"join users  on shopcar.caruserid=users.userid "
							+"WHERE carok = 1 "
							+"ORDER BY cartime DESC ");
			rs = pst.executeQuery();
			while (rs.next()) {
				Shopcar shopcar = new Shopcar();
				Sp sp = new Sp();
				Users user = new Users();
				user.setUsername(rs.getString("username"));
				sp.setSpid(rs.getInt("spid"));
				sp.setSpname(rs.getString("spname"));
				sp.setSpimg(rs.getString("spimg"));
				sp.setSpjieshao(rs.getString("spjieshao"));
				sp.setSpjiage(rs.getInt("spjiage"));
				shopcar.setCartime(rs.getString("cartime"));
				shopcar.setCarid(rs.getInt("carid"));
				shopcar.setCarspnumber(rs.getInt("carspnumber"));
				shopcar.setUser(user);
				shopcar.setSp(sp);

				listshopcar.add(shopcar);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return listshopcar;
	}
	//�޸Ĺ��ﳵ����
	public int updatenumber(int carid ,int carspnumber){
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("UPDATE shopcar set carspnumber=? "
					+ "where carid = ?");
			pst.setInt(1, carspnumber);
			pst.setInt(2, carid);
			n =pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	//�����û�id��ѯ�û����ﳵ��Ʒ��
	public int querynumber(int carid){
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("SELECT * FROm shopcar where carid = ?");
			pst.setInt(1, carid);
			rs = pst.executeQuery();
			while(rs.next()){
				n = rs.getInt("carspnumber");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
}
