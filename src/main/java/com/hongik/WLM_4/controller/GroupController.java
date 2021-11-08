package com.hongik.WLM_4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/group")
public class GroupController {

    @GetMapping("/grouplist")
    public String group(){
        return "group/grouplist";
    }
}
