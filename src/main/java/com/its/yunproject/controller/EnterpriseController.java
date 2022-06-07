package com.its.yunproject.controller;

import com.its.yunproject.dto.EnterpriseDTO;
import com.its.yunproject.service.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
    @Autowired
    private EnterpriseService enterpriseService;

    @GetMapping("/save")
    public String saveForm(){
        return "/enterprisePages/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute EnterpriseDTO enterpriseDTO) throws IOException {
       enterpriseService.save(enterpriseDTO);
       return "/main/index";
    }

    @GetMapping("/duplicateCheck")
    public String duplicateCheck(@RequestParam("enterpriseId") String enterpriseId){
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
       EnterpriseDTO result = enterpriseService.login(enterpriseDTO);
       if(result != null){
           model.addAttribute("login", enterpriseDTO);
           session.setAttribute("loginEnterpriseId",enterpriseDTO.getEnterpriseId());
           session.setAttribute("loginPassword",enterpriseDTO.getEnterprisePassword());;
           session.setAttribute("LoginId", enterpriseDTO.getId());
           return "/main/index";
       }else{
           return "/enterprisePages/login";
       }

    }
}
