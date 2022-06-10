package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;

    @GetMapping("/save")
    public String saveForm(){
        return "/boardPages/save";
    }

    @PostMapping("/save")
    public String save(BoardDTO boardDTO, Model model){
       boolean result = boardService.save(boardDTO);
       if(result){
           model.addAttribute("boardDTO", boardDTO);

           return "redirect:/board/detail?boardTitle="+ boardDTO.getBoardTitle();
       }else{
           return "/boardPages/save";
       }
    }
    @GetMapping("/detail")
    public String detail(@RequestParam("boardTitle") String boardTitle,Model model){
       BoardDTO boardDTO = boardService.detail(boardTitle);

       if(boardDTO != null){
           model.addAttribute("boardDTO", boardDTO);
           return "/boardPages/detail";
       }else{
           return "/boardPages/save";
       }
    }

}
