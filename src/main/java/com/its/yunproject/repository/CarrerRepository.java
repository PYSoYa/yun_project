package com.its.yunproject.repository;

import com.its.yunproject.dto.CarrerDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CarrerRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int saveCarrer(CarrerDTO carrerDTO) {
        return sql.insert("Carrer.save", carrerDTO);
    }

    public CarrerDTO findById(Long id) {
        return sql.selectOne("Carrer.findById", id);
    }
}
