package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    @GetMapping("/save")
    public String saveForm(){
        return "enterprisePages/save";
    }

    @PostMapping("/save")
    public String save(BoardDTO boardDTO){
       boolean result = boardService.save(boardDTO);
       if(result){
           return "/main/index";
       }else{
           return "/boardPages/fail";
       }
    }

}
