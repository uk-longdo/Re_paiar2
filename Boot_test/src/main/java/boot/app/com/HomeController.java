package boot.app.com;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import boot.app.com.dao.user_dao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	
	@Autowired
	user_dao udao;
	
	
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
	
	@RequestMapping("Sign_up_go")
	public String Sign_up_go() {
		return "Sign_up_go";
	}
	
	//회원가입user_sign
	@RequestMapping("user_sign")
	public String user_sign(String user_id, String user_pw,String user_name, String user_zipcode, String user_addr, String user_addr_dtr, String user_phone, String user_email, String user_gender, String user_birthday) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("user_id", user_id);
		map.put("user_pw", user_pw);
		map.put("user_name", user_name);
		map.put("user_zipcode", user_zipcode);
		map.put("user_addr", user_addr);
		map.put("user_addr_dtr", user_addr_dtr);
		map.put("user_phone", user_phone);
		map.put("user_email", user_email);
		map.put("user_gender", user_gender);
		map.put("user_birthday", user_birthday);
		System.out.println("값 전달?");
		udao.insert_user(map);
		
		return "redirect:/index";
	}
	//로그인 구현
	@RequestMapping("login_go")
	public String login_go(String user_id, String user_pw,  HttpSession ses) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_id", user_id);
		map.put("user_pw", user_pw);
		
		udao.login_te(map);
		
		System.out.println(udao.login_te(map));
		//String login_name = udao.name(map);
		//System.out.println(login_name);
		
		if(udao.login_te(map)==1) {
			System.out.println("ok");
			
			udao.user_info(map); //idx 값
			int info = udao.user_info(map);	//info에 담아준다
			map.put("idx", info);	//idx 에 값넣어줌
			System.out.println(udao.user_info(map));
			
			String login_name = udao.name(map);
			System.out.println(login_name);
			
			ses.setAttribute("user_name", login_name);
			return "index";
			
			
		}else {
			System.out.println("no");
			
			return "redirect:/index";
			
			
		}
		
	}
	
	@RequestMapping("login_out")
	public String login_out(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
}
