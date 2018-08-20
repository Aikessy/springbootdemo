package com.heikki.springbootdemo.common;

/**
 * @description:自定义响应数据结构
 *  200:成功
 *  500:错误
 *
 */
public class RespJson {
    private int status;
    private String msg;
    private Object data;

    public static RespJson error(String msg){
        return error(msg,null);
    }
    public static RespJson error(Object data){
        return error("错误",data);
    }
    public static RespJson error(String msg,Object data){
        return response(500,msg,data);
    }
    public static RespJson success(){
        return success(null);
    }
    public static RespJson success(Object data){
        return success("成功",data);
    }
    public static RespJson success(String msg,Object data){
        return response(200,msg,data);
    }

    private static RespJson response(int status,String msg,Object data){
        return new RespJson(status,msg,data);
    }

    public RespJson(int status, String msg, Object data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
