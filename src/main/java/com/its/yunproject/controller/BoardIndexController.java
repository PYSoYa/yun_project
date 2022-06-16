package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.dto.EnterpriseDTO;
import com.its.yunproject.service.BoardIndexService;
import com.its.yunproject.service.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/boardIndex")
public class BoardIndexController {
    @Autowired
    private BoardIndexService boardIndexService;
    @Autowired
    private EnterpriseService enterpriseService;

    @GetMapping("/save")
    public String saveForm(){
        return "/boardIndex/mainSave";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute BoardIndexDTO boardIndexDTO, Model model){
        boolean result = boardIndexService.save(boardIndexDTO);
       EnterpriseDTO enterpriseDTO = enterpriseService.enterpriseDetail(boardIndexDTO.getId());
        if(result){
            model.addAttribute("enterpriseDTO", enterpriseDTO);
            model.addAttribute("boardIndex", boardIndexDTO);
            return "/boardPages/save";
        }else{
            return "/boardIndex/mainSave";
        }
    }

    @GetMapping("/findAll")
    public String findAll(Model model){
       List<BoardIndexDTO> boardIndexDTOList = boardIndexService.findAll();
       model.addAttribute("boardIndexList", boardIndexDTOList);
       return "/main/index";

    }


}
