package service;

import java.util.List;
import java.util.Map;

import ui.UI;
import util.DBUtil;

public class Account_6{
	private String username;
	private String password;
	private String u_id;
	private String phone;
	private String email;
	private String address;
	private String user_date;
	private DBUtil db;
	public Account_6() {
		super();
		db=new DBUtil();
	}
	

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	


	

	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getUser_date() {
		return user_date;
	}


	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}

	//��ʾ�����û���Ϣ
	public List getAllUser(){
		String sql="select *from b_user_6";
		List books=null;
		books=db.getList(sql, null);
		return books;
	}
	//����û�
	public int addAccount() {
		int result=0;
		String sql="insert into b_user_6(username,password,phone,address,email,user_date) values(?,?,?,?,?,?)";
		String []par={username,password,phone,address,email,user_date};
		result=db.update(sql, par);
		return result;
	}
	//�޸��û���Ϣ(admin����)
	public int update(){
		int result=0;
		String sql="update b_user_6 set username=?,password=?,phone=?,address=?,email=? where u_id=?";
		String []par={username,password,phone,address,email,u_id};
		result=db.update(sql, par);
		return result;
	}
	//ɾ���ʻ���Ϣ(admin����)
	public int deluser(){
		int result=0;
		String sql="delete from b_user_6 where u_id=?";
		String []par={u_id};
		result=db.update(sql, par);
		return result;
	}
	//��ѯ�û�
	public Map getAccount() {
		Map ac=null;
		String sql="select *from b_user_6 where u_id=?";
		String []par={u_id};
		ac=db.getMap(sql, par);
		return ac;
	}
	//�˻���֤
	public Map getAccount_user() {
		Map ac=null;
		String sql="select *from b_user_6 where username=? and password=?";
		String []par={username,password};
		ac=db.getMap(sql, par);
		return ac;
	}
	//admin�˻���֤
	public Map getAccount_admin() {
		Map ac=null;
		String sql="select *from b_admin_6 where admin_name=? and password=?";
		String []par={username,password};
		ac=db.getMap(sql, par);
		return ac;
	}
	//�������ݿ��з�ҳ�û���Ϣ�ķ���
	public UI getUserList(int curPage){
		String sql="select *from b_user_6";
		UI ui=db.getPageBean(sql, null, curPage);
		return ui;
	}
}
