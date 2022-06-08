package com.its.yunproject.service;

import com.its.yunproject.dto.BoardIndexDTO;
import com.its.yunproject.repository.BoardIndexRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
