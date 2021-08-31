
package com.tranvanchien.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tranvanchien.model.Users;
import com.tranvanchien.service.UsersService;

@Controller
public class LoginController {
	// DANG KY
	@Autowired
	private UsersService usersService;

	@Autowired(required = true)
	@Qualifier(value = "usersService")
	public void setUsersService(UsersService ps) {
		this.usersService = ps;
	}

	@RequestMapping("/dang-ky")
	public String dangky(Model m) {
		m.addAttribute("command", new Users());
		return "user/dangky";
	}

	@RequestMapping(value = "/save1", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Users emp) {
		usersService.addUsers(emp);
		return "redirect:/dang-ky";

	}

	// DANG NHAP
	@RequestMapping("/dang-nhap")
	public String dangnhap(Model m) {
		m.addAttribute("command", new Users());
		return "user/login";
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("users") Users users) {
		users = usersService.isUsers(users);
		ModelAndView view = null;
		if (users != null) {
			session.setAttribute("LoginInfo", users);
			view = new ModelAndView("redirect:/");
		} else {
			session.setAttribute("message", "Đăng nhập thất bại");
			view = new ModelAndView("redirect:/dang-nhap");
		}
		return view;
	}
	
	//DANG XUAT
	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}


}
