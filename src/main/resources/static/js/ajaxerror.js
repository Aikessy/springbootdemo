$.ajax({
    url:"/getAjaxerror",
    type:"post",
    async:false,
    success:function (data) {
        if(data.status == 200){
            $('#content').text(data);
        }else{
            $('#content').text('出现异常:'+data.msg);
        }
    },
    error:function (response,ajaxOptions,thrownError) {
        $('#content').text(thrownError);
    }
});