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
public class SeleniumTestingController extends AbstractController {
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ModelAndView testSModel =new ModelAndView("test");
		String testingSelenium = "Man this is awesome!";
		System.out.println("testingSelenium");
		String appId = "324512567763";
		testSModel.addObject("appId",appId);
		testSModel.addObject("testingSelenium",testingSelenium);
		return testSModel;
	}

}
