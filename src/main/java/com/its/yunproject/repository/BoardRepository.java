package com.its.yunproject.repository;

import com.its.yunproject.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(BoardDTO boardDTO) {
        return sql.insert("Board.save", boardDTO);
    }

    public BoardDTO detail(Long id) {
        return sql.selectOne("Board.detail", id);
    }

    public BoardDTO searchDetail(BoardDTO boardDTO) {
        return sql.selectOne("Board.searchDetail", boardDTO);
    }

    public List<BoardDTO> search(String q) {
        return sql.selectList("Board.search", q);
    }


    public int delete(Long id) {
        return sql.delete("Board.delete", id);
    }
}
