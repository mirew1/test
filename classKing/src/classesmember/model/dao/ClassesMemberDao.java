package classesmember.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import classes.model.vo.Classes;

public class ClassesMemberDao {

	public int classMemberJoin(Connection conn, String memberId, Classes classes) {
		int result = 0;
		int classNo = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "INSERT INTO class_member values((SELECT MAX(class_member_no)+1 FROM class_member)"
				+ ",?,?,'Y',default,default,default)";
		
		
		String query2 = "SELECT class_no FROM class WHERE class_title = ?";
		try {
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1,classes.getClassTitle());
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				classNo = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,classNo);
			pstmt.setString(2, memberId);
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
