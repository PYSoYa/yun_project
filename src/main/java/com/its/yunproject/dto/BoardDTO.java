package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardDTO {
    private Long id;
    private String boardName;
    private String boardImg;
    private MultipartFile boardImgFile;
    private String boardTitle;
    private String boardOccupation;
    private String boardDemploymentType;
    private String boardMoney;
    private int boardPersonnel;
    private String boardWorkperiod;
    private String boardWorkDays;
    private String boardWorktime;
    private String boardGender;
    private int boardAge;
    private String boardEducation;
    private String boardDeadline;
    private String boardContext;
    private int boardAddress;
    private String boardAddress1;
    private String boardManagerName;
    private String boardEmail;
    private String boardMobile;
    private Timestamp boardDate;
}

