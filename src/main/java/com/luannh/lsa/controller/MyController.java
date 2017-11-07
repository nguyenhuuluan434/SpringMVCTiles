package com.luannh.lsa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.luannh.lsa.configuration.ApplicationContextConfig;

@Controller
public class MyController {
	@Autowired
	private ApplicationContextConfig appConfig;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String homePage(Model model) {
		return "homePage";
	}

	@RequestMapping(value = { "/contactus" }, method = RequestMethod.GET)
	public String contactUsPage(Model model) {
		model.addAttribute("address", "VN" + appConfig.getJdbcDriver());
		model.addAttribute("phone", "0909090909");
		model.addAttribute("email", "sougly at gmail dot com");
		return "contactusPage";
	}
}
