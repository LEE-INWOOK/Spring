package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberBean;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	public static final String namespace = "com.itwillbs.mapper.MemberMapper";	// sql구문을 담고 있는 전체 바구니
	
	@Override
	public void insertMember(MemberBean mb) {
		System.out.println("잘되나?");
		// insert() 
		sqlSession.insert(namespace+".insertMember", mb);						// 바구니.실행할 sql구문의 id값 (memberMapper.xml 파일에 존재)
	}

}
