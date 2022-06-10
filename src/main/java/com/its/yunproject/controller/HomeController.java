package com.its.yunproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String index(){
        return "redirect:/boardIndex/findAll";
    }

    @GetMapping("/homeLogin")
    public String login(){
        return "/main/login";
    }

    @GetMapping("/mainSave")
    public String save(){
        return "/main/save";
    }
}
