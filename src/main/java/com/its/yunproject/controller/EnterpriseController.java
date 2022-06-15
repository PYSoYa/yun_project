package com.its.yunproject.controller;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.dto.EnterpriseDTO;
import com.its.yunproject.service.BoardIndexService;
import com.its.yunproject.service.BoardService;
import com.its.yunproject.service.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
    @Autowired
    private EnterpriseService enterpriseService;

    @Autowired
    private BoardIndexService boardIndexService;

    @Autowired
    private BoardService boardService;

    @GetMapping("/save")
    public String saveForm(){
        return "/enterprisePages/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute EnterpriseDTO enterpriseDTO) throws IOException {
       enterpriseService.save(enterpriseDTO);
       return "/main/index";
    }

    @PostMapping("/duplicateCheck")
    public @ResponseBody String duplicateCheck(@RequestParam("enterpriseId") String enterpriseId){
       String result = enterpriseService.duplicateCheck(enterpriseId);
       return result;
    }
    @GetMapping("/login")
    public String loginForm(){
        return "/enterprisePages/login";
    }
    @PostMapping("/login")
    public String login(@ModelAttribute EnterpriseDTO enterpriseDTO, Model model,
                        HttpSession session){

        enterpriseDTO = enterpriseService.login(enterpriseDTO);

       if(enterpriseDTO != null){
           model.addAttribute("login", enterpriseDTO);
           session.setAttribute("loginEnterpriseId",enterpriseDTO.getEnterpriseId());
           session.setAttribute("loginEnterprisePassword",enterpriseDTO.getEnterprisePassword());;
           session.setAttribute("enterpriseLoginId", enterpriseDTO.getId());
           session.setAttribute("enterpriseName", enterpriseDTO.getEnterpriseName());
           return "redirect:/";
       }else{
           return "/enterprisePages/login";
       }


    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/enterpriseDetail")
    public String enterpriseDetail(@RequestParam("id") Long id,
                                    Model model){
        EnterpriseDTO enterpriseDTO = enterpriseService.enterpriseDetail(id);

        List<BoardIndexDTO> boardIndexDTOList;
        boardIndexDTOList = boardIndexService.findByName(enterpriseDTO.getEnterpriseName());
        if(enterpriseDTO != null){

            model.addAttribute("enterpriseDTO", enterpriseDTO);
            model.addAttribute("boardIndexDTOList", boardIndexDTOList);
            return "/enterprisePages/enterpriseDetail";
        }else{
            return "redirect:/";
        }
    }
    @PostMapping("/enterpriseDelete")
    public String enterpriseDelete(@RequestParam("id") Long id){
        boolean result = enterpriseService.enterpriseDelete(id);
        if(result){
            return "redirect:/";
        }else{
            return "redirect:/enterprise/enterpriseDetail?id="+ id;
        }
    }

}
