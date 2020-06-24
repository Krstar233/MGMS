$(function(){
    var uid = getVars()['uid'];
    $("#goods").click(function(){
        window.location.href = "../index/good_module.html?uid="+uid;
    });
});