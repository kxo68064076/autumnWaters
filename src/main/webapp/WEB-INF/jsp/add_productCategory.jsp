<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <link rel="stylesheet" href="CSS/bootstrap.css"/>
    <link rel="stylesheet" href="CSS/bootstrapValidator.css"/>

    <script type="text/javascript" src="JS/jquery.min.js"></script>
    <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    <script type="text/javascript" src="JS/bootstrapValidator.js"></script>
</head>
<style>
    .page_title_navigate>.page_title{
        border-bottom: 1px solid #999999;
    }
    .page_body{
        width: 20%;
        margin: 0 auto;
    }
</style>
<body>
<div class="page_title_navigate">
    <div class="page_title">
        <h2>新增品类</h2>
    </div>
    <div class="page_body">
        <form id="defaultForm1" method="post" class="form-horizontal"  action="./addCategory">
            <div class="form-group">
                <div>
                    <label for="exampleInputName">品类</label>
                    <input type="text" class="form-control" id="exampleInputName" placeholder="用户名" name="categoryName">
                </div>
            </div>
            <button type="submit" class="btn btn-default">添加</button>
        </form>
    </div>
</div>
</body>
<script>
    $(document).ready(function() {
        $('#defaultForm1')
            .bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    categoryName: {
                        message: 'The username is not valid',
                        validators: {
                            notEmpty: {
                                message: '名称是必需的，不能为空'
                            },
                            remote: {
                                url: './addCategory?op=checkcategoryname'+$('input[name=categoryName]').val(),
                                message: '重复的类名！',
                                // delay:250,
                                type:'get',
                            },
                        }
                    },
                },
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
                    if (result===0){
                        alert("品类添加失败！")
                    }else {
                        alert("品类添加成功！")
                    }
                }, 'json');
            });
    });
</script>
</html>