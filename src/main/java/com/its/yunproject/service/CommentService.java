package com.its.yunproject.service;

import com.its.yunproject.dto.CommentDTO;
import com.its.yunproject.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.stream.events.Comment;
import java.util.List;

@Service
public class CommentService {
    @Autowired
    private CommentRepository commentRepository;

    public boolean save(CommentDTO commentDTO) {
        int result = commentRepository.save(commentDTO);
            if(result > 0){
                return true;
            }else{
                return false;
            }

    }

    public List<CommentDTO> findAll(Long id) {
        System.out.println("id = " + id);
        List<CommentDTO> result = commentRepository.findAll(id);
        return result;
    }

    public List<CommentDTO> findByWriter(String commentWriter) {
       List<CommentDTO> commentDTOList = commentRepository.findByWriter(commentWriter);
        return commentDTOList;
    }

    public boolean delete(Long id) {
       int result = commentRepository.delete(id);
       if(result > 0){
           return true;
       }else{
           return false;
       }
    }
}
