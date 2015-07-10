package org.lifestyle.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.lifestyle.com.domain.Landmark;
import org.lifestyle.com.domain.News;
import org.lifestyle.com.service.LandmarkService;
import org.lifestyle.com.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * Handles and retrieves person request
 */
@Controller
public class MainController {

	protected static Logger logger = Logger.getLogger("controller");
	protected static String SECTION = "BE_HOMEPAGE";
	protected static String LEVEL = "LEVEL_ONE";
	protected static int RANDOM_ENTRIES = 3;
	
	@Resource(name="newsService")
	private NewsService newsService;
	@Resource(name="landmarkService")
	private LandmarkService landmarkService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String getTest(Model model) {
    	
    	logger.debug("Received request to show home page");
    	model.addAttribute("SECTION", SECTION);
    	model.addAttribute("LEVEL", LEVEL);
    	
    	
    	
    	List<Landmark> landmarks = landmarkService.getAll();
    	model.addAttribute("LANDMARKS", landmarks);
    	List<News> news = newsService.getLatest();
    	model.addAttribute("NEWS", news);
    	
    	
    	// This will resolve to /WEB-INF/jsp/personspage.jsp
    	return "page_structure";
	}
    
}
