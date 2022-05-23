<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品列表</title>
    <link  href="${pageContext.request.contextPath}/asserts/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/asserts/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/datetimepicker/bootstrap-datetimepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrapValidator.css"/>
    <script src="${pageContext.request.contextPath}/asserts/css/datetimepicker/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/css/datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/css/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/css/datetimepicker/bootstrap-datetimepicker.bn.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/bootstrapValidator.js"></script>
</head>
<style>
    @font-face {
        font-family: "iconfont"; /* Project id 1642656 */
        src: url('${pageContext.request.contextPath}/asserts/css/iconfont.woff2?t=1650111625233') format('woff2'),
        url('${pageContext.request.contextPath}/asserts/css/iconfont.woff?t=1650111625233') format('woff'),
        url('${pageContext.request.contextPath}/asserts/css/iconfont.ttf?t=1650111625233') format('truetype');
    }
    .iconfont {
        font-family: "iconfont" !important;
        font-size: 16px;
        font-style: normal;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
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
        width: 200px;
    }
    .select>select{
        display: inline-block;
        width: 200px;
    }
    .paging{
        margin-top: 20px;
        text-align: left;
    }
    .table-bordered{
        margin-top: 10px;
    }
    .table-bordered tr th{
        text-align: center;
        width: 1%;
    }
    .table-bordered tr td{
        text-align: center;
    }
    /*.table-bordered tr td:last-child{*/
    /*    text-align: center;*/
    /*    width: 18%;*/
    /*}*/
    body.modal-open {
        overflow-y: auto !important;
    }
</style>
<body>

<div class="page_title_navigate">
    <div class="page_title">
        <h2>商品列表</h2>
    </div>
    <div class="select">
        产品类型：<select id="productType1" class="form-control">
                <option value="0">请选择类型</option>
                </select>
        产品名称：<input type="text" class="form-control" placeholder="输入产品名称关键词..." id="productName1">
        产品价格：<input type="text" class="form-control" placeholder="输入产品价格..." id="productPrice" onblur="checkdouble()">
        <button class="btn btn-default" type="button" onclick="moreCondition()">查询</button>
        <button class="btn btn-default" type="button" onclick="add()"  data-toggle="modal" data-target="#myModal1" >添加商品</button>
    </div>
    <div class="table-responsive">
        <table class="table-bordered" id="table">
            <tr>
                <td>
                    <input type="checkbox" id="delChecked" value="0">
                </td>
                <td>缩略图</td>
                <td>&nbsp;产品名称&nbsp;</td>
                <td>产品类型</td>
                <td>单价</td>
                <td>发行商</td>
                <td>出版时间</td>
                <td>库存</td>
                <td>销量</td>
                <td>状态</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>

        </table>
        <div class="paging">
        </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="defaultForm2" class="form-horizontal">
                        <%--产品ID--%>
                        <div class="form-group">
                            <div>
                                <label for="id" class="col-sm-3 control-label">产品编号：</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="id" placeholder="产品编号" name="id" readonly>
                                </div>
                            </div>
                        </div>
                        <%--产品名称--%>
                        <div class="form-group">
                            <div>
                                <label for="productName" class="col-sm-3 control-label">产品名称：</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="productName" placeholder="产品名称" name="productName">
                                </div>
                            </div>
                        </div>
                        <%--产品类型--%>
                        <div class="form-group">
                            <label for="productType" class="col-sm-3 control-label">产品类型：</label>
                            <div class="col-sm-8">
                                <select id="productType" class="form-control" name="category.id">
                                    <option value="0">请选择目录</option>
                                </select>
                            </div>
                        </div>
                        <%--单价--%>
                        <div class="form-group">
                            <label for="price" class="col-sm-3 control-label">单价：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="price" placeholder="单价" name="price">
                            </div>
                        </div>
                        <%--发行商--%>
                        <div class="form-group">
                            <label for="ProductPublish" class="col-sm-3 control-label">发行商：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="ProductPublish" placeholder="发行商" name="publish">
                            </div>
                        </div>
                        <%--商品库存--%>
                        <div class="form-group">
                            <label for="productStoreCount" class="col-sm-3 control-label">商品库存：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="productStoreCount" placeholder="商品库存" name="productStoreCount">
                            </div>
                        </div>
                        <%--商品销量--%>
                        <div class="form-group">
                            <label for="productSaleCount" class="col-sm-3 control-label">商品销量：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="productSaleCount" placeholder="商品销量" name="productSaleCount">
                            </div>
                        </div>
                        <%--商品状态--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">状态:</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline">
                                    <input type="radio" id="productStatus1" name="productStatus" value="1"> 上架
                                </label>
                                <label class="checkbox-inline">
                                    <input type="radio" id="productStatus2" name="productStatus" value="0"> 下架
                                </label>
                            </div>
                        </div>
                        <%--发行日期--%>
                        <div class="form-group">
                            <label for="publishDate" class="col-sm-3 control-label">发行日期：</label>
                            <div class="input-group date form_datetime col-sm-8"
                                 data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1"
                                    style="margin-left: 10px">
                                <input class="form-control" id="publishDate" size="16" type="text"  readonly name="gmtCreate">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                            </div>
                        </div>
<%--                        图片--%>
                        <div class="form-group">
                            <label for="myImage" class="col-sm-2 control-label">封面:</label>
                            <div class="col-sm-10">
                                <input type="file" id="myImage" name="myImage">
                                <img src="" id="Image" style="width: 80px;height: 80px;border-radius: 50%"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateInfo()">保存</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel1">添加商品</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="defaultForm3" class="form-horizontal">
                        <%--产品名称--%>
                        <div class="form-group">
                            <div>
                                <label class="col-sm-3 control-label">产品名称：</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" placeholder="产品名称" name="productName">
                                </div>
                            </div>
                        </div>
                        <%--产品类型--%>
                        <div class="form-group">
                            <label for="productType" class="col-sm-3 control-label">产品类型：</label>
                            <div class="col-sm-8">
                                <select id="productType2" class="form-control" name="category.id">
                                    <option value="0">请选择目录</option>
                                </select>
                            </div>
                        </div>
                        <%--单价--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">单价：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="单价" name="price">
                            </div>
                        </div>
                        <%--发行商--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">发行商：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="发行商" name="publish">
                            </div>
                        </div>
                        <%--商品库存--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">商品库存：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="商品库存" name="productStoreCount">
                            </div>
                        </div>
                        <%--商品销量--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">商品销量：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="商品销量" name="productSaleCount">
                            </div>
                        </div>
                        <%--商品状态--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">状态:</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline">
                                    <input type="radio" name="productStatus" value="1"> 上架
                                </label>
                                <label class="checkbox-inline">
                                    <input type="radio" name="productStatus" value="0"> 下架
                                </label>
                            </div>
                        </div>
                        <%--发行日期--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">发行日期：</label>
                            <div class="input-group date form_datetime col-sm-8"
                                 data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1"
                                 style="margin-left: 10px">
                                <input class="form-control" size="16" type="text"  readonly name="gmtCreate">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                            </div>
                        </div>
                        <%--                        图片--%>
                        <div class="form-group">
                            <label for="myImage" class="col-sm-2 control-label">封面:</label>
                            <div class="col-sm-10">
                                <input type="file" name="myImage">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="add()">保存</button>
                </div>
            </div>
        </div>
    </div>


</div>
<script>
    var nowPage = 1;
    var pageSize = 5;
    var price="";
    var productName="";
    var productTypeId="";

    $(function () {
        showProduct(nowPage,pageSize,price,productName,productTypeId);
    })

    //显示所有产品
    function showProduct(nowPage,pageSize,price,productName,productTypeId) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/Product/productlist",
            data:"nowPage="+nowPage+"&pageSize="+pageSize+"&price="+price+"&productName="+productName+"&productTypeId="+productTypeId,
            dataType:"json",
            contentType:"application/x-www-form-urlencoded",
            success:function (data) {
                let riginalPage=`<tr>
                <td>
                    <input type="checkbox" id="delChecked" value="0">
                </td>
                <td>缩略图</td>
                <td>&nbsp;产品名称&nbsp;</td>
                <td>产品类型</td>
                <td>单价</td>
                <td>发行商</td>
                <td>出版时间</td>
                <td>库存</td>
                <td>销量</td>
                <td>状态</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>`
                $("#table tbody").html(riginalPage)
                for (let json of data["list"]){
                    let context =`
                        <tr>
                            <th>
                                <input type="checkbox" value="`+json["id"]+`" class="delChecked">
                            </th>
                            <th><img src="http://localhost/`+json["thumbnail"]+`" width="80px" height="80px"></th>
                            <th>`+json["productName"]+`</th>
                            <th>`+json["category"].typename+`</th>
                            <th>`+json["price"]+`</th>
                            <th>`+json["publish"]+`</th>
                            <th>`+json["gmtCreate"]+`</th>
                            <th>`+json["productStoreCount"]+`</th>
                            <th>`+json["productSaleCount"]+`</th>
                            <th>`
                    if (json["productStatus"]===1){
                        context+="上架"
                    }else {
                        context+="下架"
                    }
                        context+=`</th>
                            <th>
                                <a class="modify btn btn-info btn-sm" href="#" data-toggle="modal" data-target="#myModal" onclick="loadData(`+json["id"]+`)">修改</a>
                                <a class="remove btn btn-danger btn-sm" href="#" onclick="del(`+json["id"]+`)">删除</a>
                            </th>
                        </tr>
                    `
                    $("#table tbody").append(context)
                }
                var paging = "";
                if (nowPage===1){
                    paging+=`<a href="javascript:void(0)" class="btn btn-sm btn-success" disabled="disabled">上一页</a>`
                }else {
                    paging+=`<a href="javascript:void(0)" onclick="pageTurning(nowPage-1)" class="btn btn-sm btn-success">上一页</a>`
                }
                for (let i=1;i<data.pages+1;i++){
                    if (i===nowPage){
                        paging+=`<a href="javascript:void(0)" onclick="pageTurning(`+i+`)" class="btn btn-sm">`+i+`</a>`
                    }else {
                        paging+=`<a href="javascript:void(0)" onclick="pageTurning(`+i+`)" class="btn btn-sm btn-success">`+i+`</a>`
                    }

                }
                if (nowPage===data.pages){
                    paging+=`<a href="javascript:void(0)" class="btn btn-sm btn-success" disabled="disabled">下一页</a>`
                }else {
                    paging+=`<a href="javascript:void(0)" onclick="pageTurning(nowPage+1)" class="btn btn-sm btn-success">下一页</a>`
                }
                $(".paging").html(paging)
            }
        });
    }

    function pageTurning(currentPage) {
        nowPage=currentPage;
        showProduct(nowPage,pageSize,price,productName,productTypeId);
    }

    //删除
    function del(id) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/Product/del/"+id,
            dataType:"json",
            contentType:"application/x-www-form-urlencoded",
            success:function (data) {
                console.log(data);
                if (data == "1"){
                    alert("删除成功!");
                    showProduct(nowPage,pageSize,price,productName,productTypeId);
                }
            }
        })
    }

    //类型查找
    window.onload = function() {
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
                var myArr = JSON.parse(this.responseText);
                for (var i =0;i<myArr.length;i++){
                    let op = new Option(myArr[i].typename,myArr[i].id)
                    $("#productType").append(op)
                }
                for (var i =0;i<myArr.length;i++){
                    let op = new Option(myArr[i].typename,myArr[i].id)
                    $("#productType1").append(op)
                }
                for (var i =0;i<myArr.length;i++){
                    let op = new Option(myArr[i].typename,myArr[i].id)
                    $("#productType2").append(op)
                }
            }
        }
        xmlhttp.open("GET","${pageContext.request.contextPath}/category/productCategoryList",true);
        xmlhttp.send();
    }

    //输入价格检查
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
    //多条件查询
    function moreCondition() {
        price = document.getElementById("productPrice").value
        productName = document.getElementById("productName1").value
        productTypeId = document.getElementById("productType1").value

        console.log(productTypeId+"------"+price+"----"+productName)
        showProduct(nowPage,pageSize,price,productName,productTypeId);


    }
    //数据反写
    function loadData(id) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/Product/findProductById/"+id,
            dataType:"json",
            contentType:"application/x-www-form-urlencoded",
            success:function (data) {
                $("#id").val(data.id)
                $("#productName").val(data.productName)
                $("#productType").val(data.category.id)
                $("#price").val(data.price)
                $("#ProductPublish").val(data.publish)
                $("#productSaleCount").val(data.productSaleCount)
                if (data.productStatus===1){
                    $("#productStatus1").prop("checked",true);
                }else {
                    $("#productStatus2").prop("checked",true);
                }
                $("#Image").prop("src","http://localhost/"+data.thumbnail)
                $("#productStoreCount").val(data.productStoreCount)
                $("#publishDate").val(data.gmtCreate)
            }
        })
    }

    //时间插件
    $('.form_datetime').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });

    //修改数据
    function updateInfo() {
        // $("#defaultForm2").submit()

        var formData = new FormData($('#defaultForm2')[0])
        console.log(formData.get("id"))
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/Product/proModify",
            data:formData,
            dataType:"json",
            timeout: 10000,
            contentType:false,
            processData:false,
            success:function (data) {
                console.log(data);
                if (data == '1'){
                    alert("修改成功!");
                    showProduct(nowPage,pageSize,price,productName,productTypeId);
                }
            }
        })
    }
    //表单验证
    $(document).ready(function() {
        $('#defaultForm2')
            .bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    product_Name: {
                        validators: {
                            notEmpty: {
                                message: '名称是必需的，不能为空'
                            },
                        }
                    },
                    productId:{
                        validators: {
                            notEmpty: {
                                message: '名称是必需的，不能为空'
                            },
                        }
                    },
                    price: {
                        validators: {
                            notEmpty: {
                                message: '价格是必需的，不能为空'
                            },
                        }
                    },
                    ProductPublish:{
                        validators: {
                            notEmpty: {
                                message: '发行商是必需的，不能为空'
                            },
                        }
                    },
                    publishImage:{
                        validators: {
                            notEmpty: {
                                message: '图片是必需的，不能为空'
                            },
                        }
                    },
                    productStoreCount:{
                        validators: {
                            notEmpty: {
                                message: '库存是必需的，不能为空'
                            },
                        }
                    }
                }
            })
            .on('success.form.bv', function(e) {
                // Prevent form submission
                e.preventDefault();

                // Get the form instance
                var $form = $(e.target);

                // Get the BootstrapValidator instance
                var bv = $form.data('bootstrapValidator');

                // Use Ajax to submit form data
                $.post($form.attr('action'), $form.serialize(), function(result) {
                    console.log("服务器返回的消息："+result);
                    if (result===1){
                        alert("修改成功！")
                        location.reload();
                    } else {
                        alert("修改失败！")
                        history.back();
                    }
                }, 'json');
            });
    });

    //添加商品
    function add() {
        // $("#defaultForm2").submit()

        var formData = new FormData($('#defaultForm3')[0])
        console.log(formData.get("id"))
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/Product/addProduct",
            data:formData,
            dataType:"json",
            timeout: 10000,
            contentType:false,
            processData:false,
            success:function (data) {
                console.log(data);
                if (data == '1'){
                    alert("修改成功!");
                    showProduct(nowPage,pageSize,price,productName,productTypeId);
                }
            }
        })
    }
</script>
</body>
</html>
