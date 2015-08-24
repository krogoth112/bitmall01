package com.bit2015.bitvga.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit2015.bitvga.dao.ProductDao;
import com.bit2015.bitvga.vo.ProductVo;


@Service
public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	public List<ProductVo> list(){
		return productDao.list();
	}
	public List categoryList(){
		return productDao.categoryList();
	}
}
