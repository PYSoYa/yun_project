package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardIndexDTO {
    private Long id;
    private String indexName;
    private String indexTitle;
    private String indexMoney;
    private int indexArea1;
    private String indexArea2;
    private Timestamp indexDate;

}
