package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javabean.Sp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Spdao;

public class SpallServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SpallServlet() {
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
		int spzhonglei =Integer.parseInt(request.getParameter("spzhonglei")) ;
		Spdao sdao = new Spdao();
		List<Sp> list = new ArrayList<Sp>();
		if (spzhonglei==1) {
			list = sdao.queryzhongleiSp("’®º¶");
		}else if(spzhonglei==2){
			list = sdao.queryzhongleiSp("∫∫±§");
		}else if(spzhonglei==3){
			list = sdao.queryzhongleiSp("–° ≥");
		}else if(spzhonglei==4){
			list = sdao.queryzhongleiSp("“˚¡œ");
		}else if(spzhonglei==0){
			list = sdao.queryallSp();
		}
		request.setAttribute("splist", list);
		request.getRequestDispatcher("/shop.jsp").forward(request, response);
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
