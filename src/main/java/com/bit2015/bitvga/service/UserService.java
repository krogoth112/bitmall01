package com.bit2015.bitvga.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit2015.bitvga.AccountCondition;
import com.bit2015.bitvga.UserType;
import com.bit2015.bitvga.dao.UserDao;
import com.bit2015.bitvga.vo.UserVo;

@Service
public class UserService {

	@Autowired
	UserDao userDao;

	static final String status[] = { "avilable", "dormancy" };
//	static final String type[] = { "admin", "customer" };
	AccountCondition condition;
	UserType type;

	public void userInsert(UserVo userVo) {
		// 활성화 처리
//		userVo.setStatus(status[0]);
		userVo.setStatus(condition.ActiveAccount.name());
		// 유저 타입 설정
//		userVo.setType(type[1]);
		userVo.setType(type.Customer.name());
		System.out.println(userVo);

		userDao.userInsert(userVo);
	}

	public UserVo login(String email, String password) {
		return userDao.login(email, password);
	}

	public void update(UserVo userVo) {
		userDao.update(userVo);
	}

	public List<UserVo> getMemberList() {
		return userDao.getMemberList();
	}

	public int countrow() {
		return userDao.countrow();
	}

	public void delete(Long no) {
		userDao.delete(no);
		
	}

}

class page {
	int skip;
	int t_page;
	int s_page;
	int c_m_page;

}
