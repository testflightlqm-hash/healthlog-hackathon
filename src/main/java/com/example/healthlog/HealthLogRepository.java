package com.example.healthlog;

import org.springframework.data.jpa.repository.JpaRepository;

public interface HealthLogRepository extends JpaRepository<HealthLog, Integer> {
}