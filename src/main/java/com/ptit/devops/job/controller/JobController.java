package com.ptit.devops.job.controller;

import com.ptit.devops.job.entity.job;
import com.ptit.devops.job.repository.jobRepository;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class jobController {

    private final jobRepository repository;

    public jobController(jobRepository repository) {
        this.repository = repository;
    }

    /** GET /api/jobs - danh sách công việc  */
    @GetMapping("/jobs")
    public List<job> findAll() {
        return repository.findAll(Sort.by("id"));
    }
}
