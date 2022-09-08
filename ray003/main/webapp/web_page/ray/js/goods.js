// 到商品管理首页
function toGoodsInfoIndex(){
    window.location="/goodsinfo/test486";
}

function myinit(){
    // 获取后端的值 getflagupd 是否为修改页面
    var getflagupd=$("[id=getflagupd]").text();

    // 初始化进入修改页面
    if (getflagupd=="true"){
        $("[id=goodsmanager]").hide();
        $("[id=goodsinfo_upd]").show();
    }else {
        // 初始化进入商品管理主页面
        $("[id=goodsmanager]").show();
        $("[id=goodsinfo_upd]").hide();
    }

    // 单选框设置切换效果
    radioFunction();


}

// 单选框设置切换效果
function radioFunction(){
    // 单选框设置切换效果
    $('input:radio').click(function(){
        var $radio = $(this);
        if ($radio.data('checked')){
            $radio.prop('checked', false);
            $radio.data('checked', false);
        } else {
            $radio.prop('checked', true);
            $radio.data('checked', true);
        }
    })
}
// 查询的方法
function myselect(){

    // 获取查询信息
    var selectmessage =$("#sel_message").val();

    // 把查询信息传后端
    var temp = {'selectmessage': selectmessage};
    $.ajax({
        url: "/goodsinfo/selectGoodsInfobyGoodsName",
        type: "post",
        // 最好是通过字符串转换JSON方法转一下，不然会报莫名其妙的错
        data:JSON.stringify(temp),
        contentType:"application/json",
        // dataType: "text",
        error: function () {
            alert("查找失败-服务器！");
        },
        success: function (result) {
            if (result!=null) {
                // alert("查找成功！");
                // 修改完后重新请求服务器刷新页面
                window.location="/goodsinfo/selectGoodsInfobyGoodsNametemp";
            }else {
                alert("查找失败-客户端！");
            }
        }
    });
}


// 修改保存
function update_save(){
    // 定义一个新的对象
    var goodsinfo=new Object();
    // 给对象属性赋值
    // goodsinfo.id=$("[name='id']").val();
    goodsinfo.id=$("[name='id1']").text();
    goodsinfo.goodsname=$("[name='goodsName']").val();
    goodsinfo.goodssn=$("[name='goodsSN']").val();
    goodsinfo.marketprice=$("[name='marketPrice']").val();
    goodsinfo.realprice=$("[name='realPrice']").val();
    goodsinfo.num=$("[name='num']").val();
    goodsinfo.unit=$("[name='unit']").val();
    goodsinfo.goodsformat=$("[name='goodsFormat']").val();
    var tempflag;
    if (($("[name='state3']").text())=="1"){
        tempflag=$("#state100").prop("checked");
        if (tempflag=="true"){
            goodsinfo.state=1;
        }else {
            goodsinfo.state=2;
        }
    }else {
        tempflag=$("#state400").prop("checked");
        if (tempflag=="true"){
            goodsinfo.state=2;
        }else {
            goodsinfo.state=1;
        }
    }

    goodsinfo.note=$("[name='note']").val();

    // ajax请求后端插入的方法
    $.ajax({
        url: "/goodsinfo/updateGoodsInfo",
        type: "POST",
        data: {goodsinfo: JSON.stringify(goodsinfo)},
        dataType: "text",
        error: function () {
            alert("修改失败-服务器！");
        },
        success: function (result) {
            if (result) {
                alert("修改成功！");
                window.location="/goodsinfo/test486";
            }else {
                alert("修改失败-客户端！");
            }
        }
    });
}





// 验证商品编号是否唯一
function ifGoodsSNOnly(goodsSN) {
    // JSON格式数据
    var temp = {'goodsSN': goodsSN};
    // 返回值，商品编号是否唯一
    var ifgoodsSNonly1;
    // ajax请求后端插入的方法
    $.ajax({
        url: "/goodsinfo/ifGoodsSNOnly",
        type: "POST",
        data: {goodsSN: JSON.stringify(temp)},
        dataType: "text",
        error: function () {
            alert("添加失败-服务器！");
        },
        success: function (result) {
            // 为true商品编号不唯一
            if (result == "true") {
                $("#goodsSN_msg").text("×商品编号已存在");
                $("#goodsSN_msg").css("color", "red");
                ifgoodsSNonly1=true;
            } else {
                // false 商品编号唯一
                $("#goodsSN_msg").text("✓商品编号可使用");
                $("#goodsSN_msg").css("color", "green");
                ifgoodsSNonly1=false;
            }
        },
        // 设置同步，不知道为什么设置异步会有Bug
        async: false,
    });
    // 函数返回值，商品是否唯一
    return ifgoodsSNonly1;
}


// 商品添加 保存按钮功能
function add_save(){
    // 定义一个新的对象
    var goodsinfo=new Object();
    // 给对象属性赋值
    // goodsinfo.id=$("[name='id']").val();
    // 商品名
    goodsinfo.goodsname=$("[name='goodsName']").val();
    // 商品编号
    goodsinfo.goodssn=$("[name='goodsSN']").val();
    // 市场价
    goodsinfo.marketprice=$("[name='marketPrice']").val();
    // 优惠价
    goodsinfo.realprice=$("[name='realPrice']").val();
    // 库存
    goodsinfo.num=$("[name='num']").val();
    // 单位
    goodsinfo.unit=$("[name='unit']").val();
    // 商品规格
    goodsinfo.goodsformat=$("[name='goodsFormat']").val();
    // 商品状态
    goodsinfo.state=$("[name='state']").prop("checked");
    // 商品说明
    goodsinfo.note=$("[name='note']").val();

    // ajax请求后端插入的方法
    $.ajax({
        url: "/goodsinfo/insertGoodsInfo",
        type: "POST",
        data: {goodsinfo: JSON.stringify(goodsinfo)},
        dataType: "text",
        error: function () {
            alert("添加失败-服务器！");
        },
        success: function (result) {
            if (result) {
                alert("添加成功！");
                toGoodsInfoIndex();
            }else {
                alert("添加失败-客户端！");
            }
        }
    });
}

// 更新

