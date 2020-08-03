package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ui.UI;


public class DBUtil {
	private String driver;
	private String url;
	private String username;
	private String password;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int pageSize=3;
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public DBUtil() {
		driver="com.mysql.jdbc.Driver";
		url="jdbc:mysql://localhost:3306/bookstroes_6?user=root&password=&useUnicode=true&characterEncoding=GB2312";
		username="root";
		password="";
	}
	//��ȡ���Ӷ���
	private Connection getConnection() {
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	//��ȡ������
	private PreparedStatement getPreparedStatement(String sql) {
		try {
			pstmt=getConnection().prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pstmt;
	}
	//��pstmt��SQL������ò�����Ҫ�������������ʽ������
	private void setParams(String sql,String[] params) {
		pstmt=this.getPreparedStatement(sql);
		if(params==null)
			return;
		for(int i=0;i<params.length;i++) {
			try {
				pstmt.setString(i+1, params[i]);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	//ִ�����ݿ��ѯ����ʱ�������صĽ����װ��List������
	public List getList(String sql,String[] params) {
		List list=new ArrayList();
		this.setParams(sql, params);
		try {
			ResultSet rs=pstmt.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
			while(rs.next()) {
				Map m=new HashMap();
				for(int i=1;i<=rsmd.getColumnCount();i++) {
					String colName=rsmd.getColumnName(i);
					m.put(colName, rs.getString(colName));
				}
				list.add(m);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	//ִ�����ݿ��ѯ����ʱ�������صĽ����װ��List������
	public Map getMap(String sql,String[] params) {
		List list=getList(sql,params);
		if(list.isEmpty()) {
			return null;
		}else {
			return (Map)list.get(0);
		}
	}
	//�������ݿ�ʱ���õ�update����
	public int update(String sql,String[] params) {
		int recNo=0;
		setParams(sql,params);
		try {
			recNo=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return recNo;
	}
	//ִ�����ݿ��ѯ����ʱ�����ؽ���ļ�¼����
	private int getTotalRows(String sql,String []params){
		int totalRows=0;
		sql=sql.toLowerCase();
		String countSql="select count(*) as tempNum "+sql.substring(sql.indexOf("from"));
		//count�д���ܼ�¼��
		String count=(String)getMap(countSql,params).get("tempNum");
		totalRows=Integer.parseInt(count);
		return totalRows;
	}
	//��ҳ��ʾ��ѯ���ʱ������ǰҳ�е�������Ϣ��װ��bean��
		public UI getPageBean(String sql,String []params,int curPage){
			String newSql=sql+" limit "+(curPage-1)*pageSize+","+pageSize;
			List data=this.getList(newSql, params);
			UI ui=new UI();
			ui.setCurPage(curPage);
			ui.setPageSize(pageSize);
			ui.setTotalRows(getTotalRows(sql,params));
			ui.setData(data);
			return ui;
		}
	//�رն���
	private void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
