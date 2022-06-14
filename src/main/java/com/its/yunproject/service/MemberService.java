package com.its.yunproject.service;

import com.its.yunproject.dto.MemberDTO;
import com.its.yunproject.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    public String duplicateCheck(String memberId) {
        String result = memberRepository.duplicateCheck(memberId);
        if(result == null){
            return "ok";
        }else{
            return "no";
        }
    }

    public MemberDTO login(MemberDTO memberDTO) {
       MemberDTO memberDTO1 = memberRepository.login(memberDTO);
       return memberDTO1;
    }

    public MemberDTO findById(Long id) {
       MemberDTO memberDTO = memberRepository.findById(id);
       return memberDTO;
    }

    public MemberDTO memberDetail(Long id) {
        MemberDTO memberDTO = memberRepository.memberDetail(id);
        return memberDTO;
    }

    public MemberDTO delete(Long id) {
       MemberDTO memberDTO = memberRepository.delete(id);
       return memberDTO;
    }
}
