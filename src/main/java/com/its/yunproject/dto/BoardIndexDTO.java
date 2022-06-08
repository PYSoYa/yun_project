package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardIndexDTO {
    private Long id;
    private String indexName;
    private String indexTitle;
    private String indexArea;
    private String indexMoney;
}
