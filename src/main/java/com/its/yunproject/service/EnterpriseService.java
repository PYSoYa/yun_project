package com.its.yunproject.service;

import com.its.yunproject.dto.EnterpriseDTO;
import com.its.yunproject.repository.EnterpriseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Service
public class EnterpriseService {
    @Autowired
    private EnterpriseRepository enterpriseRepository;

    public void save(EnterpriseDTO enterpriseDTO) throws IOException {
        MultipartFile enterpriseProfile1 = enterpriseDTO.getEnterpriseProfile();
        String enterpriseProfile = enterpriseProfile1.getOriginalFilename();
        enterpriseProfile = System.currentTimeMillis() + "-" + enterpriseProfile;
        String savePath = "D:\\spring_img\\" + enterpriseProfile;

        if(!enterpriseProfile1.isEmpty()){
            enterpriseDTO.setEnterpriseProfile(enterpriseProfile1);
            enterpriseProfile1.transferTo(new File(savePath));
        }
        enterpriseRepository.save(enterpriseDTO);
    }

    public String duplicateCheck(String enterpriseId) {
        String result = enterpriseRepository.duplicateCheck(enterpriseId);
        if(result == null){
            return "ok";
        }else{
            return "no";
        }
    }

    public EnterpriseDTO login(EnterpriseDTO enterpriseDTO) {
       EnterpriseDTO enterpriseDTO1 = enterpriseRepository.login(enterpriseDTO);
       return enterpriseDTO1;
    }
}
