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
	//获取连接对象
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
	//获取语句对象
	private PreparedStatement getPreparedStatement(String sql) {
		try {
			pstmt=getConnection().prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pstmt;
	}
	//给pstmt的SQL语句设置参数（要求参数以数组形式给出）
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
	//执行数据库查询操作时，将返回的结果封装到List对象中
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
	//执行数据库查询操作时，将返回的结果封装到List对象中
	public Map getMap(String sql,String[] params) {
		List list=getList(sql,params);
		if(list.isEmpty()) {
			return null;
		}else {
			return (Map)list.get(0);
		}
	}
	//更新数据库时调用的update方法
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
	//执行数据库查询操作时，返回结果的记录总数
	private int getTotalRows(String sql,String []params){
		int totalRows=0;
		sql=sql.toLowerCase();
		String countSql="select count(*) as tempNum "+sql.substring(sql.indexOf("from"));
		//count中存放总记录数
		String count=(String)getMap(countSql,params).get("tempNum");
		totalRows=Integer.parseInt(count);
		return totalRows;
	}
	//分页显示查询结果时，将当前页中的所有信息封装到bean中
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
	//关闭对象
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
