$(function(){
    $('button').click(function(){
        var username = $("#username").val();
        var nickname = $("#nickname").val();
        var passwd = $("#passwd").val();
        var repeat_pswd = $("#repeat_pswd").val();
        if (username == ""){
            alert("请输入用户名!");
            return;
        }
        if (nickname == ""){
            alert("请输入昵称!");
            return;
        }
        if (passwd == ""){
            alert("请输入密码!");
            return;
        }
        if (passwd.length < 6){
            alert("密码长度需至少为6位!");
            return;
        }
        if (passwd != repeat_pswd){
            alert("两次输入的密码不一致!");
            return;
        }
        $.ajax({
            url: "../php/register.php",
            type: 'POST',
            data: {
                "username": username,
                "nickname": nickname,
                "password": passwd
            },
            dataType: 'json',
            success: function(ret){
                if (ret.isset == 1){
                    alert("该用户名已存在！");
                }
                else if (ret.code == 1){
                    alert("插入成功！");
                }else{
                    alert("插入失败！");
                }
            },
            error: function(){
                alert("ERROR!");
            }
        });
    });
});