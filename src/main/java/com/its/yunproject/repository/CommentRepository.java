package com.its.yunproject.repository;

import com.its.yunproject.dto.CommentDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommentRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(CommentDTO commentDTO) {
        return sql.insert("Comment.save", commentDTO);
    }

    public List<CommentDTO> findAll(Long id) {
        System.out.println("id = " + id);
        return sql.selectList("Comment.findAll", id);
    }
}
