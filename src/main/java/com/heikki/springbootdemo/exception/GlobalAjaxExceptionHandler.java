package com.heikki.springbootdemo.exception;

import com.heikki.springbootdemo.common.RespJson;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@RestControllerAdvice
public class GlobalAjaxExceptionHandler {

//    @ExceptionHandler(value = Exception.class)
    public RespJson defaultErrorHandler(HttpServletRequest request, HttpServletResponse response, Exception e) {
        e.printStackTrace();

        return RespJson.error(e.getMessage());
    }
}
