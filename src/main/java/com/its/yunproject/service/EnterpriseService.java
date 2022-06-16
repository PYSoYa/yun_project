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
        MultipartFile enterpriseProfile = enterpriseDTO.getEnterpriseProfile();
        String enterpriseProfileName = enterpriseProfile.getOriginalFilename();
        enterpriseProfileName = System.currentTimeMillis() + "-" + enterpriseProfileName;
        String savePath = "D:\\spring_img\\" + enterpriseProfileName;

        if(!enterpriseProfile.isEmpty()){
            enterpriseDTO.setEnterpriseProfileName(enterpriseProfileName);
            enterpriseProfile.transferTo(new File(savePath));
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


    public EnterpriseDTO enterpriseDetail(Long id) {
        EnterpriseDTO enterpriseDTO = enterpriseRepository.enderpriseDetail(id);
        return enterpriseDTO;
    }

    public boolean enterpriseDelete(Long id) {
        int result = enterpriseRepository.enterpriseDelete(id);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }
}
