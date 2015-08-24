package com.bit2015.bitvga.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit2015.bitvga.dao.ProductDao;
import com.bit2015.bitvga.service.UserService;
import com.bit2015.bitvga.vo.ProductVo;
import com.bit2015.bitvga.vo.UserVo;

@Controller
@RequestMapping("/sdaflkjhlkjh213219393243475873465876")
public class AdminController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductDao productDao;
	
	@RequestMapping()
	public String main(){
		
		return "/admin/member";
	}
	@RequestMapping("/memberlist")
	public String memberList(Model model){
//		System.out.println("memberlist");
		List<UserVo> list = userService.getMemberList();
//		System.out.println(list);
		System.out.println(userService.countrow());
		
		model.addAttribute("totalrow", userService.countrow());
		model.addAttribute("list", list);
		return "/admin/member";
	}
	
	@RequestMapping("/delete/{no}")
	public String delete(@PathVariable Long no){
		
		userService.delete(no);
		
		return "redirect:/sdaflkjhlkjh213219393243475873465876/memberlist";
	}
	
	@RequestMapping("/product")
	public String productList(Model model){
		List<ProductVo> list =  productDao.list();
		model.addAttribute("list", list);
		
		
	return "/admin/product"; 
		
	}
	
	
	
	

}