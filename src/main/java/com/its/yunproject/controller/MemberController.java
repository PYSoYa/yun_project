package com.its.yunproject.controller;


import com.its.yunproject.dto.CarrerDTO;
import com.its.yunproject.dto.MemberDTO;
import com.its.yunproject.service.CarrerService;
import com.its.yunproject.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @Autowired
    private CarrerService carrerService;

    @GetMapping("/save")
    public String saveForm(){
        return "/memberPages/save";
    }

    @PostMapping("/save")
    public String save(MemberDTO memberDTO){
       boolean result = memberService.save(memberDTO);
       if(result){
           return "/memberPages/login";
       }else{
           return "/memberPages/save";
       }
    }
    @PostMapping("/duplicateCheck")
    public @ResponseBody String duplicateCheck(@RequestParam("memberId") String memberId){
        String result = memberService.duplicateCheck(memberId);
        return result;
    }
    @GetMapping("/login")
    public String loginForm(){
        return "/memberPages/login";
    }
    @PostMapping("/login")
    public String login(MemberDTO memberDTO, Model model, HttpSession session){

       memberDTO = memberService.login(memberDTO);

       if(memberDTO != null){
           model.addAttribute("login", memberDTO);
           session.setAttribute("loginMemberId", memberDTO.getMemberId());
           session.setAttribute("loginMemberPassword", memberDTO.getMemberPassword());
           session.setAttribute("loginId", memberDTO.getId());
           return "redirect:/";
       }else{
           return "/memberPages/login";
       }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }
    @GetMapping("/myPage")
    public String myPageForm(){
        return "/memberPages/myPage";
    }
    @GetMapping("/findById")
    public String findBYIdd(@RequestParam("id") Long id, Model model){
       MemberDTO memberDTO = memberService.findById(id);
       CarrerDTO carrerDTO = carrerService.findById(id);
       if(memberDTO != null){
           model.addAttribute("carrerDTO", carrerDTO);
           model.addAttribute("memberDTO", memberDTO);
           return "/memberPages/carrer";
       }else{
           return "/main/index";
       }
    }
    @GetMapping("/carrer")
    public String carrerForm(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("memberDTO", memberDTO);
        return "/memberPages/saveCarrer";
    }
    @PostMapping("/carrer")
    public String saveCarrer(@ModelAttribute CarrerDTO carrerDTO){
        boolean result = carrerService.saveCarrer(carrerDTO);
        if(result){
            return "redirect:/";
        }else{
            return "redirect:/";
        }
    }

}
