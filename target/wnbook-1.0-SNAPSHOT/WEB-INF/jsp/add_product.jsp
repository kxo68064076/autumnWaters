<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <script src="JS/jQuery-1.12.4.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <link rel="stylesheet" href="CSS/bootstrap.css"/>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
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
        width: 30%;
        margin: 0 auto;
    }
</style>
<body>
<div class="page_title_navigate">
    <div class="page_title">
        <h2>新增商品</h2>
    </div>
    <div class="page_body">
        <form id="defaultForm1" method="post" class="form-horizontal" action="./addproduct">
            <div class="form-group">
                <label for="exampleInputFile">选择图片</label>
                <input type="file" id="exampleInputFile" name="filePath">
                <p class="help-block">添加用户头像</p>
            </div>

            <div class="form-group">
                <div>
                    <label for="productName">产品名称</label>
                    <input type="text" class="form-control" name="productName"  placeholder="请输入产品名称" id="productName"/>
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label for="productType">产品类型</label>
                    <input type="password" class="form-control" name="productType" placeholder="手机：1 笔记本电脑：2 智能穿戴：3 平板电脑：4" id="productType"/>
                </div>
            </div>

            <div class="form-group">
                <div>
                    <label for="Price">产品价格</label>
                    <input type="text" class="form-control" name="Price" placeholder="请输入产品价格" id="Price"/>
                </div>
            </div>

            <div class="col-lg-9 col-lg-offset-10">
                <button class="btn btn-primary" type="submit">添加</button>
            </div>
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
                    productName: {
                        message: 'The username is not valid',
                        validators: {
                            notEmpty: {
                                message: '产品名称是必需的，不能为空'
                            },
                        }
                    },
                    productType: {
                        validators: {
                            notEmpty: {
                                message: '产品类型是必需的，不能为空'
                            },
                            stringLength: {
                                min: 1,
                                max: 1,
                                message: '只需要输入一位'
                            },
                            regexp:{
                                regexp: /^[0-9]+$/,
                                message:'手机：1 笔记本电脑：2 智能穿戴：3 平板电脑：4'
                            }
                        }
                    },
                    Price: {
                        validators: {
                            notEmpty: {
                                message: '产品价格是必需的，不能为空'
                            },
                            regexp:{
                                regexp: /^[0-9]+$/,
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
                        alert("商品添加失败！")
                    }else {
                        alert("商品添加成功！")
                    }
                }, 'json');
            });
    });
</script>
</html>