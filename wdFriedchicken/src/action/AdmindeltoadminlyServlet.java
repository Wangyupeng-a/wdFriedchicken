package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javabean.Adminly;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Adminlydao;

public class AdmindeltoadminlyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AdmindeltoadminlyServlet() {
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
		int adminlyid =Integer.parseInt(request.getParameter("adminlyid")) ;
		Adminlydao adminlydao = new Adminlydao();
		int n = adminlydao.deladminly(adminlyid);
		if (n==0) {
			request.setAttribute("massage", "É¾³ýÊ§°Ü£¡");
		}else{
			request.setAttribute("massage", "É¾³ý³É¹¦£¡");
		}
		List<Adminly> listadminly = new ArrayList<Adminly>();
		listadminly = adminlydao.alltoadminly();
		request.setAttribute("listadminly", listadminly);
		request.getRequestDispatcher("/admin/toadminly.jsp").forward(request, response);
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
