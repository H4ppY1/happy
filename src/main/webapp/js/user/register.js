layui.use(['form'], function(){
    var $ = layui.$
        ,form = layui.form;

    // form.render();

    //提交
    form.on('submit(userRegister)', function(obj){
        debugger
        var field = obj.field;

        //确认密码
        if(field.password !== field.repass){
            return layer.msg('两次密码输入不一致');
        }

        //是否同意用户协议
        if(!field.agreement){
            return layer.msg('你必须同意用户协议才能注册');
        }

        $.ajax({
            type : "post",
            url : "register.json",
            async : false,
            dataType : "json",
            data : field,
            error:function(XMLHttpRequest, textStatus, errorThrown){
                //通常情况下textStatus和errorThrown只有其中一个包含信息
                this;   //调用本次ajax请求时传递的options参数
            }
        }).done(
            function(result){
                // $("#assetTable").bootstrapTable("load",result);
            });

        // //请求接口
        // admin.req({
        //     url: layui.setter.base + 'json/user/reg.js' //实际使用请改成服务端真实接口
        //     ,data: field
        //     ,done: function(res){
        //         layer.msg('注册成功', {
        //             offset: '15px'
        //             ,icon: 1
        //             ,time: 1000
        //         }, function(){
        //             location.hash = '/user/login'; //跳转到登入页
        //         });
        //     }
        // });

        return false;
    });
});
