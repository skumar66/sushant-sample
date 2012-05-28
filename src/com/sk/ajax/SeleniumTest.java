/**
 * 
 */
package com.sk.ajax;

import com.thoughtworks.selenium.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * @author skum66
 *
 */
public class SeleniumTest extends SeleneseTestBase{

	/**
	 * @param args
	 */
	
	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*firefox", "http://localhost:8081/SpringAjax/model.htm");
		selenium.start();
	}

	@Test
	public void testSeleniumTest() throws Exception {
		selenium.open("http://localhost:8081/SpringAjax/model.htm");
		selenium.click("link=RunSelenium");
		selenium.waitForPageToLoad("30000");
		assertEquals("BeforeTesting",selenium.getTitle());
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}

}


