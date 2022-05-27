package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class PopupController {
	

	@GetMapping("/popup/intro")
	public String popup2()	{
		return "/more/popup2";
		
	}
	
	@GetMapping("/popup/picintro")
	public String popup3()	{
		return "/more/popup3";
	}
}
