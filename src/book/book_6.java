package book;

import java.util.List;
import java.util.Map;

import ui.UI;
import util.DBUtil;

public class book_6 {
	private String b_id;
	private String bookname;
	private String author;
	private String publish;			//������
	private String publish_date;	//��������
	private String number;			//���
	private String b_money;    		//�۸�
	private String ty_id;			//���id
	private String puture_add;		//ͼƬ�Ĵ��λ��
	private String books_date;		//ͼ��Ĺ���ʱ��
	private DBUtil db;
	private String select;  		//ģ����ѯ������
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
	//��ʾ����ͼ����Ϣ
	public List getAllBooks(){
		String sql="select *from b_books_6";
		List books=null;
		books=db.getList(sql, null);
		return books;
	}
		//���ͼ����Ϣ(admin����)
		public int addBook(){
			int result=0;
			String sql="insert into b_books_6(bookname,author,publish,publish_date,number,b_money,ty_id,puture_add) values(?,?,?,?,?,?,?,?)";
			String []par={bookname,author,publish,publish_date,number,b_money,ty_id,puture_add};
			result=db.update(sql, par);
			return result;
		}
		//���ͼ����Ϣ(user����)
		public int addBook_user(){
			int result=0;
			String sql="insert into b_books_6(bookname,author,publish,publish_date,number,b_money,ty_id,puture_add,books_date) values(?,?,?,?,?,?,?,?,?)";
			String []par={bookname,author,publish,publish_date,number,b_money,ty_id,puture_add,books_date};
			result=db.update(sql, par);
			return result;
		}
		//ͨ��id��ѯͼ����Ϣ(admin����)
		public Map getbook(){
			Map book=null;
			String sql="select *from b_books_6 where b_id=?";
			String []par={b_id};
			book=db.getMap(sql, par);
			return book;
		}
		//�޸�ͼ����Ϣ(admin����)
		public int update(){
			int result=0;
			String sql="update b_books_6 set bookname=?,author=?,publish=?,publish_date=?,number=?,b_money=?,ty_id=?,puture_add=? where b_id=?";
			String []par={bookname,author,publish,publish_date,number,b_money,ty_id,puture_add,b_id};
			result=db.update(sql, par);
			return result;
		}
		//ɾ��ͼ����Ϣ(admin����)
		public int delbook(){
			int result=0;
			String sql="delete from b_books_6 where b_id=?";
			String []par={b_id};
			result=db.update(sql, par);
			return result;
		}
		//�������ݿ��з�ҳ�û���Ϣ�ķ���
		public UI getUserList(int curPage){
			String sql="select *from b_books_6";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//����ѯС˵������
		public UI getUserList_fiction(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=1";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//����ѯ��ѧ������
		public UI getUserList_edu(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=2";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//����ѯ�����������
		public UI getUserList_com(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=3";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//����ѯͯ�������
		public UI getUserList_child(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=4";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//����ѯ֪ʶ�������
		public UI getUserList_know(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=5";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//����ѯ��Ӫ�������
		public UI getUserList_man(int curPage){
			String sql="select *from b_books_6,b_types_6 where b_books_6.ty_id=b_types_6.type_id and b_types_6.type_id=6";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}
		//�������ѯ
		/*public UI getUserList_se(int curPage){
			String sql="select *from b_books_6 where bookname like '%"+select+"%'";
			UI ui=db.getPageBean(sql, null, curPage);
			return ui;
		}*/
		//�������ѯ
		public List getUserList_se(){
			String sql="select *from b_books_6 where bookname like '%"+select+"%'";
		/* System.out.print(sql); */
			List books=null;
			books=db.getList(sql, null);
			return books;
		}
}
