package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import service.Account_6;

/**
 * Servlet implementation class register
 */
@WebServlet("*.user")
public class Userservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userservlet() {
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
		Date dat=new Date();
		if(url.equals("/register.user")){
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
			String address=request.getParameter("address");
			//String address1=new String(address.getBytes("ISO-8859-1"),"utf-8");
			
			
			/*System.out.println(address);*/
			//System.out.println(address1);
		
			String email=request.getParameter("email");
			String user_date=df.format(new Date());
			Account_6 ac=new Account_6();
			ac.setUsername(username);
			ac.setPassword(password);
			ac.setPhone(phone);
			ac.setAddress(address);
			ac.setEmail(email);
			ac.setUser_date(user_date);
			if(ac.getAccount()!=null){
				JOptionPane.showMessageDialog(null, "该账户已经存在，请登陆！", "警告", JOptionPane.ERROR_MESSAGE);
				//request.getRequestDispatcher("Login_6.jsp").forward(request, response);
			}else{
				int a=ac.addAccount();
				if(a==1){
					JOptionPane.showMessageDialog(null, "注册成功！请登录", "提示", JOptionPane.INFORMATION_MESSAGE);
					request.getRequestDispatcher("Login_6.jsp").forward(request, response);
				}else{
					JOptionPane.showMessageDialog(null, "注册失败！", "警告", JOptionPane.ERROR_MESSAGE);
					request.getRequestDispatcher("register_6.jsp").forward(request, response);
				}
				
			}
		}else if(url.equals("/login.user")){
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			Account_6 ac=new Account_6();
			ac.setUsername(username);
			ac.setPassword(password);
			if(ac.getAccount_user()!=null){
				JOptionPane.showMessageDialog(null, "登陆成功", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("index_6.jsp").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "登录失败", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("Login_6.jsp").forward(request, response);
			}
		}else if(url.equals("/admin.user")){
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			Account_6 ac=new Account_6();
			ac.setUsername(username);
			ac.setPassword(password);
			if(ac.getAccount_admin()!=null){
				JOptionPane.showMessageDialog(null, "登陆成功", "提示", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("admin/admin.html").forward(request, response);
			}else{
				JOptionPane.showMessageDialog(null, "登录失败", "警告", JOptionPane.ERROR_MESSAGE);
				request.getRequestDispatcher("Login_6.jsp").forward(request, response);
			}
		}
	}

}
