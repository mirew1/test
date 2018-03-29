package classes.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import classes.model.dao.ClassesDao;
import classes.model.vo.Classes;
import member.model.dao.MemberDao;
import member.model.vo.Member;

public class ClassesService {

	public int classMake(Classes classes,String memberId) {
		Connection conn = getConnection();
		int result = new ClassesDao().classMake(conn, classes);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public ArrayList<Classes> classesList(String memberId) {
		Connection conn = getConnection();
		ArrayList<Classes> list = new ClassesDao().classesList(conn,memberId);
		close(conn);
		
		return list;
	}

}
