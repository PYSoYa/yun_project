package com.its.yunproject.service;

import com.its.yunproject.dto.BoardDTO;
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

    public BoardIndexDTO search(Long id) {
        BoardIndexDTO searchList = boardIndexRepository.search(id);
        return searchList;
    }

    public List<BoardIndexDTO> findByName(String indexName) {
        List<BoardIndexDTO> boardIndexDTOList = boardIndexRepository.findByName(indexName);
        return boardIndexDTOList;
    }

    public BoardIndexDTO findById(Long id) {
       BoardIndexDTO boardIndexDTO = boardIndexRepository.findById(id);
       return boardIndexDTO;
    }

    public boolean delete(Long id) {
        int result = boardIndexRepository.delete(id);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }
}
