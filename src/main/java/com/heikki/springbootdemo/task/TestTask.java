package com.heikki.springbootdemo.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * TestTask class
 *
 * @author hj
 * @date 2018/8/29
 */
@Component
public class TestTask {
    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Scheduled(fixedRate = 3000)
    public void executeTask(){
        System.out.println("当前时间:"+sdf.format(new Date(System.currentTimeMillis())));
    }
}
