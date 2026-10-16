package com.ptit.devops.job.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "jobs")
public class job {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "job_name")
    private String jobName;

    @Column(name = "building")
    private String building;

    @Column(name = "capacity")
    private Integer capacity;

    @Column(name = "equipment")
    private String equipment;

    @Column(name = "status")
    private String status;

    public Long getId() {
        return id;
    }

    public String getjobName() {
        return jobName;
    }

    public String getBuilding() {
        return building;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public String getEquipment() {
        return equipment;
    }

    public String getStatus() {
        return status;
    }
}
