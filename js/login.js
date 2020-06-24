$(function() {
    $("#lg").click(function() {
        var username = $("#user").val();
        var password = $("#passwd").val();
        if (username == ""){
            alert("请输入用户名！");
            return;
        }
        if (password == ""){
            alert("请输入密码！");
            return;
        }
        $.ajax({
            url: "../php/login.php",
            type: "POST",
            data: {
                "usr": username, //用户名
                "pw": password //密码
            },
            dataType: "json",
            success: function(ret) {
                if (ret.code == 0){
                    alert("数据库查询失败！");
                }
                else if (ret.ok == 1) {
                    window.location.href = '../index/module.html?uid='+ret.uid[0];
                } else {
                    alert("用户名或密码不正确!");
                }
            },
            error: function(ret) {
                alert("error!");
            }
        });
    });
});