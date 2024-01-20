package springmv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class contactController {
	@Autowired
	private UserService userService;

	@ModelAttribute
	public void commonDataForModel(Model m) {
		m.addAttribute("Heading", "Welcome to Spring");
	}

	@RequestMapping("/contact")
	public String showForm() {
		return "contact";
	}

// This is first method for send the data from controller to view
	/*
	 * @RequestMapping(path = "/processForm", method = RequestMethod.POST) public
	 * String handleForm(@RequestParam("name") String
	 * userName, @RequestParam("email") String userEmail,
	 *
	 * @RequestParam("pass") String userPass, Model model) {
	 *
	 * System.out.println("User Name is :" + userName);
	 * System.out.println("User Email is :" + userEmail);
	 * System.out.println("User Password is :" + userPass);
	 *
	 * User user = new User(); user.setName(userName); user.setEmail(userEmail);
	 * user.setPass(userPass); model.addAttribute("Ruser",user);
	 *
	 * return "success"; }
	 */
//	This is second method for send the data from controller(Using @ModelAttribute) to view
	@RequestMapping(path = "/processForm", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {
		System.out.println(user);

		this.userService.createUser(user);

		return "success";
	}
}
