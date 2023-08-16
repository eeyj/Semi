package com.kh.member.model.service;

import com.kh.board.model.vo.Attachment;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {

	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();

		Member m = new MemberDao().loginMember(conn, userId, userPwd);

		close(conn);

		return m;
	}
	
	public int insertMember(Member m, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new MemberDao().insertMember(conn, m);
		int result2 = 1;
		
		if(at != null) {
			result2 = new MemberDao().insertProfileImg(conn, at);
		}
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		
		return result1*result2;
		
		
	}
	
}
