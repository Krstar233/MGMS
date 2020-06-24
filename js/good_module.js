$(function () {
    var func = "search";
    var page_index = 1; //当前页面数
    var page_count = 1;
    var rows = 20;//一页多少行数据
    var uid = getVars()['uid'];
    var table_data_id;

    //页面一进入就跳转到 查询 模块
    window.onload = function () {
        $("#search").trigger("click");
    }

    function modify_pagebuttom() {
        //配置上下页按钮的显示
        if (page_count == 1) {
            $("#next_page").css({ "display": "none" });
            $("#last_page").css({ "display": "none" });
        } else if (page_index == 1) {
            $("#next_page").css({ "display": "inline-block" });
            $("#last_page").css({ "display": "none" });
        } else if (page_index == page_count) {
            $("#next_page").css({ "display": "none" });
            $("#last_page").css({ "display": "inline-block" });
        } else {
            $("#next_page").css({ "display": "inline-block" });
            $("#last_page").css({ "display": "inline-block" });
        }
    }

    function update_search_table() {
        $("table").html(
            "<tr>\
                <td>编号</td>\
                <td>品名</td>\
                <td>数量</td>\
                <td>单位</td>\
                <td>进价/元</td>\
                <td>售价/元</td>\
                <td>来源</td>\
                <td>备注</td>\
            </tr>\
            "
        );
        var search_post = {
            url: "../php/good_module.php",
            type: 'POST',
            data: {
                "uid": uid,
                "method": "search",
                "page": page_index - 1, //页面数-1（让角标从0开始）
                "rows": rows,     //一页多少行数据
                "search_type": $('#search_type').val(),
                "search_text": $('#search_text').val(),
                "sort_way": $("#sort_way").val(),
                "order": $("#order").html()
            },
            dataType: 'json',
            success: function (ret) {
                if (ret.code == 0) {
                    alert("查询失败！");
                    return;
                }
                //更新表格页面数，数据总行数
                var data_count = ret.data_count;
                page_count = parseInt(data_count / rows) + 1;
                $('#data_count').html(data_count);
                $('#page_count').html(page_count);

                //配置上下页按钮
                modify_pagebuttom();

                //将数据添加到表格
                var nums = ret.good_name.length;
                for (var i = 0; i < nums; i++) {
                    var tr = "<tr>";
                    for (var key in ret) {
                        if (key == "code" || key == "data_count")
                            continue;
                        var item = ret[key][i];
                        if (item == null)
                            item = "";
                        var td = "<td>" + item + "</td>";
                        tr += td;
                    }
                    tr += "</tr>";
                    $("table").append(tr);
                }
            },
            error: function () {
                alert("ERROR");
            }
        }
        return $.ajax(search_post);
    }

    //更新 修改/删除数据 模块
    function update_UD_table() {
        $("table").html(
            "<tr>\
                <td>-</td>\
                <td>编号</td>\
                <td>品名</td>\
                <td>数量</td>\
                <td>单位</td>\
                <td>进价/元</td>\
                <td>售价/元</td>\
                <td>来源</td>\
                <td>备注</td>\
                <td>√</td>\
            </tr>\
            "
        );
        var search_post = {
            url: "../php/good_module.php",
            type: 'POST',
            data: {
                "uid": uid,
                "method": "search",
                "page": page_index - 1, //页面数-1（让角标从0开始）
                "rows": rows,     //一页多少行数据
                "search_type": $('#search_type').val(),
                "search_text": $('#search_text').val(),
                "sort_way": $("#sort_way").val(),
                "order": $("#order").html()
            },
            dataType: 'json',
            success: function (ret) {
                if (ret.code == 0) {
                    alert("查询失败！");
                    return;
                }
                //更新表格页面数，数据总行数
                var data_count = ret.data_count;
                page_count = parseInt(data_count / rows) + 1;
                $('#data_count').html(data_count);
                $('#page_count').html(page_count);

                //配置上下页按钮
                modify_pagebuttom();

                //将数据添加到表格
                var nums = ret.good_name.length;
                
                //保存表格数据
                table_data_id = ret.good_id;

                //更新表格
                for (var i = 0; i < nums; i++) {
                    var tr = "<tr>";
                    tr += "<td class='clickable'>-</td>"
                    for (var key in ret) {
                        if (key == "code" || key == "data_count")
                            continue;
                        var item = ret[key][i];
                        if (item == null)
                            item = "";
                        var td = "<td contentEditable='true'>" + item + "</td>";
                        tr += td;
                    }
                    tr += "<td class='clickable'>√</td>";
                    tr += "</tr>";
                    $("table").append(tr);
                }
            },
            error: function () {
                alert("ERROR");
            }
        }
        $.ajax(search_post);
    }

    function update_inout_table() {
        $("table").html(
            "<tr>\
                <td>编号</td>\
                <td>品名</td>\
                <td>出库数量</td>\
                <td>-</td>\
                <td>数量</td>\
                <td>+</td>\
                <td>入库数量</td>\
                <td>单位</td>\
                <td>进价/元</td>\
            </tr>"
        );
        var post = {
            url: "../php/good_module.php",
            type: 'POST',
            data: {
                "uid": uid,
                "method": "io_goods_search", //更新出/入库表格数据
                "page": page_index - 1,
                "rows": rows,     //一页多少行数据
                "search_type": $('#search_type').val(),
                "search_text": $('#search_text').val(),
                "sort_way": $("#sort_way").val(),
                "order": $("#order").html()
            },
            dataType: 'json',
            success: function (ret) {
                if (ret.code == 0) {
                    alert("查询失败！");
                    return;
                }
                //更新表格页面数，数据总行数
                var data_count = ret.data_count;
                page_count = parseInt(data_count / rows) + 1;
                $('#data_count').html(data_count);
                $('#page_count').html(page_count);

                //配置上下页按钮
                modify_pagebuttom();

                //将数据添加到表格
                var nums = ret.good_name.length;
                for (var i = 0; i < nums; i++) {
                    var tr = "<tr>";
                    for (var key in ret) {
                        if (key == "code" || key == "data_count")
                            continue;
                        if (key == "amount") {
                            tr += "<td contentEditable='true'></td>"
                            tr += "<td class='clickable sub_amount'>-</td>";
                        }
                        var item = ret[key][i];
                        if (item == null)
                            item = "";
                        var td = "<td>" + item + "</td>";
                        tr += td;
                        if (key == "amount") {
                            tr += "<td class='add_amount clickable'>+</td>";
                            tr += "<td contentEditable='true'></td>"
                        }
                    }
                    tr += "</tr>";
                    $("table").append(tr);
                }
            },
            error: function () {
                alert("ERROR");
            }
        }
        $.ajax(post);
    }
    function update_add_table(){
        $("table").html(
            "<tr>\
            <td class='clickable'>+</td>\
            <td>编号</td>\
            <td>品名</td>\
            <td>数量</td>\
            <td>单位</td>\
            <td>进价/元</td>\
            <td>售价/元</td>\
            <td>来源</td>\
            <td>备注</td>\
        </tr>\
        <tr>\
            <td class='clickable'>+</td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
        </tr>"
        );
    }
    function reloadTable() {
        $("#page_index").html(page_index);
        if (func == "search") {
            update_search_table();
        }
        else if (func == "in_out") {
            update_inout_table();
        }
        else if (func == "update") {
            update_UD_table();
        }else if (func == "add"){
            update_add_table();
        }
    }

    $("#search").click(function () {
        //初始化
        $("#last_page").css({ "display": "none" });
        $(this).addClass("m").siblings().removeClass("m");
        $("#subtitle_text").html("查询");
        $("#change_data").css({ "display": "none" });
        $('#data_count').parent().css({ "display": "inline-block" });
        func = "search";
        page_index = 1;

        //更新表
        update_search_table();
    });

    $("#in_out").click(function () {
        $("#last_page").css({ "display": "none" });
        $(this).addClass("m").siblings().removeClass("m");
        $("#subtitle_text").html("货物出/入库");
        $("#change_data").css({ "display": "none" });
        $('#data_count').parent().css({ "display": "inline-block" });
        func = "in_out";
        page_index = 1;

        //更新表
        update_inout_table();
    });

    $("#add").click(function () {

        // 初始化
        $(this).addClass("m").siblings().removeClass("m");
        $("#subtitle_text").html("新增数据");
        $("#change_data").text("确认添加");
        $("#change_data").css({ "display": "inline-block" });
        func = "add";
        data_count = 0;
        page_index = 1;
        page_count = 1;
        $('#data_count').parent().css({ "display": "none" });
        $('#page_count').html(page_count);
        //配置上下页按钮
        modify_pagebuttom();
        
        //配置table
        update_add_table();
        //===初始化完成===
    });

    $("#reload").click(function () {
        page_index = 1;
        reloadTable();
    });

    $("#order").click(function () {
        if ($(this).html() == "正序")
            $(this).html("逆序");
        else
            $(this).html("正序");
    });

    $("#next_page").click(function () {
        if (page_index < page_count) {
            page_index++;
        }
        reloadTable();
    });

    $("#last_page").click(function () {
        if (page_index > 1) {
            page_index--;
        }
        reloadTable();
    });

    $("table").on("click", ".sub_amount", function () {
        var good_id = $(this).prevAll("td:last").text();
        var amount = parseInt($(this).next().text());
        var change_num = $(this).prev().text();
        if (change_num == "")
            change_num = 1;
        var td = $(this);
        $.ajax({
            url: "../php/good_module.php",
            type: 'POST',
            data: {
                'uid': uid,
                'method': 'sub_amount',
                'good_id': good_id,
                'amount': amount,
                'change_num': change_num
            },
            success: function (ret) {
                if (ret.code == 1) {
                    td.next().html(ret.amount);
                }
            },
            error: function () {
                alert("ERROR");
            }
        });
    });
    $("table").on("click", ".add_amount", function () {
        var good_id = $(this).prevAll("td:last").text();
        var amount = parseInt($(this).prev().text());
        var change_num = $(this).next().text();
        if (change_num == "")
            change_num = 1;
        var td = $(this);
        $.ajax({
            url: "../php/good_module.php",
            type: 'POST',
            data: {
                'uid': uid,
                'method': 'add_amount',
                'good_id': good_id,
                'amount': amount,
                'change_num': change_num
            },
            success: function (ret) {
                if (ret.code == 1) {
                    td.prev().text(ret.amount);
                }
            },
            error: function () {
                alert("ERROR");
            }
        });
    });
    $("table").on("click", ".clickable", function () {
        if (func == "add" && $(this).text() == '+') {
            var tr = "<tr>\
            <td class='clickable'>+</td>\
            <td  contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            <td contentEditable='true'></td>\
            </tr>";
            $(this).parent().after(tr);
        }
        else if (func == "update" && $(this).text() == '-') {
            // 删除的编号
            delete_id = $(this).next().text();
            var check_del = confirm("请问是否删除编号为："+delete_id+"的商品？")
            if (!check_del)
                return;
            $.ajax({
                url: '../php/good_module.php',
                type: 'POST',
                data: {
                    "method": "delete_id",
                    "uid": uid,
                    "good_id": delete_id
                },
                dataType: 'json',
                success: function(ret){
                    if (ret.code == 1){
                        alert("数据删除成功！");
                        update_UD_table();
                    }
                    else
                        alert("数据删除成功！");
                },
                error: function(){
                    alert("ERROR!");
                }
            });
        }
        else if (func == "update" && $(this).text() == '√'){
            //求出其第几行(对应table_data_id的下标)
            var index = $(this).parent().prevAll().length - 1;
            var id = table_data_id[index];
            
            //得出所有更新数据
            var td = $(this).prevAll("td:last").next();
            var good_id = td.text(); td = td.next();
            var good_name = td.text(); td = td.next();
            var amount = td.text(); td = td.next();
            var unit = td.text(); td = td.next();
            var in_price = td.text(); td = td.next();
            var out_price = td.text(); td = td.next();
            var position = td.text(); td = td.next();
            var remarks = td.text(); td = td.next();

            $.ajax({
                url: "../php/good_module.php",
                type: 'POST',
                data: {
                    "method": "update",
                    "uid": uid,
                    "id": id, //原始编号（未修改前）
                    "good_id": good_id,
                    "good_name": good_name,
                    "amount": amount,
                    "unit": unit,
                    "in_price": in_price,
                    "out_price": out_price,
                    "position": position,
                    "remarks": remarks
                },
                dataType: 'json',
                success: function(ret){
                    if (ret.code == 1){
                        alert("数据修改成功！");
                        update_UD_table();
                    }
                    else {
                        alert("数据更改失败！");
                    }
                },
                error: function(){
                    alert("ERROR!");
                }
            });
        }
    });
    $("#change_data").click(function () {
        var td = $(".clickable:first");
        var data = {
            "good_id": [],
            "good_name": [],
            "amount": [],
            "unit": [],
            "in_price": [],
            "out_price": [],
            "position": [],
            "remarks": []
        };
        var rows = $("table").find("tr").length - 1;
        for (var i = 0; i < rows; i++) {
            td = td.parent().next().children(".clickable");
            for (var key in data) {
                td = td.next();
                data[key].push(td.text());
            }
        }
        data["method"] = "add_data";
        data["uid"] = uid;
        $.ajax({
            url: "../php/good_module.php",
            type: 'POST',
            data: data,
            dataType: 'json',
            success: function (ret) {
                if (ret.fail_rows.length == 0){
                    alert("数据全部插入成功！");
                }
                else
                    alert("数据添加失败！");
                reloadTable();
            },
            error: function () {
                alert("ERROR!");
            }
        });
    });
    $("#update").click(function () {
        //初始化
        $("#last_page").css({ "display": "none" });
        $(this).addClass("m").siblings().removeClass("m");
        $("#subtitle_text").html("修改/删除数据");
        $("#change_data").css({ "display": "none" });
        $('#data_count').parent().css({ "display": "inline-block" });
        func = "update";
        page_index = 1;

        update_UD_table();
    });
});