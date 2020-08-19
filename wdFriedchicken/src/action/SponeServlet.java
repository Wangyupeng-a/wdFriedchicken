package action;

import java.util.List;
import java.io.IOException;
import java.util.ArrayList;

import javabean.Ly;
import javabean.Sp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Lydao;
import dao.Spdao;

public class SponeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SponeServlet() {
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
		request.setCharacterEncoding("utf-8");
		int spid = Integer.parseInt(request.getParameter("spid"));
		Spdao spdao = new Spdao();
		Sp sp = new Sp();
		sp = spdao.queryidSp(spid);
		request.setAttribute("sp",sp);
		List<Sp> listzhonglei = new ArrayList<Sp>();
		listzhonglei = spdao.queryzhongleiSp(sp.getSpzhonglei());
		request.setAttribute("listzhonglei", listzhonglei);
		Lydao lydao = new Lydao();
		List<Ly> listly = new ArrayList<Ly>();
		listly = lydao.queryspidly(spid);
		request.setAttribute("listly", listly);
		request.getRequestDispatcher("/shop-detail.jsp").forward(request, response);
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
		this.doGet(request, response);
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
