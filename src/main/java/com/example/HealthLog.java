package com.example.healthlog;

import jakarta.persistence.*;
import lombok.Data;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "health_logs")
public class HealthLog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @Column(nullable = false)
    private LocalDate logDate;
    
    @Column(nullable = false)
    private Double sleepHours;
    
    @Column(nullable = false)
    private Integer steps;
    
    @Column(nullable = false)
    private Integer moodScore;
    
    private String riskLevel;
}