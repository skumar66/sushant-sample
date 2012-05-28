/**
 * 
 */
package com.sk.ajax;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 * @author skum66
 *
 */
public class ModelController extends AbstractController {
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ModelAndView testModel =new ModelAndView("test");
		String fbappId = "324512567763";
		System.out.println("testing model");
		testModel.addObject("appId",fbappId);
		return testModel;
	}

}
