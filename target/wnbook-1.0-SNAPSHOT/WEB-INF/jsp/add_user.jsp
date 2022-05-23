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
        width: 40%;
        margin: 0 auto;
    }
</style>
<body>
<div class="page_title_navigate">
    <div class="page_title">
        <h2>新增用户</h2>
    </div>
    <div class="page_body">
        <form id="defaultForm1" method="post" class="form-horizontal"  action="./addUser">
            <div class="form-group">
                <div>
                    <label for="exampleInputFile">选择图片</label>
                    <input type="file" id="exampleInputFile">
                    <p class="help-block">添加用户头像</p>
                </div>
            </div>
            <div class="form-group">
                <div>
                    <label for="exampleInputName">用户名</label>
                    <input type="text" class="form-control" id="exampleInputName" placeholder="用户名" name="rusername">
                </div>
            </div>
            <div class="form-group">
                <div>
                    <label for="exampleInputPassword">用户密码</label>
                    <input type="text" class="form-control" id="exampleInputPassword" placeholder="用户密码" name="password">
                </div>
            </div>
            <div class="form-group">
                <div>
                    <label for="exampleInputPassword">二次确认密码</label>
                    <input type="text" class="form-control" id="exampleInputPassword2" placeholder="二次确认密码" name="rpassword">
                </div>
            </div>
            <div class="form-group">
                <div>
                    <label for="exampleInputLevel">用户权限</label>
                    <input type="text" class="form-control" id="exampleInputLevel" placeholder="0:管理员 1:普通会员" name="root">
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
                    rusername: {
                        message: 'The username is not valid',
                        validators: {
                            notEmpty: {
                                message: '用户名是必需的，不能为空'
                            },
                            stringLength: {
                                min: 3,
                                max: 16,
                                message: '用户名长度必须大于3，小于16个字符'
                            },
                            remote: {
                                url: './addCustomer?op=checkusername'+$('input[name=rusername]').val(),
                                message: '重复的用户名！',
                                // delay:250,
                                type:'get',
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_\.]+$/,
                                message: '用户名只能由字母、数字、“。”和“_”组成'
                            }
                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: '密码是必需的，不能为空'
                            },
                            stringLength: {
                                min: 3,
                                max: 12,
                                message: '密码长度必须大于3，小于12个字符'
                            },
                        }
                    },
                    rpassword: {
                        validators: {
                            notEmpty: {
                                message: '密码是必需的，不能为空'
                            },
                            identical: {
                                field:'rpassword',
                                message: '两次密码不一致'
                            },
                        }
                    },
                    root: {
                        validators: {
                            notEmpty: {
                                message: '权限是必需的，不能为空'
                            },
                            stringLength: {
                                min: 1,
                                max: 1,
                                message: '只需要输入一位'
                            },
                            regexp:{
                                regexp: /^[0-1]+$/,
                                message:'输入数字'
                            }
                        }
                    }
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
                        alert("用户添加失败！")
                    }else {
                        alert("用户添加成功！")
                    }
                }, 'json');
            });
    });
</script>
</html>