package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardIndexDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/boardIndex")
public class BoardIndexController {
//    @Autowired
//    private

    @GetMapping("/save")
    public String saveForm(){
        return "/boardIndex/mainSave";
    }
    @PostMapping
    public String save(@ModelAttribute BoardIndexDTO boardIndexDTO){
        boolean result =
    }
}
