package classes.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import classes.model.vo.Classes;
import member.model.vo.Member;

public class ClassesDao {

	public int classMake(Connection conn, Classes classes) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO class values((SELECT MAX(class_no) FROM class) + 1"
				+ ",?,?,?,?,?,?,default,'N')";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,classes.getClassTitle());
			pstmt.setString(2, classes.getClassSubTitle());
			pstmt.setString(3, classes.getCategoryNo());
			pstmt.setString(4, classes.getOpen());
			pstmt.setString(5, classes.getClassOriginalImg());
			pstmt.setString(6, classes.getClassRenameImg());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Classes> classesList(Connection conn, String memberId) {
		ArrayList<Classes> list = new ArrayList<Classes>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT c.class_no,c.class_title,c.class_subtitle,c.class_category_no,c.class_open,c.class_original_img,c.class_rename_img"
				+ " FROM class c,class_member cm WHERE cm.member_id = ? and c.class_no = cm.class_no";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Classes classes = new Classes();
				classes.setClassNo(rset.getInt(1));
				classes.setClassTitle(rset.getString(2));
				classes.setClassSubTitle(rset.getString(3));
				classes.setCategoryNo(rset.getString(4));
				classes.setOpen(rset.getString(5));
				classes.setClassOriginalImg(rset.getString(6));
				classes.setClassRenameImg(rset.getString(7));
				
				list.add(classes);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
}