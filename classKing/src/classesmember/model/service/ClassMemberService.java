package classesmember.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import classes.model.vo.Classes;
import classesmember.model.dao.ClassesMemberDao;

public class ClassMemberService {

	public int classMemberJoin(String memberId, Classes classes) {
		Connection conn = getConnection();
		int result = new ClassesMemberDao().classMemberJoin(conn,memberId, classes);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
}