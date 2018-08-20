package com.heikki.springbootdemo.exception;

import com.heikki.springbootdemo.common.RespJson;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestControllerAdvice
public class GlobalExceptionHandler {
    public static final String ERROR_VIEW = "error";

    @ExceptionHandler(value = Exception.class)
    public Object errorHandler(HttpServletRequest request, HttpServletResponse response,Exception e) {
        e.printStackTrace();

        if(isAjaxRequest(request)){
            return RespJson.error(e.getMessage());
        }else{
            ModelAndView mav = new ModelAndView();
            mav.addObject("exception",e);
            mav.addObject("url",request.getRequestURL());
            mav.setViewName(ERROR_VIEW);
            return mav;
        }
    }

    public static boolean isAjaxRequest(HttpServletRequest request){
        return request.getHeader("X-Requested-With") != null && "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
    }
}
