package com.hongik.WLM_4.controller;

import com.hongik.WLM_4.dao.MemberDao;
import com.hongik.WLM_4.dto.MemberDto;
import com.hongik.WLM_4.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private MemberService memberService;

    @RequestMapping("/")
    public String index(Model model) throws Exception {
        int id = 1;
        MemberDto memberDto = memberService.viewMember(id);
        model.addAttribute("userName", memberDto.getUserName());
        return "index";
    }

//    @RequestMapping("/index#sidebar")
//    public String sidebar(){ return "index"; }

    @RequestMapping("/about/introduce")
    public String introduce(){
        return "/about/introduce";
    }
}
