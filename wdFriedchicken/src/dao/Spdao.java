package dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;

import javabean.Sp;

public class Spdao extends Basedao {

	// ��ʾ���е���Ʒ
	public List<Sp> queryallSp() {
		List<Sp> list = new ArrayList<Sp>();
		super.getconn();
		try {
			pst = conn.prepareStatement("select * from sp ");
			rs = pst.executeQuery();
			while (rs.next()) {
				Sp sp = new Sp();
				sp.setSpid(rs.getInt("spid"));
				sp.setSpname(rs.getString("spname"));
				sp.setSpimg(rs.getString("spimg"));
				sp.setSpjieshao(rs.getString("spjieshao"));
				sp.setSptime(rs.getString("sptime"));
				sp.setSpjiage(rs.getInt("spjiage"));
				sp.setSpdianjinumber(rs.getInt("spdianjinumber"));
				sp.setSpchengjiaonumber(rs.getInt("spchengjiaonumber"));
				sp.setSpzhonglei(rs.getString("spzhonglei"));
				list.add(sp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return list;
	}

	// ����id����Ʒ
	public Sp queryidSp(int id) {
		Sp sp = new Sp();
		super.getconn();
		try {
			pst = conn.prepareStatement("select * from sp where spid = ?");
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				sp.setSpid(rs.getInt("spid"));
				sp.setSpname(rs.getString("spname"));
				sp.setSpimg(rs.getString("spimg"));
				sp.setSpjieshao(rs.getString("spjieshao"));
				sp.setSptime(rs.getString("sptime"));
				sp.setSpjiage(rs.getInt("spjiage"));
				sp.setSpdianjinumber(rs.getInt("spdianjinumber"));
				sp.setSpchengjiaonumber(rs.getInt("spchengjiaonumber"));
				sp.setSpzhonglei(rs.getString("spzhonglei"));

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return sp;
	}

	// �������Ͳ���Ʒ
	public List<Sp> queryzhongleiSp(String spzhonglei) {
		List<Sp> list = new ArrayList<Sp>();
		super.getconn();
		try {
			pst = conn
					.prepareStatement("select * from sp where spzhonglei = ?");
			pst.setString(1, spzhonglei);
			rs = pst.executeQuery();
			while (rs.next()) {
				Sp sp = new Sp();
				sp.setSpid(rs.getInt("spid"));
				sp.setSpname(rs.getString("spname"));
				sp.setSpimg(rs.getString("spimg"));
				sp.setSpjieshao(rs.getString("spjieshao"));
				sp.setSptime(rs.getString("sptime"));
				sp.setSpjiage(rs.getInt("spjiage"));
				sp.setSpdianjinumber(rs.getInt("spdianjinumber"));
				sp.setSpchengjiaonumber(rs.getInt("spchengjiaonumber"));
				sp.setSpzhonglei(rs.getString("spzhonglei"));
				list.add(sp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return list;
	}
	// ������Ʒ��ģ����ѯ
		public List<Sp> querymohuSp(String spname) {
			List<Sp> list = new ArrayList<Sp>();
			super.getconn();
			try {
				pst = conn
						.prepareStatement("select * from sp where spname like ?");
				pst.setString(1, "%"+spname+"%");
				rs = pst.executeQuery();
				while (rs.next()) {
					Sp sp = new Sp();
					sp.setSpid(rs.getInt("spid"));
					sp.setSpname(rs.getString("spname"));
					sp.setSpimg(rs.getString("spimg"));
					sp.setSpjieshao(rs.getString("spjieshao"));
					sp.setSptime(rs.getString("sptime"));
					sp.setSpjiage(rs.getInt("spjiage"));
					sp.setSpdianjinumber(rs.getInt("spdianjinumber"));
					sp.setSpchengjiaonumber(rs.getInt("spchengjiaonumber"));
					sp.setSpzhonglei(rs.getString("spzhonglei"));
					list.add(sp);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			super.closeAll();
			return list;
		}
	// �����Ʒ
	public int addsp(Sp sp) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("insert into sp VALUES(null,?,?,?,?,?,0,0,?)");
			pst.setString(1, sp.getSpname());
			pst.setString(2, sp.getSpimg());
			pst.setString(3, sp.getSpjieshao());
			Date now = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String shijian = dateFormat.format(now);
			pst.setString(4, shijian);
			pst.setInt(5, sp.getSpjiage());
			pst.setString(6, sp.getSpzhonglei());
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// �޸���Ʒ��Ϣ
	public int updatesp(Sp sp) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("UPDATE sp SET spname = ?,spimg = ?,spjieshao=?,sptime=?,spjiage=?,spzhonglei=? "
							+ "WHERE spid = ?");
			pst.setString(1, sp.getSpname());
			pst.setString(2, sp.getSpimg());
			pst.setString(3, sp.getSpjieshao());
			Date now = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String shijian = dateFormat.format(now);
			pst.setString(4, shijian);
			pst.setInt(5, sp.getSpjiage());
			pst.setString(6, sp.getSpzhonglei());
			pst.setInt(7, sp.getSpid());
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// ��Ʒ�����
	public int updatespdianjinumber(int spid, int number) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("UPDATE sp SET spdianjinumber=? where spid =?");
			pst.setInt(1, number);
			pst.setInt(2, spid);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// ��Ʒ�ɽ���
	public int updatespchengjiaonumber(int spid, int number) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("UPDATE sp SET spchengjiaonumber=? where spid =?");
			pst.setInt(1, number);
			pst.setInt(2, spid);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// ��ѯÿ��������Ʒ���� 1ը�� 2���� 3Сʳ 4����
	public int[] queryzhongleinumber() {
		int[] n ={0,0,0,0};
		int m =0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("select * from sp where spzhonglei = ?");
			for (int i = 0; i < 4; i++) {
				if (i==0) {
					pst.setString(1, "ը��");
				}
				if (i==1) {
					pst.setString(1, "����");
				}
				if (i==2) {
					pst.setString(1, "Сʳ");
				}
				if (i==3) {
					pst.setString(1, "����");
				}
				rs = pst.executeQuery();
				while(rs.next()){
					m++;
				}
				n[i]=m;
				m=0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// ɾ����Ʒ
	public int deletesp(int id) {
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("delete from sp where spid = ?");
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
