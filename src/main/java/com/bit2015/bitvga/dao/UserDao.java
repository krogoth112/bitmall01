package com.bit2015.bitvga.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.bit2015.bitvga.vo.UserVo;

@Repository
public class UserDao {

	@Autowired	
	private SqlMapClientTemplate sqlMapClientTemplate;

	public void userInsert(UserVo userVo) {
		
		sqlMapClientTemplate.insert("user.insert", userVo);
	}

	public UserVo login(String email, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("password", password);
		UserVo userVo = (UserVo) sqlMapClientTemplate.queryForObject("user.login", map);
		sqlMapClientTemplate.update("user.updatelogindate");
		return userVo;
	}

	public void update(UserVo userVo) {
		System.out.println("UserDao : " + userVo);
		sqlMapClientTemplate.update("user.update", userVo);
		
	}

	public List<UserVo> getMemberList() {
		System.out.println("getMemberList");
		return sqlMapClientTemplate.queryForList("user.list");
	}

	public int countrow() {

		return (int) sqlMapClientTemplate.queryForObject("user.countrow");
	}

	public void delete(Long no) {
		
		sqlMapClientTemplate.delete("user.delete", no);
		
	}

}
