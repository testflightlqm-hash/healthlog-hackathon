package com.example.healthlog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/health-logs")
public class HealthLogController {

    @Autowired
    private HealthLogRepository repository;

    @GetMapping
    public List<HealthLog> getAllLogs() {
        return repository.findAll();
    }

    @PostMapping
    public HealthLog createLog(@RequestBody HealthLog log) {
        log.setRiskLevel(calculateRiskLevel(log.getSleepHours(), log.getSteps(), log.getMoodScore()));
        return repository.save(log);
    }

    private String calculateRiskLevel(double sleep, int steps, int mood) {
        if (sleep < 6.0) { 
            if (steps < 4000) return "高";
            else return mood <= 4 ? "高" : "中";
        } else {
            if (steps >= 6000) return mood >= 6 ? "低" : "中";
            else return mood <= 4 ? "中" : "低";
        }
    }
}