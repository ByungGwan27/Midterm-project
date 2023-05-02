package main.common.wook.main.service;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import main.common.wook.main.domain.MemberVO;
import main.common.wook.main.mapper.MainMapper;

public class MemberServiceImpl implements MemberService{

	@Override
	public MemberVO memberCount() {
		SqlSession session = DataSource.getInstance().openSession(true); // true = 자동커밋
		MainMapper mapper = session.getMapper(MainMapper.class);
		
		return mapper.memberCount();
	}

}
