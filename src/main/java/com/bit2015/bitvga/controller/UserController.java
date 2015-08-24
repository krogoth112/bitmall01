package com.bit2015.bitvga.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit2015.bitvga.service.UserService;
import com.bit2015.bitvga.vo.UserVo;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/agree")
	public String signupform() {

		return "user/member_agree";

	}

	@RequestMapping("/member_join")
	public String joinform() {
		return "user/member_join11";

	}

	@RequestMapping("/join")
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println(userVo);
		userService.userInsert(userVo);

		return "user/member_joinend";

	}

	@RequestMapping("/loginform")
	public String loginform() {

		return "user/member_login";
	}

	@RequestMapping("/login")
	public String login(HttpSession session, @RequestParam String email,
			@RequestParam String password) {
		System.out.println(email + " : " + password);
		UserVo userVo = userService.login(email, password);
		if (userVo == null) {
			System.err.println("로그인 실패");
			return "redirect:/";
		}
		if ("admin".equals(userVo.getType())) {
			System.err.println("관리자 하이");
			session.setAttribute("authUser", userVo);
			return "redirect:/sdaflkjhlkjh213219393243475873465876";
		}
		session.setAttribute("authUser", userVo);
		System.out.println("userVo login!!!");
		return "redirect:/";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/modifyform")
	public String modifyform() {
		return "user/member_modify";

	}

	@RequestMapping("/modify")
	public String modify(@ModelAttribute UserVo userVo, HttpSession session) {
		if (session == null)
			return "user/member_login";
		UserVo sessionUser = (UserVo) session.getAttribute("authUser");
		userVo.setNo(sessionUser.getNo());

		System.out.println(userVo);
		userService.update(userVo);
		session.invalidate();

		return "redirect:/";

	}

}
