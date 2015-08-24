package com.bit2015.bitvga.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.bit2015.bitvga.vo.ProductVo;

@Repository
public class ProductDao {

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;

	public List<ProductVo> list() {
		return sqlMapClientTemplate.queryForList("product.list");

	}

}
