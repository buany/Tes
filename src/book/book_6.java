package book;

import java.util.List;
import java.util.Map;

import ui.UI;
import util.DBUtil;

public class book_6 {
	private String b_id;
	private String bookname;
	private String author;
	private String publish;			//出版社
	private String publish_date;	//出版日期
	private String number;			//库存
	private String b_money;    		//价格
	private String ty_id;			//类别id
	private String puture_add;		//图片的存放位置
	private String books_date;		//图书的购买时间
	private DBUtil db;
	private String select;  		//模糊查询的内容
	public book_6() {
		super();
		db=new DBUtil();
	}
	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getPublish_date() {
		return publish_date;
	}
	public void setPublish_date(String publish_date) {
		this.publish_date = publish_date;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getB_money() {
		return b_money;
	}
	public void setB_money(String b_money) {
		this.b_money = b_money;
	}
	public String getTy_id() {
		return ty_id;
	}
	public void setTy_id(String ty_id) {
		this.ty_id = ty_id;
	}
	public String getPuture_add() {
		return puture_add;
	}
	public void setPuture_add(String puture_add) {
		this.puture_add = puture_add;
	}
	public String getBooks_date() {
		return books_date;
	}
	public void setBooks_date(String books_date) {
		this.books_date = books_date;
	}
	//显示所有图书信息
	public List getAllBooks(){
		String sql="select *from b_books_6";
		List books=null;
		books=db.getList(sql, null);
		return books;
	}
		//添加图书信息(admin操作)
		public int addBook(){
			int result=0;
			String sql="insert into b_books_6(bookname,author,publish,publish_date,number,b_money,ty_id,puture_add) values(?,?,?,?,?,?,?,?)";
			String []par={bookname,author,publish,publish_date,number,b_money,ty_id,puture_add};
			result=db.update(sql, par);
			return result;
		}
		//添加图书信息(user操作)
		public int addBook_user(){
			int result=0;
			String sql="insert into b_books_6(bookname,author,publish,publish_date,number,b_money,ty_id,puture_add,books_date) values(?,?,?,?,?,?,?,?,?)";
			String []par={bookname,author,publish,publish_date,number,b_money,ty_id,puture_add,books_date};
			result=db.update(sql, par);
			return result;
		}
		//通过id查询图书信息(admin操作)
		public Map getbook(){
			Map book=null;
			String sql="select *from b_books_6 where b_id=?";
			String []par={b_id};
			book=db.getMap(sql, par);
			return book;
		}
		//修改图书信息(admin操作)
		public int update(){
			int result=0;
			String sql="update b_books_6 set bookname=?,author=?,publish=?,publish_date=?,number=?,b_money=?,ty_id=?,puture_add=? where b_id=?";
			String []par={bookname,author,publish,publish_date,number,b_money,ty_id,puture_add,b_id};
			result=db.update(sql, par);
			return result;
		}
		//删除图书信息(admin操作)
		public int delbook(){
			int result=0;
			String sql="delete from b_books_6 where b_id=?";
			String []par={b_id};
			result=db.update(sql, par);
			return result;
		}
		//返回数据库中分页用户信息的方法
		public UI getUserList(int curPage){
			String sql="select *from b_books_6";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//类别查询小说的总数
		public UI getUserList_fiction(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=1";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//类别查询文学的总数
		public UI getUserList_edu(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=2";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//类别查询计算机的总数
		public UI getUserList_com(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=3";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//类别查询童书的总数
		public UI getUserList_child(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=4";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//类别查询知识类的总数
		public UI getUserList_know(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=5";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//类别查询经营类的总数
		public UI getUserList_man(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=6";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//搜索框查询
		/*public UI getUserList_se(int curPage){
			String sql="select *from b_books_6 where bookname like '%"+select+"%'";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}*/
		//搜索框查询
		public List getUserList_se(){
			String sql="select *from b_books_6 where bookname like '%"+select+"%'";
		/* System.out.print(sql); */
			List books=null;
			books=db.getList(sql, null);
			return books;
		}
}
