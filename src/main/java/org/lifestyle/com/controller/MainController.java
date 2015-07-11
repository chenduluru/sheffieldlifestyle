package org.lifestyle.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.lifestyle.com.domain.Dining;
import org.lifestyle.com.domain.Kids;
import org.lifestyle.com.domain.Landmark;
import org.lifestyle.com.domain.News;
import org.lifestyle.com.domain.Nightlife;
import org.lifestyle.com.service.LandmarkService;
import org.lifestyle.com.service.NewsService;
import org.lifestyle.com.service.DiningService;
import org.lifestyle.com.service.KidsService;
import org.lifestyle.com.service.NightlifeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles and retrieves person request
 */
@SuppressWarnings("restriction")
@Controller
public class MainController {

	protected static Logger logger = Logger.getLogger("mainController");
	protected static String SECTION = "BE_HOMEPAGE";
	protected static String LEVEL = "LEVEL_ONE";
	protected static int RANDOM_ENTRIES = 3;

	@Resource(name = "newsService")
	private NewsService newsService;
	@Resource(name = "landmarkService")
	private LandmarkService landmarkService;
	//@Resource(name = "kidsService")
	//private KidsService kidsService;
	//@Resource(name = "diningService")
	//private DiningService diningService;
	//@Resource(name = "nightlifeService")
	//private NightlifeService nightlifeService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getTest(Model model) {

		logger.debug("Received request to show home page");
		model.addAttribute("SECTION", SECTION);
		model.addAttribute("LEVEL", LEVEL);

		//List<Kids> kids = kidsService.getRandomEntries();
		List<News> news = newsService.getLatest();
		//List<Dining> dining = diningService.getRandomEntries();
		List<Landmark> landmarks = landmarkService.getRandomEntries();
		//List<Nightlife> nightlife = nightlifeService.getRandomEntries();

		model.addAttribute("NEWS", news);
		//model.addAttribute("KIDS", kids);
		//model.addAttribute("DINING", dining);
		//model.addAttribute("NIGHTLIFE", nightlife);
		model.addAttribute("LANDMARKS", landmarks);

		return "page_structure";
	}

}
