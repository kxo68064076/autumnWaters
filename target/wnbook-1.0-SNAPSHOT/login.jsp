<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/商城登录.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrapValidator.css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/bootstrapValidator.js"></script>
</head>
<style>

</style>
<body>
<!--头部-->
<div class="header">
    <img src="https://game.gtimg.cn/images/lol/v3/logo-public.png" alt="">
    <p class="unlogin">欢迎登录</p>
</div>
<!--中部-->
<div class="middle">
    <div class="middle_content">
        <div class="mi-layout_card">
            <div class="tablelist">
                <a class="login" href="javascript:void(0)">账户登录</a>
                <a class="register" href="javascript:void(0)">注册账号</a>
            </div>
            <!--                登录-->
            <div class="userlogin">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <form id="defaultForm1" method="post" class="form-horizontal" action="./clientlogin">
                            <div class="form-group">
                                <div>
                                    <i class="iconfont">&#xe651;</i>
                                    <input type="text" class="form-control" name="username"  placeholder="请输入用户名"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div>
                                    <i class="iconfont">&#xe600;</i>
                                    <input type="password" class="form-control" name="password" placeholder="请输入密码"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="forget">
                    <a href="#">忘记密码？</a>
                </div>
                <div class="mi-button">
                    <a href="javascript:void(0)" class="login" onclick="loginButton()">
                        <span>登</span>
                        <span>陆</span>
                    </a>
                </div>
            </div>
            <!--                注册-->
            <div class="userregister" style="display: none">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <form id="defaultForm2" method="post" class="form-horizontal" action="./addCustomer">
                            <div class="form-group">
                                <div>
                                    <i class="iconfont">&#xe651;</i>
                                    <input type="text" class="form-control" name="rusername"  placeholder="请输入用户名"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div>
                                    <i class="iconfont">&#xe600;</i>
                                    <input type="password" class="form-control" name="rpassword" placeholder="请输入密码"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div>
                                    <i class="iconfont">&#xe600;</i>
                                    <input type="password" class="form-control" name="d_password" placeholder="请再次输入密码"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="mi-button">
                    <a href="javascript:void(0)" onclick="registerButton()">
                        <span>注</span>
                        <span>册</span>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
<!--尾部-->
<jsp:include page="site-info.jsp"/>
</body>
<script>
    var login = document.querySelector(".login")
    login.onclick = function () {
        var userregister = document.querySelector(".userregister")
        var userlogin = document.querySelector(".userlogin")
        userregister.style.display = "none"
        userlogin.style.display = ""
    }
    var register = document.querySelector(".register")
    register.onclick = function () {
        var userlogin = document.querySelector(".userlogin")
        var userregister = document.querySelector(".userregister")
        userlogin.style.display = "none"
        userregister.style.display = ""
    }

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
                username: {
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
                        /*remote: {
                            url: 'remote.php',
                            message: 'The username is not available'
                        },*/
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
                        }
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
                    location.href="index.jsp";
                }else if (result===2) {
                    alert("密码错误！")
                    history.back();
                }else {
                    alert("用户名不存在！")
                    history.back();
                }
            }, 'json');
        });
    });

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
                    rpassword: {
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
                    d_password:{
                        validators: {
                            notEmpty: {
                                message: '密码是必需的，不能为空'
                            },
                            identical: {
                                field:'rpassword',
                                message: '两次密码不一致'
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
                        location.href="index.jsp";
                    } else {
                        alert("注册失败！")
                        history.back();
                    }
                }, 'json');
            });
    });

    var loginButton = function () {
        $('#defaultForm1').submit()
        // var username = document.querySelector("#username").value
        // var password = document.querySelector("#password").value
        // location.href = "./clientlogin?username="+username+"&password="+password
    }
    //
    var registerButton = function () {
        $('#defaultForm2').submit()
        // var username = document.querySelector("#r_username").value
        // var password = document.querySelector("#r_password").value
        // location.href = "./addCustomer?username=" + username + "&password=" + password
    }
</script>
</html>