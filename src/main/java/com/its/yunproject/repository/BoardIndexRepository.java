package com.its.yunproject.repository;

import com.its.yunproject.dto.BoardIndexDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardIndexRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(BoardIndexDTO boardIndexDTO) {
        return sql.insert("BoardIndex.save", boardIndexDTO);
    }
}
