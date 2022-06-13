package com.its.yunproject.service;

import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.repository.BoardIndexRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardIndexService {
    @Autowired
    private BoardIndexRepository boardIndexRepository;

    public boolean save(BoardIndexDTO boardIndexDTO){
        int result = boardIndexRepository.save(boardIndexDTO);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    public List<BoardIndexDTO> findAll() {
       List<BoardIndexDTO> boardIndexDTOList = boardIndexRepository.findAll();
       return boardIndexDTOList;
    }

    public List<BoardIndexDTO> search(Long id) {
        List<BoardIndexDTO> searchList = boardIndexRepository.search(id);
        return searchList;
    }
}
