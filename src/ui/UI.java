package ui;

import java.util.List;

public class UI {
	private int curPage;			//��ǰҳ��
	private int totalPages;			//��ҳ��
	private int totalRows;			//������
	private int pageSize;			//ÿҳ��ʾ����
	private List data;				//ÿҳ��ʾ������
	public int getCurPage(){
		if(curPage>getTotalPages()){	//��ǰ��������������
			curPage=getTotalPages();
			
		}else if(curPage<1){			//��ǰ����С��1
			curPage=1;
		}
		return curPage;
	}
	public int getTotalPages() {
		if(totalRows%pageSize==0){
			totalPages=totalRows/pageSize;
		}else{
			totalPages=totalRows/pageSize+1;
		}
		return totalPages;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	
}