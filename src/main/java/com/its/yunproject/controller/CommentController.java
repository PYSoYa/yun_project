package com.its.yunproject.controller;

import com.its.yunproject.dto.CommentDTO;
import com.its.yunproject.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.xml.stream.events.Comment;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @GetMapping("/save")
    public String saveForm(@RequestParam("boardTitle") String boardTitle){
        return "redirect:/comment/save?boardTitle=" + boardTitle;
    }

    @PostMapping("/save")
    public @ResponseBody List<CommentDTO> save(@ModelAttribute CommentDTO commentDTO){
       boolean booleanResult = commentService.save(commentDTO);
       if(booleanResult){
          List<CommentDTO> result = commentService.findAll(commentDTO.getBoardId());
           return result;
       }else{
           return null;
       }

    }
}
