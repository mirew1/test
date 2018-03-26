package member.model.dao;

import static common.JDBCTemplate.*;

import java.sql.*;

import member.model.vo.Member;

public class MemberDao {

	public int joinMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO member values(?,?,?,?,?,?,?,default,?,?,?,default)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,member.getMemberId());
			pstmt.setString(2, member.getMemberPwd());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberEmail());
			pstmt.setString(5, member.getMemberBirthday());
			pstmt.setString(6, member.getQuestion());
			pstmt.setString(7, member.getAnswer());
			pstmt.setString(8, member.getMemberOriginalImg());
			pstmt.setString(9, member.getMemberRenameImg());
			pstmt.setString(10, member.getMemberNickname());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public Member loginMember(Connection conn, String userId, String userPwd) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM member WHERE member_id = ? and member_pwd = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member();
				loginUser.setMemberId(rset.getString("member_id"));
				loginUser.setMemberPwd(rset.getString("member_pwd"));
				loginUser.setMemberName(rset.getString("member_name"));
				loginUser.setMemberEmail(rset.getString("member_email"));
				loginUser.setMemberBirthday(rset.getString("member_birthday"));
				loginUser.setQuestion(rset.getString("question"));
				loginUser.setAnswer(rset.getString("answer"));
				loginUser.setJoinDate(rset.getDate("join_date"));
				loginUser.setMemberOriginalImg(rset.getString("member_original_img"));
				loginUser.setMemberRenameImg(rset.getString("member_rename_img"));
				loginUser.setMemberNickname(rset.getString("member_nickname"));
				loginUser.setMemberOut(rset.getString("member_out"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}

	public Member idCheck(Connection conn, String userid) {
		Member user = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM member WHERE member_id = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				user = new Member();

			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return user;
	}

}
