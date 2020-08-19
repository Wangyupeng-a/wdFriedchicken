package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javabean.Ly;
import javabean.Sp;
import javabean.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Lydao;
import dao.Spdao;

public class LyinputServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LyinputServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid = Integer.parseInt(request.getParameter("userid")) ;
		int spid = Integer.parseInt(request.getParameter("spid")) ;
		if (userid==0) {
			request.getRequestDispatcher("/users/login.jsp").forward(request, response);
		}else{
			String lyneirong = request.getParameter("lyneirong");
			if (lyneirong==null||lyneirong.equals("")) {
				request.setAttribute("massage", "«Î ‰»Îƒ˙µƒ∆¿º€£°");
				request.setAttribute("spid", spid);
				request.getRequestDispatcher("/servlet/SponeServlet").forward(request, response);
			}else{
				Ly ly = new Ly();
				ly.setLyneirong(lyneirong);
				Users user = new Users();
				user.setUserid(userid);
				Sp sp = new Sp();
				sp.setSpid(spid);
				ly.setSp(sp);
				ly.setUser(user);
				Lydao lydao = new Lydao();
				int n = lydao.addly(ly);
				request.setAttribute("spid", spid);
				request.getRequestDispatcher("/servlet/SponeServlet").forward(request, response);
			}
			
			
//			Spdao spdao = new Spdao();
//			Sp sp1 = new Sp();
//			sp1 = spdao.queryidSp(spid);
//			request.setAttribute("sp",sp);
//			List<Sp> listzhonglei = new ArrayList<Sp>();
//			listzhonglei = spdao.queryzhongleiSp(sp.getSpzhonglei());
//			request.setAttribute("listzhonglei", listzhonglei);
//			Lydao lydao = new Lydao();
//			List<Ly> listly = new ArrayList<Ly>();
//			listly = lydao.queryspidly(spid);
//			request.setAttribute("listly", listly);
//			request.getRequestDispatcher("/shop-detail.jsp").forward(request, response);
			
			
			
		}
		
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
