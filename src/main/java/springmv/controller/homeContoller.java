package springmv.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("first")
public class homeContoller {
	@RequestMapping(path = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("This is Home URL");
		model.addAttribute("name", "Mayank");
		List<String> friends = new ArrayList<String>();
		friends.add("Ram");
		friends.add("Kirshna");
		friends.add("Hanuman");
		model.addAttribute("f", friends);
		return "index";
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("This is About URL");
		return "about";
	}

	@RequestMapping("/help")
	public ModelAndView help() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("name", "Ram Sita");
		LocalDateTime time = LocalDateTime.now();
		modelAndView.addObject("time", time);
		List<String> friends = new ArrayList<String>();
		friends.add("Rohan");
		friends.add("Ram");
		friends.add("Mayank");
		modelAndView.addObject("f", friends);

		modelAndView.setViewName("help");
		return modelAndView;
	}
}
