package com.sk.ajax;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class AjaxController extends AbstractController {

	private String message;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("home","welcomeMessage", message);
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
