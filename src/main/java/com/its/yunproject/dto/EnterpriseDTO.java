package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EnterpriseDTO {
    private Long id;
    private String enterpriseId;
    private String enterprisePassword;
    private String enterpriseName;
    private String enterpriseEmail;
    private MultipartFile enterpriseProfile;
    private String enterpriseProfileName;
    private String enterpriseMobile;
    private int enterpriseAddress1;
    private String enterpriseAddress2;
    private String enterpriseAddress3;
}
