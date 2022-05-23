<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>所有用户</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <script src="JS/jQuery-1.12.4.js"></script>
    <script src="JS/bootstrap.min.js"></script>
</head>
<style>
    @font-face {
        font-family: "iconfont"; /* Project id 1642656 */
        src: url('../CSS/iconfont.woff2?t=1650111625233') format('woff2'),
        url('../CSS/iconfont.woff?t=1650111625233') format('woff'),
        url('../CSS/iconfont.ttf?t=1650111625233') format('truetype');
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
        width: 15%;
    }
    /*.table-bordered tr td:last-child{*/
    /*    text-align: center;*/
    /*    width: 10%;*/
    /*}*/
    /*.table-bordered tr td a{*/
    /*    width: 100%;*/
    /*    font-size: 16px;*/
    /*}*/
</style>
<body>
<div class="page_title_navigate">
    <div class="page_title">
        <h2>所有用户</h2>
    </div>
    <div class="select">
        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                会员等级
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">普通会员</a></li>
                <li><a href="#">管理员</a></li>
            </ul>
        </div>
        <input type="text" class="form-control" placeholder="输入用户名或者id查询...">
        <button class="btn btn-default" type="submit">查询</button>
    </div>
    <div class="table-responsive">
        <table class="table-bordered">
            <tr>
                <td>id</td>
                <td>品类</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <c:if test="${Category!=null}">
                <c:forEach items="${Category}" var="c">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.typename}</td>
                        <td>
                            <a class="modify btn btn-info btn-sm" href="javascript:void(0)">修改</a>
                            <a class="remove btn btn-danger btn-sm" href="javascript:void(0)">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>



        </table>
        <div class="paging">
            <c:if test="${currentPage==1}">
                <a href="#" class="btn btn-sm btn-success" disabled="disabled">上一页</a>
            </c:if>
            <c:if test="${currentPage>1}">
                <a href="./productCategoryList?currentPage=${currentPage}&pageSize=5&page=pre" class="btn btn-sm btn-success">上一页</a>
            </c:if>
            <c:forEach begin="1" end="${pages}" var="page">
                <c:if test="${page==currentPage}">
                    <a href="./productCategoryList?currentPage=${page}&pageSize=5" class="btn btn-sm">${page}</a>
                </c:if>
                <c:if test="${page!=currentPage}">
                    <a href="./productCategoryList?currentPage=${page}&pageSize=5" class="btn btn-sm btn-success">${page}</a>
                </c:if>
            </c:forEach>
            <c:if test="${currentPage==pages}">
                <a href="#" class="btn btn-sm btn-success" disabled="disabled">下一页</a>
            </c:if>
            <c:if test="${currentPage<pages}">
                <a href="./productCategoryList?currentPage=${currentPage}&pageSize=5&page=next" class="btn btn-sm btn-success">下一页</a>
            </c:if>
        </div>
    </div>

</div>
<script>
    //删除
    $("td a[class='remove btn btn-danger btn-sm']").click(function () {
        var id;
        $(this).parents("td").siblings("td").each(function (index, obj) {
            if (index === 0) {
                id = obj.innerHTML;
                location.href = "./modifyProductCategoryInfo?&op=delete&id="+id
            }
        })
        $(this).parents("tr").remove()
    })
    //选择产品类型
    $(".dropdown-menu li a").click(function () {
        console.log($(this).html())
    })
    //修改
    $("td a[class='modify btn btn-info btn-sm']").click(function () {
        var id;
        var categoryName;
        if ($(this).html() === "修改") {
            $(this).parents("td").siblings("td").each(function (index, obj) {
                if (index > 0) {
                    obj.innerHTML = '<input type="text" value="' + obj.innerText + '">'
                }
            })
            $(this).html("确定")

        } else {
            $(this).parents("td").siblings("td").each(function (index, obj) {
                if (index === 0) {
                    id = obj.innerHTML;
                }
                if (index === 1) {
                    obj.innerHTML = obj.querySelector("input").value
                    categoryName = obj.innerHTML
                }
            })
            $(this).html("修改")
            location.href = "./modifyProductCategoryInfo?op=modify&categoryName=" + categoryName+"&id=" + id;

        }
    })
</script>
</body>
</html>