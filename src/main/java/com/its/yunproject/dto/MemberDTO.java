package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
    private Long id;
    private String memberId;
    private String memberPassword;
    private String memberName;
    private int memberAge;
    private int memberSecurity;
    private int memberSecurity1;
    private String memberEmail;
    private String memberMobile;
    private MultipartFile memberProfile;
    private String memberProfileName;
    private int memberAddress1;
    private String memberAddress2;
    private String memberAddress3;

}
