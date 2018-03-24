package calendar.model.vo;

import java.sql.Date;

public class Calendar implements java.io.Serializable{
	private final static long serialVersionUID = 1L;
	private int calNo;
	private int classCustomerNo;
	private String calTitle;
	private String calNote;
	private Date calSdate;
	private Date calEdate;
	private int boardNo;
	
	public Calendar() {}

	public Calendar(int calNo, int classCustomerNo, String calTitle, String calNote, Date calSdate, Date calEdate,
			int boardNo) {
		super();
		this.calNo = calNo;
		this.classCustomerNo = classCustomerNo;
		this.calTitle = calTitle;
		this.calNote = calNote;
		this.calSdate = calSdate;
		this.calEdate = calEdate;
		this.boardNo = boardNo;
	}

	public int getCalNo() {
		return calNo;
	}

	public void setCalNo(int calNo) {
		this.calNo = calNo;
	}

	public int getClassCustomerNo() {
		return classCustomerNo;
	}

	public void setClassCustomerNo(int classCustomerNo) {
		this.classCustomerNo = classCustomerNo;
	}

	public String getCalTitle() {
		return calTitle;
	}

	public void setCalTitle(String calTitle) {
		this.calTitle = calTitle;
	}

	public String getCalNote() {
		return calNote;
	}

	public void setCalNote(String calNote) {
		this.calNote = calNote;
	}

	public Date getCalSdate() {
		return calSdate;
	}

	public void setCalSdate(Date calSdate) {
		this.calSdate = calSdate;
	}

	public Date getCalEdate() {
		return calEdate;
	}

	public void setCalEdate(Date calEdate) {
		this.calEdate = calEdate;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return calNo + ", " + classCustomerNo + ", " + calTitle
				+ ", " + calNote + ", " + calSdate + ", " + calEdate + ", " + boardNo;
	}
}