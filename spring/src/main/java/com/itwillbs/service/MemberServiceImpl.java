package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberBean;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO memberDao;

	@Override
	public void insertMember(MemberBean mb) {
		memberDao.insertMember(mb);		
	}

}
