<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>所有用户</title>
    <link  href="./CSS/bootstrap.css" rel="stylesheet">
    <link  href="./CSS/bootstrap-table.css" rel="stylesheet">
    <script src="./JS/jquery.min.js"></script>
    <script src="./JS/bootstrap.min.js"></script>
    <script src="./JS/bootstrap-table.js"></script>
    <script src="./JS/bootstrap-table-zh-CN.js"></script>

</head>
<style>

    .page_title_navigate>.page_title{
        border-bottom: 1px solid #999999;
    }
    .select{
        margin-top: 10px;
    }
    .select>.dropdown{
        display: inline-block;
        width: 95px;
    }
    .select>input{
        display: inline-block;
        width: 300px;
    }
    .paging{
        margin-top: 20px;
        text-align: left;
    }
    .table-bordered{
        margin-top: 10px;
    }
    .table-bordered tr td{
        text-align: center;
        width: 8%;
    }
    .table-bordered tr td:last-child{
        text-align: center;
        width: 10%;
    }
    .table-bordered tr td a{
        width: 100%;
        font-size: 16px;
    }
</style>
<body>
<div class="page_title_navigate">
    <div class="page_title">
        <h2>产品列表</h2>
    </div>
    <div class="select">
        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                产品类型
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            </ul>
        </div>
        产品名称：<input type="text" class="form-control" placeholder="输入产品名称关键词..." id="productName">
        产品价格：<input type="text" class="form-control" placeholder="输入产品价格..." id="productPrice" onblur="checkdouble()">
        <button class="btn btn-default" type="button" onclick="moreCondition()">查询</button>
    </div>
    <table id="mytable">
    </table>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label for="product_Name" class="col-sm-2 control-label">产品名称</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="product_Name" placeholder="产品名称" name="productName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="productType" class="col-sm-2 control-label">产品类型</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="productType" placeholder="产品类型" name="productType">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="price" class="col-sm-2 control-label">单价</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="price" placeholder="产品类型" name="price">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" data-dismiss="modal" onclick="modify()">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var productId;

    // 使用Bootstrap-table来实现显示所有数据
    $('#mytable').bootstrapTable({
        url: './productlist?op=showAjax',         //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        //queryParams: oTableInit.queryParams,//传递参数（*）
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [5, 10, 25, 50],        //可供选择的每页的行数（*）
        search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
        height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        // showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表
        columns: [{
            checkbox: true
        }, {
            field: 'id',
            title: 'ID'
        }, {
            field: 'thumbnail',
            title: '缩略图',
            formatter:thumbnail
        },{
            field: 'productName',
            title: '产品名称'
        }, {
            field: 'productTypeId',
            title: '产品类型'
        },{
            field: 'price',
            title: '单价'
        },{
            field: 'id',
            title: '操作',
            formatter:action
        }]
    })
    function thumbnail(value) {
        return`
            <img src="`+value+`" alt="" width="80px" height="80px">
        `
    }
    function action(value) {
        return `
          <a class="btn btn-info btn-sm" onclick="edit(`+value+`)" data-toggle="modal" data-target="#myModal">修改</a>
          <a class="btn btn-danger btn-sm" onclick="del(`+value+`)">删除</a>
      `;
    }
    function edit(id){
        var xmlhttp;
        if (window.XMLHttpRequest)
        {
            //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            // IE6, IE5 浏览器执行代码
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                console.log(this.responseText)
                var myArr = JSON.parse(this.responseText);
                for (var i =0;i<myArr.length;i++){
                    document.getElementById("productName").value=myArr[i].productName
                    document.getElementById("productType").value=myArr[i].productTypeId
                    document.getElementById("price").value=myArr[i].price
                    productId=id;
                }
            }
        }

        xmlhttp.open("GET","./productlist?op=byId&findById="+id,true);
        xmlhttp.send();
    }
    function del(id){
        $(this).parents("tr").remove()
        location.href = "./modify?op=delete&id="+id
    }

    function modify() {
        var productName = document.getElementById("productName").value;
        var productType = document.getElementById("productType").value;
        var price = document.getElementById("price").value;
        var id = productId;
        location.href = "./modify?op=three&productName="+productName+"&productType="+productType+"&price="+price+"&id="+id;
    }
    //选择产品类型
    function chooseType(obj) {
        console.log($(obj).html())
        location.href="./productlist?op=showAllProductByTypeName&currentPage=1&pageSize=5&productType="+$(obj).html()
    }

    function checkdouble(){
        var price = document.getElementById("productPrice").value
        var ruler = /^[0-9]+$/
        if (!ruler.test(price)){
            alert("请输入整数!")
            $("button[class='btn btn-default']").attr("disabled",true)
        }else {
            $("button[class='btn btn-default']").attr("disabled",false)
        }
    }

    function moreCondition() {
        var price = document.getElementById("productPrice").value
        var productName = document.getElementById("productName").value

        console.log(price+"----"+productName)
        location.href = "./productlist?currentPage=1&pageSize=5&op=showAllProductByCondition&price="+price+"&productName="+productName

    }

</script>

</body>
</html>