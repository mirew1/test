package member.model.service;

import member.model.dao.MemberDao;
import member.model.vo.Member;

import static common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {

	public int joinMember(Member member) {
		Connection conn = getConnection();
		int result = new MemberDao().joinMember(conn, member);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public Member loginCheck(String userId, String userPwd) {
		Connection conn = getConnection();
		Member member = new MemberDao().loginMember(conn, userId, userPwd);
		close(conn);
		
		return member;
	}

	public Member idCheck(String userid) {
		Connection conn = getConnection();
		Member user = new MemberDao().idCheck(conn, userid);
		close(conn);
		
		return user;
	}

}
