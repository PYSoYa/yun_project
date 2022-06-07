package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardDTO {
    private Long id;
    private String boardName;
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
    private String boardEnterPriseName;
    private String boardAddress;
    private String boardManagerName;
    private String boardEmail;
    private String boardMobile;
}
