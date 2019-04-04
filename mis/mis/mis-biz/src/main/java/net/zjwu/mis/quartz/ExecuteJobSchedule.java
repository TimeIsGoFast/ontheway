package net.zjwu.mis.quartz;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ExecuteJobSchedule {
	
	@Scheduled(cron="0 0/1 * * * ? ")
	public void work(){
		System.out.println("schedule sucess!");
	}
}
