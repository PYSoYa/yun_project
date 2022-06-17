package com.its.yunproject.repository;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.dto.BoardIndexDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardIndexRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(BoardIndexDTO boardIndexDTO) {
        return sql.insert("BoardIndex.save", boardIndexDTO);
    }

    public List<BoardIndexDTO> findAll() {
        return sql.selectList("BoardIndex.findAll");
    }

    public BoardIndexDTO search(Long id) {
        return sql.selectOne("BoardIndex.search", id);
    }

    public List<BoardIndexDTO> findByName(String indexName) {
        return sql.selectList("BoardIndex.findByName", indexName);
    }
    public BoardIndexDTO findById(Long id){
        return sql.selectOne("BoardIndex.findById", id);
    }

    public int delete(Long id) {
        return sql.delete("BoardIndex.delete", id);
    }
}
