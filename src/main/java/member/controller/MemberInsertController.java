package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import dao.MemberDao;
import vo.Member;

@Controller
public class MemberInsertController {
	
	@Autowired
	@Qualifier("mdao")
	private MemberDao mdao;
	
	@GetMapping("/insert.me")
	private String doGet(Model model){
		return "/meInsertForm";
	}
	
	@PostMapping("/insert.me")
	private String doPost(
			@ModelAttribute("member") Member bean, Model model){
		
		int cnt = -1;
		cnt = mdao.InsertData(bean);
		
		return "redirect:/main.ma";
	}
}
