package com.its.yunproject.repository;

import com.its.yunproject.dto.EnterpriseDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EnterpriseRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(EnterpriseDTO enterpriseDTO) {
        return sql.insert("Enterprise.save",enterpriseDTO);
    }

    public String duplicateCheck(String enterpriseId) {
        return sql.selectOne("Enterprise.duplicateCheck", enterpriseId);
    }

    public EnterpriseDTO login(EnterpriseDTO enterpriseDTO) {
        return sql.selectOne("Enterprise.login", enterpriseDTO);
    }


}
