package com.its.yunproject.service;

import com.its.yunproject.dto.BoardDTO;
import com.its.yunproject.dto.EnterpriseDTO;
import com.its.yunproject.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;

    public void save(BoardDTO boardDTO) throws IOException {
        MultipartFile boardImgFile = boardDTO.getBoardImgFile();
        String boardImg = boardImgFile.getOriginalFilename();
        boardImg = System.currentTimeMillis() + "-" + boardImg;
        String savePath = "D:\\spring_img\\" + boardImg;

        if(!boardImgFile.isEmpty()){
            boardDTO.setBoardImg(boardImg);
            boardImgFile.transferTo(new File(savePath));
        }
        boardRepository.save(boardDTO);
    }

    public BoardDTO detail(Long id) {
       BoardDTO boardDTO = boardRepository.detail(id);
       return boardDTO;
    }

    public BoardDTO searchDetail(BoardDTO boardDTO) {
        BoardDTO boardDTO1 = boardRepository.searchDetail(boardDTO);
        return boardDTO1;
    }

    public List<BoardDTO> search(String q) {
        List<BoardDTO> searchList = boardRepository.search(q);
        return searchList;
    }


    public boolean delete(Long id) {
        int result = boardRepository.delete(id);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }
}
