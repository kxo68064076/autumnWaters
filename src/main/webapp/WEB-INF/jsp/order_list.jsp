<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
        <h2>订单列表</h2>
    </div>
    <div class="select">
<%--        产品类型：<select id="productType1" class="form-control">--%>
<%--                <option value="0">请选择类型</option>--%>
<%--                </select>--%>
<%--        产品名称：<input type="text" class="form-control" placeholder="输入产品名称关键词..." id="productName1">--%>
<%--        产品价格：<input type="text" class="form-control" placeholder="输入产品价格..." id="productPrice" onblur="checkdouble()">--%>
<%--        <button class="btn btn-default" type="button" onclick="moreCondition()">查询</button>--%>
    </div>
    <div class="table-responsive">
        <table class="table-bordered" id="table">
            <tr>
                <td>订单编号</td>
                <td>用户名</td>
                <td>详细地址</td>
                <td>总价</td>
                <td>创建时间</td>
                <td>状态</td>
                <td>操作</td>
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
                        <%--图片--%>
                        <div class="form-group">
                            <label for="thumbnail" class="col-sm-2 control-label">封面:</label>
                            <div class="col-sm-10">
                                <input type="file" id="thumbnail" name="thumbnail">
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


</div>
<script>
    var nowPage = 1;
    var pageSize = 5;

    $(function () {
        showOrder(nowPage,pageSize);
    })

    //显示所有产品
    function showOrder(nowPage,pageSize) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/order/orderList",
            data:"nowPage="+nowPage+"&pageSize="+pageSize,
            dataType:"json",
            contentType:"application/x-www-form-urlencoded",
            success:function (data) {
                let riginalPage=`<tr>
                <td>订单编号</td>
                <td>用户名</td>
                <td>详细地址</td>
                <td>总价</td>
                <td>创建时间</td>
                <td>状态</td>
                <td>操作</td>
            </tr>`
                $("#table tbody").html(riginalPage)
                for (let json of data["list"]){
                    let context =`
                        <tr>
                            <th>`+json["orderNum"]+`</th>
                            <th>`+json["user"].username+`</th>
                            <th>`+json["address"].detailAddress+`</th>
                            <th>`+json["totalPrice"]+`</th>
                            <th>`+json["gmtCreate"]+`</th>
                            <th>`
                    if (json["status"]===1){
                        context+="已付款"
                    }else {
                        context+="未付款"
                    }
                        context+=`</th>
                            <th>
                                <a class="modify btn btn-info btn-sm" href="#">订单详情</a>
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
        showOrder(nowPage,pageSize);
    }

</script>
</body>
</html>
