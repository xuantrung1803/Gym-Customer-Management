package com.doan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.doan.bean.Account;
import com.doan.entity.KhachHang;
import com.doan.entity.NhanVien;
import com.doan.entity.TaiKhoan;
import com.doan.service.CustomerService;
import com.doan.service.NhanVienService;
import com.doan.service.TaiKhoanService;

@Controller
public class CoreController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private NhanVienService nhanVienService;

	@RequestMapping("index")
	public String trangchu() {
		return "index";
	}

	@RequestMapping("home")
	public String index() {
		return "index";
	}

	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping("about")
	public String about() {
		return "about";
	}

	@RequestMapping("blog")
	public String blog() {
		return "blog";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginInterface(HttpSession session) {
		List<NhanVien> nhanViens = nhanVienService.listAll();
		for (NhanVien nhanVien : nhanViens) {
			try {
				if (session.getAttribute("username").equals(nhanVien.getTaiKhoan().getUserName()))
					return "redirect:manager101/home";
			} catch (Exception e) {
				return "login";
			}
		}
		return "login";

	}

	@Autowired
	private TaiKhoanService taiKhoanService;

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap modelMap, @ModelAttribute("account") Account account, HttpSession session,
			BindingResult errors) {
		List<TaiKhoan> taiKhoans = taiKhoanService.listAll();
		final String secretKey = "ssshhhhhhhhhhh!!!!";
		String user = account.getUserName();
		String pass = account.getPassword();
		if (user.trim().length() == 0) {
			errors.rejectValue("userName", "account", "Vui lòng nhập username ");
		}
		if (pass.trim().length() == 0) {
			errors.rejectValue("password", "account", "Vui lòng nhập password ");
		}

		for (TaiKhoan item : taiKhoans) {
			System.out.println(item.getUserName() + "---" + item.getPassWord() + "\n");

			if (user.equals(item.getUserName()) && EDPassword.encrypt(pass, secretKey).equals(item.getPassWord())
					&& item.getTrangThai() == 1) {
				session.setAttribute("username", user);
				session.setAttribute("maQuyen", "" + item.getPhanQuyen().getMaQuyen());
				return "redirect:manager101/home";
			}
		}
		if (user.trim().length() != 0 && pass.trim().length() != 0)
			modelMap.addAttribute("error", "Wrong username or password!");
		return "login";

	}
}
