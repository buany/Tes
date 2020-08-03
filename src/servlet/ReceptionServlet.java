package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.book_6;

/**
 * Servlet implementation class ReceptionServlet
 */
@WebServlet("*.rbook")
public class ReceptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReceptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String url=request.getServletPath();
		if(url.equals("/all.rbook")){
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList(curPage));
			request.getRequestDispatcher("nav/list_6.jsp").forward(request, response);
		}else if(url.equals("/fiction.rbook")) {
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList_fiction(curPage));
			request.getRequestDispatcher("nav/fiction_6.jsp").forward(request, response);
		}else if(url.equals("/edu.rbook")) {
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList_edu(curPage));
			request.getRequestDispatcher("nav/edu_6.jsp").forward(request, response);
		}else if(url.equals("/computer.rbook")) {
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList_com(curPage));
			request.getRequestDispatcher("nav/computer_6.jsp").forward(request, response);
		}else if(url.equals("/child.rbook")) {
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList_child(curPage));
			request.getRequestDispatcher("nav/children_6.jsp").forward(request, response);
		}else if(url.equals("/know.rbook")) {
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList_know(curPage));
			request.getRequestDispatcher("nav/music_6.jsp").forward(request, response);
		}else if(url.equals("/manage.rbook")) {
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", book.getUserList_man(curPage));
			request.getRequestDispatcher("nav/manage_6.jsp").forward(request, response);
		}else if(url.equals("/select.rbook")) {
			book_6 book=new book_6();
			String select=request.getParameter("Ie");
			if(select==null){
				request.getRequestDispatcher("../index_6.jsp").forward(request, response);
			}
			System.out.print(select);
			book.setSelect(select);
			//调用模型
			request.setAttribute("SELECT", book.getUserList_se());
			request.getRequestDispatcher("nav/select_6.jsp").forward(request, response);
		}
	}

}
