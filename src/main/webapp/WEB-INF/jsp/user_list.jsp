<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>所有用户</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/asserts/js/jQuery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/js/bootstrap.min.js"></script>
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
    .table-bordered tr th{
        text-align: center;
        width: 8%;
    }
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
        <input type="text" class="form-control" placeholder="输入用户名或者id查询..." id="username1">
        <button class="btn btn-default" type="button">查询</button>
    </div>
    <div class="table-responsive">
        <table class="table-bordered" id="userTable">
            <tr>
                <td>
                    <input type="checkbox" id="delChecked" value="0">
                </td>
                <td>会员头像</td>
                <td>用户名</td>
                <td>用户密码</td>
                <td>会员等级</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;操作&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
        <div class="paging">
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="defaultForm2" class="form-horizontal">
                    <%--产品ID--%>
                    <div class="form-group">
                        <div>
                            <label for="id" class="col-sm-3 control-label">用户编号：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="id" placeholder="用户编号" name="id" readonly>
                            </div>
                        </div>
                    </div>
                    <%--用户名称--%>
                    <div class="form-group">
                        <div>
                            <label for="username" class="col-sm-3 control-label">用户名称：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="username" placeholder="用户名称" name="username">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-3 control-label">密码：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="password" placeholder="密码" name="password">
                        </div>
                    </div>
                    <%--权限--%>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">权限:</label>
                        <div class="col-sm-10">
                            <label class="checkbox-inline">
                                <input type="radio" id="root1" name="root" value="0"> 管理员
                            </label>
                            <label class="checkbox-inline">
                                <input type="radio" id="root2" name="root" value="1"> 普通用户
                            </label>
                        </div>
                    </div>
                    <%--用户头像--%>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">封面:</label>
                        <div class="col-sm-10">
                            <input type="file" name="myImage">
                            <img src="" id="Image" style="width: 80px;height: 80px;border-radius: 50%"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="updateInfo()" data-dismiss="modal">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script>
    var nowPage = 1;
    var pageSize = 5;

    $(function () {
        showUser(nowPage,pageSize);
    })

    function showUser(nowPage,pageSize) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/User/userList",
            data:"nowPage="+nowPage+"&pageSize="+pageSize,
            dataType:"json",
            contentType:"application/x-www-form-urlencoded",
            success:function (data) {
                let riginalPage=`<tr>
                                    <td>
                                        <input type="checkbox" id="delChecked" value="0">
                                    </td>
                                    <td>会员头像</td>
                                    <td>用户名</td>
                                    <td>用户密码</td>
                                    <td>会员等级</td>
                                    <td>操作</td>
                                    </tr>`
                $("#userTable tbody").html(riginalPage)
                for (let json of data["list"]){
                    let context =`
                        <tr>
                            <th>
                                <input type="checkbox" value="`+json["id"]+`" class="delChecked">
                            </th>
                            <th><img src="http://localhost/`+json["thumbnail"]+`" width="80px" height="80px"></th>
                            <th>`+json["username"]+`</th>
                            <th>`+json["password"]+`</th>
                            <th>`
                    if (json["root"]===1){
                        context+="用户"
                    }else {
                        context+="管理员"
                    }
                    context+=`</th>
                            <th>
                                <a class="modify btn btn-info btn-sm" href="#" data-toggle="modal" data-target="#myModal" onclick="loadData(`+json["id"]+`)">修改</a>
                                <a class="remove btn btn-danger btn-sm" href="#">删除</a>
                            </th>
                        </tr>
                    `
                    $("#userTable tbody").append(context)
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
        showUser(nowPage,pageSize);
    }

    //数据反写
    function loadData(id) {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/User/findUserById/"+id,
            dataType:"json",
            contentType:"application/x-www-form-urlencoded",
            success:function (data) {
                $("#id").val(data.id)
                $("#username").val(data.username)
                $("#password").val(data.password)
                $("#root").val(data.root)
                if (data.root===0){
                    $("#root1").prop("checked",true);
                }else {
                    $("#root2").prop("checked",true);
                }
                $("#Image").prop("src","http://localhost/"+data.thumbnail)
            }
        })
    }

    function updateInfo() {
        // $("#defaultForm2").submit()
        var formData = new FormData($('#defaultForm2')[0])
        console.log(formData.get("id"))
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/User/modifyUser",
            data:formData,
            dataType:"json",
            contentType:false,
            processData:false,
            success:function (data) {
                console.log(data);
                if (data == '1'){
                    alert("修改成功!");
                    showUser(nowPage,pageSize);
                }
            }
        })
    }

    //删除
    $("td a[class='remove btn btn-danger btn-sm']").click(function () {
        $(this).parents("td").siblings("td").each(function (index, obj) {
            if (index === 0) {
                id = obj.innerHTML;
                location.href = "./modifyUserinfo?&op=delete&id="+id
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
        var thumbnail;
        var username;
        var password;
        var root;
        if ($(this).html() === "修改") {
            $(this).parents("td").siblings("td").each(function (index, obj) {
                if (index > 1) {
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
                    thumbnail = obj.innerHTML
                }
                if (index === 2) {
                    obj.innerHTML = obj.querySelector("input").value
                    username = obj.innerHTML;
                }
                if (index === 3) {
                    obj.innerHTML = obj.querySelector("input").value
                    password = obj.innerHTML;
                }
                if (index === 4) {
                    obj.innerHTML = obj.querySelector("input").value
                    root = obj.innerHTML;
                }
            })
            $(this).html("修改")
            location.href = "./modifyUserinfo?op=modify&username=" + username + "&password=" + password + "&root=" + root + "&id=" + id + "&thumbnail=" + thumbnail;
        }
    })
</script>
</body>
</html>