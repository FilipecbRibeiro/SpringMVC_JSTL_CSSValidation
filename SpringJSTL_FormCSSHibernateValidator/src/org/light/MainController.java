package org.light;

import javax.validation.Valid;

import org.light.model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView("userFormView");
		
		/////////////////////////prepare UserModel to use in form////////////////
		UserModel user = new UserModel();
		modelAndView.addObject("usermodel",user);//adding object to send to form in order to be completed with form values!
		return modelAndView;
	}
	
	@PostMapping("/displayUserInfo")
	public ModelAndView displayUserInfo(@ModelAttribute("usermodel")@Valid UserModel user, BindingResult result ) {//receiving object already completed with form's info
															//Note: the @ModelAttribute before UserModel user is Optional!!!!!
															//public ModelAndView displayUserInfo(@ModelAttribute UserModel user)
		//Adding valid annotation to validate the received objec and binding it with result, so if there was any error we can use hasErrors() method to check it!
	
		ModelAndView modelAndView = new ModelAndView("displayUserInfo");
		modelAndView.addObject("usermodel",user);				//adding object and view to modelAndView and forwarding to displayUserInfo.jsp!
		if(result.hasErrors()) {
		//	System.out.println("Something went wrong ");
			ModelAndView repopulatingModelAndView = new ModelAndView("userFormView");
			repopulatingModelAndView.addObject("usermodel",user);
			
			return repopulatingModelAndView;
			
		
		}else {//no errors founded!
			return modelAndView;	
		}
		
	}
	


}
