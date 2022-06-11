package com.its.yunproject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CarrerDTO {
    private Long id;
    private String cs_period;
    private String cs_name;
    private String cs_major;

    private String cb_period;
    private String cb_name;
    private String cb_job;
    private String cb_work;

    private String ca_period;
    private String ca_number;
    private String ca_rank;
    private String ca_major;
    private String ca_name;

    private String cc_period;
    private String cc_rank;
    private String cc_name;
    private String cc_agency;

    private Timestamp carrerDate;
}
