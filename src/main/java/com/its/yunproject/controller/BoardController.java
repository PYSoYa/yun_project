package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.service.BoardIndexService;
import com.its.yunproject.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;

    @Autowired
    private BoardIndexService boardIndexService;

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
    @GetMapping("/searchDetail")
    public String searchDetail(@ModelAttribute BoardDTO boardDTO, Model model){

       BoardDTO boardDTO1 = boardService.searchDetail(boardDTO);

       if(boardDTO1 != null){
           model.addAttribute("boardDTO", boardDTO1);
           return "/boardPages/detail";
       }else{
           return "redirect:/";
       }
    }

    @GetMapping("/search")
    public String search(@RequestParam String q, Model model){
        List<BoardDTO> boardDTO = boardService.search(q);
        List<BoardIndexDTO> boardIndexDTOList = new ArrayList<>();

        if(boardDTO != null) {
            for (int i = 0; i < boardDTO.size(); i++) {
                boardIndexDTOList.add(boardIndexService.search(boardDTO.get(i).getId()));
            }
            System.out.println("boardIndexDTOList = " + boardIndexDTOList);
            model.addAttribute("boardIndexList", boardIndexDTOList);
            return "/boardPages/list";
        }else{
            return "redirect:/";
        }
    }
}
