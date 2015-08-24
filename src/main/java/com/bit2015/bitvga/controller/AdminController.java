package com.bit2015.bitvga.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit2015.bitvga.service.ProductService;
import com.bit2015.bitvga.service.UserService;
import com.bit2015.bitvga.vo.ProductVo;
import com.bit2015.bitvga.vo.UserVo;

@Controller
@RequestMapping("/sdaflkjhlkjh213219393243475873465876")
public class AdminController {

	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;

	@RequestMapping()
	public String main() {

		return "/admin/member";
	}

	@RequestMapping("/memberlist")
	public String memberList(Model model) {
		// System.out.println("memberlist");
		List<UserVo> list = userService.getMemberList();
		// System.out.println(list);
		System.out.println(userService.countrow());

		model.addAttribute("totalrow", userService.countrow());
		model.addAttribute("list", list);
		return "/admin/member";
	}

	@RequestMapping("/delete/{no}")
	public String delete(@PathVariable Long no) {

		userService.delete(no);

		return "redirect:/sdaflkjhlkjh213219393243475873465876/memberlist";
	}

	@RequestMapping("/product")
	public String productList(Model model) {
		List<ProductVo> list = productService.list();
		model.addAttribute("productlist", list);
		return "/admin/product";
	}
	@RequestMapping("/productnew")
	public String productReg(Model model){
//		List list = productService.categoryList();
//		System.out.println(list.get(1));
		List list = new ArrayList<>();
		list.set(1, "이준기");
		model.addAttribute("clist", list);
		return "/admin/product_new";
	}
	

}
