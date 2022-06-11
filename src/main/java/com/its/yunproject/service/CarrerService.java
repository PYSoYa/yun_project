package com.its.yunproject.service;

import com.its.yunproject.dto.CarrerDTO;
import com.its.yunproject.repository.CarrerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarrerService {
    @Autowired
    private CarrerRepository carrerRepository;

    public boolean saveCarrer(CarrerDTO carrerDTO){
        int result = carrerRepository.saveCarrer(carrerDTO);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    public CarrerDTO findById(Long id) {
        CarrerDTO carrerDTO = carrerRepository.findById(id);
        return carrerDTO;
    }
}
