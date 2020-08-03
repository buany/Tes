package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import book.book_6;
import service.Account_6;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("*.book")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookController() {
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
		request.setCharacterEncoding("UTF-8");
		String url=request.getServletPath();
		if(url.equals("/admin.book")){
			Account_6 ac=new Account_6();
			
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			//调用模型
			request.setAttribute("UI", ac.getUserList(curPage));
			//request.setAttribute("book", book.getUserList(curPage));
			request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
		}else if(url.equals("/com.book")){
			book_6 book=new book_6();
			//获得要显示的页数
			String page=request.getParameter("page");
			//当前的页数
			int curPage=1;
			//如没有传入的页数
			if(page!=null&&page.length()>0){
				curPage=Integer.parseInt(page);
			}
			request.setAttribute("UI", book.getUserList(curPage));
			request.getRequestDispatcher("admin/admin_commodity.jsp").forward(request, response);
		}else if(url.equals("/add.book")){
			String bookname=request.getParameter("bookname");
			String author=request.getParameter("author");
			String publish=request.getParameter("publish");
			String publish_date=request.getParameter("publish_date");
			String puture_add=request.getParameter("puture_add");
			String number=request.getParameter("number");
			String b_money=request.getParameter("b_money");
			String ty_id=request.getParameter("ty_id");
			book_6 book=new book_6();
			book.setBookname(bookname);
			book.setAuthor(author);
			book.setPublish(publish);
			book.setPublish_date(publish_date);
			book.setNumber(number);
			book.setB_money(b_money);
			book.setTy_id(ty_id);
			book.setPuture_add(puture_add);
			int r=book.addBook();
			if(r==1){
				JOptionPane.showMessageDialog(null, "添加成功！", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("com.book").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "添加失败！", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("com.book").forward(request, response);
			}
		}else if(url.equals("/edit_user.book")){
			String id=request.getParameter("id");
			Account_6 ac=new Account_6();
			ac.setU_id(id);
			request.setAttribute("b_user_6",ac.getAccount());
			request.getRequestDispatcher("admin/edit_user.jsp").forward(request, response);
		}else if(url.equals("/edit_do.book")){
			String id=request.getParameter("id");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
			String address=request.getParameter("address");
			String email=request.getParameter("email");
			Account_6 ac=new Account_6();
			ac.setU_id(id);
			ac.setUsername(username);
			ac.setPassword(password);
			ac.setPhone(phone);
			ac.setAddress(address);
			ac.setEmail(email);
			int r=ac.update();
			if(r==1){
				JOptionPane.showMessageDialog(null, "更新成功！", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("admin/admin.html").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "更新失败！", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("admin/admin.html").forward(request, response);
			}
		}else if(url.equals("/del_user.book")){
			String id=request.getParameter("id");
			Account_6 ac=new Account_6();
			ac.setU_id(id);
			int r=ac.deluser();
			if(r==1){
				JOptionPane.showMessageDialog(null, "删除成功！", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("admin/admin.html").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "删除失败！", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("admin/admin.html").forward(request, response);
			}
		}else if(url.equals("/edit_com.book")){
			String id=request.getParameter("id");
			book_6 book=new book_6();
			book.setB_id(id);;
			request.setAttribute("b_books_6",book.getbook());
			request.getRequestDispatcher("admin/edit_com.jsp").forward(request, response);
		}else if(url.equals("/edit_com_do.book")){
			String id=request.getParameter("id");
			String bookname=request.getParameter("bookname");
			String author=request.getParameter("author");
			String publish=request.getParameter("publish");
			String publish_date=request.getParameter("publish_date");
			String number=request.getParameter("number");
			String b_money=request.getParameter("b_money");
			String ty_id=request.getParameter("ty_id");
			book_6 book=new book_6();
			book.setB_id(id);
			book.setBookname(bookname);
			book.setAuthor(author);
			book.setPublish(publish);
			book.setPublish_date(publish_date);
			book.setNumber(number);
			book.setB_money(b_money);
			book.setTy_id(ty_id);
			int r=book.update();
			if(r==1){
				JOptionPane.showMessageDialog(null, "修改成功！", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("com.book").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "修改失败！", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("com.book").forward(request, response);
			}
		}else if(url.equals("/del_com.book")){
			String id=request.getParameter("id");
			book_6 book=new book_6();
			book.setB_id(id);
			int r=book.delbook();
			if(r==1){
				JOptionPane.showMessageDialog(null, "删除成功！", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("com.book").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "删除失败！", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("com.book").forward(request, response);
			}
		}
	}
}
