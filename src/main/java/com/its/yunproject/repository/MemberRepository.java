package com.its.yunproject.repository;

import com.its.yunproject.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Member;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
     return sql.insert("Member.save", memberDTO);
    }

    public String duplicateCheck(String memberId) {
        return sql.selectOne("Member.duplicateCheck", memberId);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }

    public MemberDTO findById(Long id) {
        return sql.selectOne("Member.findById", id);
    }

    public MemberDTO memberDetail(Long id){
        return sql.selectOne("Member.memberDetail", id);
    }

    public int delete(Long id) {
        return sql.delete("Member.delete", id);
    }

    public int update(MemberDTO memberDTO) {
        return sql.update("Member.update", memberDTO);
    }
}
