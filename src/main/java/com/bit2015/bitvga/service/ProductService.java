package com.bit2015.bitvga.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bit2015.bitvga.dao.ProductDao;
import com.bit2015.bitvga.vo.ProductVo;

public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	public List<ProductVo> list(){
		return productDao.list();
	}

}
