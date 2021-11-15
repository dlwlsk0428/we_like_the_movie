package com.hongik.WLM_4.controller;

import com.hongik.WLM_4.dao.MemberDao;
import com.hongik.WLM_4.dto.MemberDto;
import com.hongik.WLM_4.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/about/introduce")
    public String introduce(){
        return "/about/introduce";
    }
}
