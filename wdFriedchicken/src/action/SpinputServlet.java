package action;

import java.io.IOException;
import java.io.PrintWriter;

import javabean.Sp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Spdao;

public class SpinputServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SpinputServlet() {
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
		String spname = request.getParameter("spname");
		String spimg = request.getParameter("spimg");
		String spjieshao = request.getParameter("spjieshao");
		int spjiage =Integer.parseInt(request.getParameter("spjiage")) ;
		String spzhonglei = request.getParameter("spzhonglei");
		Sp sp = new Sp();
		sp.setSpname(spname);
		sp.setSpimg("images/my/"+spimg);
		sp.setSpjieshao(spjieshao);
		sp.setSpjiage(spjiage);
		sp.setSpzhonglei(spzhonglei);
		Spdao spdao = new Spdao();
		int n = spdao.addsp(sp);
		if (n==1) {
			request.setAttribute("massage", "添加成功！");
			request.getRequestDispatcher("/admin/addsp.jsp").forward(request, response);
		}else{
			request.setAttribute("massage", "添加失败！");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
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
