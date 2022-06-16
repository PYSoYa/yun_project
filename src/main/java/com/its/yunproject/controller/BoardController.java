package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.dto.CommentDTO;
import com.its.yunproject.service.BoardIndexService;
import com.its.yunproject.service.BoardService;
import com.its.yunproject.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;

    @Autowired
    private BoardIndexService boardIndexService;
    @Autowired
    private CommentService commentService;

    @GetMapping("/save")
    public String saveForm(){
        return "/boardPages/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute BoardDTO boardDTO, Model model) throws IOException {
            boardService.save(boardDTO);
           model.addAttribute("boardDTO", boardDTO);
           return "redirect:/board/detail?id="+ boardDTO.getId();
    }
    @GetMapping("/detail")
    public String detail(@RequestParam("id") Long id, Model model){
       BoardDTO boardDTO = boardService.detail(id);
       List<CommentDTO> commentDTOList = commentService.findAll(boardDTO.getId());
       if(boardDTO != null){
           model.addAttribute("commentDTOList", commentDTOList);
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
    public String search(@RequestParam("q") String q, Model model){
        System.out.println("q = " + q);
        List<BoardDTO> boardDTO = boardService.search(q);
        System.out.println("boardDTO = " + boardDTO);
        List<BoardIndexDTO> boardIndexDTOList = new ArrayList<>();

        if(boardDTO != null) {
            for (int i = 0; i < boardDTO.size(); i++) {
                boardIndexDTOList.add(boardIndexService.search(boardDTO.get(i).getId()));
            }
            model.addAttribute("boardIndexList", boardIndexDTOList);
            return "/boardPages/list";
        }else{
            return "redirect:/";
        }
    }
}
