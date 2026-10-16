package com.ptit.devops.job.repository;

import com.ptit.devops.job.entity.job;
import org.springframework.data.jpa.repository.JpaRepository;

public interface jobRepository extends JpaRepository<job, Long> {
}
