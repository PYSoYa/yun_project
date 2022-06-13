package com.its.yunproject.service;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;

    public boolean save(BoardDTO boardDTO) {
        int result = boardRepository.save(boardDTO);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    public BoardDTO detail(String boardTitle) {
       BoardDTO boardDTO = boardRepository.detail(boardTitle);
       return boardDTO;
    }

    public BoardDTO searchDetail(BoardDTO boardDTO) {
        BoardDTO boardDTO1 = boardRepository.searchDetail(boardDTO);
        return boardDTO1;
    }

    public BoardDTO search(String q) {
        BoardDTO searchList = boardRepository.search(q);
        return searchList;
    }
}
