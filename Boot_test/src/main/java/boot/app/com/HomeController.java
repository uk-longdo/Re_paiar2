package boot.app.com;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Main() {		
		return "index";
	}
	
	@RequestMapping({"/","/index"})
	public String index() {
		
		return "index";
	}
	
	@RequestMapping("Login")
	public String Login() {
		return "Login";
	}
	
	@RequestMapping("Board_intro")
	public String Board_intro() {
		return "Board_intro";
	}
	@RequestMapping("Board_intro2")
	public String Board_intro2() {
		return "Board_intro2";
	}
	
	@RequestMapping("Board_notice")
	public String Board_notice() {
		return "Board_notice";
	}
	
	@RequestMapping("Board_call")
	public String Board_call() {
		return "Board_call";
	}
	
	@RequestMapping("Board_free")
	public String Board_free() {
		return "Board_free";
	}
	
	@RequestMapping("Sign_up")
	public String Sign_up() {
		return "Sign_up";
	}
}
