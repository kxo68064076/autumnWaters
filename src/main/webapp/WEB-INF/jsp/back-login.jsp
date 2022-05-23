<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrapValidator.css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/asserts/js/bootstrapValidator.js"></script>
</head>
<style>
    html, body {
        /* 让body撑开整个页面 */
        height: 100%;
    }
    body{
        background:#1b6d85;
        overflow:hidden;
    }
    canvas{
        z-index:-1;position:absolute;
    }
    .admin_login{
        position: absolute;
        top: 20%;
        left: 37.9%;
        width:300px;
        height:auto;
        overflow:hidden;
        padding:40px;
        box-shadow:0 -15px 30px #0d957a;
        border-radius:5px;
    }
    .admin_login dt{
        font-size:20px;font-weight:bold;text-align:center;color:#45bda6;text-shadow:0 0 1px #0e947a;margin-bottom:15px;
    }
    .admin_login dt strong{
        display:block;
    }
    .admin_login dt em{
        display:block;font-size:12px;margin-top:8px;
    }
    .admin_login dd{
        margin:5px 0;height:42px;overflow:hidden;position:relative;
    }
    .admin_login dd .login_txtbx{
        font-size:14px;height:26px;line-height:26px;padding:8px 5%;width:90%;text-indent:2em;border:none;background:#5cbdaa;color:white;
    }
    .admin_login dd .login_txtbx::-webkit-input-placeholder {
        color:#f4f4f4;line-height:inherit;
    }
    .admin_login dd .login_txtbx:-moz-placeholder {
        color:#f4f4f4;line-height:inherit;
    }
    .admin_login dd .login_txtbx::-moz-placeholder {
        color:#f4f4f4;line-height:inherit;
    }
    .admin_login dd .login_txtbx:focus{
        background:#55b7a4;
    }
    .admin_login dd:before{
        position:absolute;top:0;left:10px;height:42px;line-height:42px;font-size:20px;color:#0c9076;
    }
    .admin_login dd.user_icon:before{
        content:"u";
    }
    .admin_login dd.pwd_icon:before{
        content:"p";
    }
    .admin_login dd .submit_btn{
        width:100%;height:42px;border:none;font-size:16px;background:#048f74;color:#f8f8f8;
    }
    .admin_login dd .submit_btn:hover{
        background:#0c9076;color:#f4f4f4;
    }
    .row{
        position: absolute;
        top: 30%;
        left: 40%;
    }
</style>
<body>

<div class="row">
    <div class="col-lg-8 col-lg-offset-2">
        <form id="defaultForm1" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/server/login">
            <dl class="admin_login">
                <dt>
                    <strong>后台管理系统</strong>
                    <em>Management System</em>
                </dt>
                <div class="form-group">
                    <div>
                        <input type="text" class="form-control" name="username"  placeholder="请输入用户名"/>
                    </div>
                </div>

                <div class="form-group">
                    <div>
                        <input type="password" class="form-control" name="password" placeholder="请输入密码"/>
                    </div>
                </div>

                <div class="form-group">
                <div class="col-lg-9 col-lg-offset-3">
                    <button class="btn btn-primary" type="submit">立即登录</button>
                </div>
            </div>
            </dl>
        </form>
    </div>
</div>
</body>
<script>

    !function (a) {
        function b(b, d) {
            function e() {
                if (w) {
                    $canvas = a('<canvas class="pg-canvas"></canvas>'),
                        v.prepend($canvas),
                        p = $canvas[0],
                        q = p.getContext("2d"),
                        f();
                    for (var b = Math.round(p.width * p.height / d.density), c = 0; b > c; c++) {
                        var e = new l;
                        e.setStackPos(c),
                            x.push(e)
                    }
                    a(window).on("resize", function () {
                        h()
                    }),
                        a(document).on("mousemove", function (a) {
                            y = a.pageX,
                                z = a.pageY
                        }),
                    B && !A && window.addEventListener("deviceorientation", function () {
                        D = Math.min(Math.max(-event.beta, -30), 30),
                            C = Math.min(Math.max(-event.gamma, -30), 30)
                    }, !0),
                        g(),
                        o("onInit")
                }
            }
            function f() {
                p.width = v.width(),
                    p.height = v.height(),
                    q.fillStyle = d.dotColor,
                    q.strokeStyle = d.lineColor,
                    q.lineWidth = d.lineWidth
            }
            function g() {
                if (w) {
                    s = a(window).width(),
                        t = a(window).height(),
                        q.clearRect(0, 0, p.width, p.height);
                    for (var b = 0; b < x.length; b++)
                        x[b].updatePosition();
                    for (var b = 0; b < x.length; b++)
                        x[b].draw();
                    E || (r = requestAnimationFrame(g))
                }
            }
            function h() {
                for (f(), i = x.length - 1; i >= 0; i--)
                    (x[i].position.x > v.width() || x[i].position.y > v.height()) && x.splice(i, 1);
                var a = Math.round(p.width * p.height / d.density);
                if (a > x.length)
                    for (; a > x.length; ) {
                        var b = new l;
                        x.push(b)
                    }
                else
                    a < x.length && x.splice(a);
                for (i = x.length - 1; i >= 0; i--)
                    x[i].setStackPos(i)
            }
            function j() {
                E = !0
            }
            function k() {
                E = !1,
                    g()
            }
            function l() {
                switch (this.stackPos, this.active = !0, this.layer = Math.ceil(3 * Math.random()), this.parallaxOffsetX = 0, this.parallaxOffsetY = 0, this.position = {
                    x: Math.ceil(Math.random() * p.width),
                    y: Math.ceil(Math.random() * p.height)
                }, this.speed = {}, d.directionX) {
                    case "left":
                        this.speed.x =  + (-d.maxSpeedX + Math.random() * d.maxSpeedX - d.minSpeedX).toFixed(2);
                        break;
                    case "right":
                        this.speed.x =  + (Math.random() * d.maxSpeedX + d.minSpeedX).toFixed(2);
                        break;
                    default:
                        this.speed.x =  + (-d.maxSpeedX / 2 + Math.random() * d.maxSpeedX).toFixed(2),
                            this.speed.x += this.speed.x > 0 ? d.minSpeedX : -d.minSpeedX
                }
                switch (d.directionY) {
                    case "up":
                        this.speed.y =  + (-d.maxSpeedY + Math.random() * d.maxSpeedY - d.minSpeedY).toFixed(2);
                        break;
                    case "down":
                        this.speed.y =  + (Math.random() * d.maxSpeedY + d.minSpeedY).toFixed(2);
                        break;
                    default:
                        this.speed.y =  + (-d.maxSpeedY / 2 + Math.random() * d.maxSpeedY).toFixed(2),
                            this.speed.x += this.speed.y > 0 ? d.minSpeedY : -d.minSpeedY
                }
            }
            function m(a, b) {
                return b ? void(d[a] = b) : d[a]
            }
            function n() {
                v.find(".pg-canvas").remove(),
                    o("onDestroy"),
                    v.removeData("plugin_" + c)
            }
            function o(a) {
                void 0 !== d[a] && d[a].call(u)
            }
            var p,
                q,
                r,
                s,
                t,
                u = b,
                v = a(b),
                w = !!document.createElement("canvas").getContext,
                x = [],
                y = 0,
                z = 0,
                A = !navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry|BB10|mobi|tablet|opera mini|nexus 7)/i),
                B = !!window.DeviceOrientationEvent,
                C = 0,
                D = 0,
                E = !1;
            return d = a.extend({}, a.fn[c].defaults, d),
                l.prototype.draw = function () {
                    q.beginPath(),
                        q.arc(this.position.x + this.parallaxOffsetX, this.position.y + this.parallaxOffsetY, d.particleRadius / 2, 0, 2 * Math.PI, !0),
                        q.closePath(),
                        q.fill(),
                        q.beginPath();
                    for (var a = x.length - 1; a > this.stackPos; a--) {
                        var b = x[a],
                            c = this.position.x - b.position.x,
                            e = this.position.y - b.position.y,
                            f = Math.sqrt(c * c + e * e).toFixed(2);
                        f < d.proximity && (q.moveTo(this.position.x + this.parallaxOffsetX, this.position.y + this.parallaxOffsetY), d.curvedLines ? q.quadraticCurveTo(Math.max(b.position.x, b.position.x), Math.min(b.position.y, b.position.y), b.position.x + b.parallaxOffsetX, b.position.y + b.parallaxOffsetY) : q.lineTo(b.position.x + b.parallaxOffsetX, b.position.y + b.parallaxOffsetY))
                    }
                    q.stroke(),
                        q.closePath()
                },
                l.prototype.updatePosition = function () {
                    if (d.parallax) {
                        if (B && !A) {
                            var a = (s - 0) / 60;
                            pointerX = (C - -30) * a + 0;
                            var b = (t - 0) / 60;
                            pointerY = (D - -30) * b + 0
                        } else
                            pointerX = y, pointerY = z;
                        this.parallaxTargX = (pointerX - s / 2) / (d.parallaxMultiplier * this.layer),
                            this.parallaxOffsetX += (this.parallaxTargX - this.parallaxOffsetX) / 10,
                            this.parallaxTargY = (pointerY - t / 2) / (d.parallaxMultiplier * this.layer),
                            this.parallaxOffsetY += (this.parallaxTargY - this.parallaxOffsetY) / 10
                    }
                    switch (d.directionX) {
                        case "left":
                            this.position.x + this.speed.x + this.parallaxOffsetX < 0 && (this.position.x = v.width() - this.parallaxOffsetX);
                            break;
                        case "right":
                            this.position.x + this.speed.x + this.parallaxOffsetX > v.width() && (this.position.x = 0 - this.parallaxOffsetX);
                            break;
                        default:
                            (this.position.x + this.speed.x + this.parallaxOffsetX > v.width() || this.position.x + this.speed.x + this.parallaxOffsetX < 0) && (this.speed.x = -this.speed.x)
                    }
                    switch (d.directionY) {
                        case "up":
                            this.position.y + this.speed.y + this.parallaxOffsetY < 0 && (this.position.y = v.height() - this.parallaxOffsetY);
                            break;
                        case "down":
                            this.position.y + this.speed.y + this.parallaxOffsetY > v.height() && (this.position.y = 0 - this.parallaxOffsetY);
                            break;
                        default:
                            (this.position.y + this.speed.y + this.parallaxOffsetY > v.height() || this.position.y + this.speed.y + this.parallaxOffsetY < 0) && (this.speed.y = -this.speed.y)
                    }
                    this.position.x += this.speed.x,
                        this.position.y += this.speed.y
                },
                l.prototype.setStackPos = function (a) {
                    this.stackPos = a
                },
                e(), {
                option: m,
                destroy: n,
                start: k,
                pause: j
            }
        }
        var c = "particleground";
        a.fn[c] = function (d) {
            if ("string" == typeof arguments[0]) {
                var e,
                    f = arguments[0],
                    g = Array.prototype.slice.call(arguments, 1);
                return this.each(function () {
                    a.data(this, "plugin_" + c) && "function" == typeof a.data(this, "plugin_" + c)[f] && (e = a.data(this, "plugin_" + c)[f].apply(this, g))
                }),
                    void 0 !== e ? e : this
            }
            return "object" != typeof d && d ? void 0 : this.each(function () {
                a.data(this, "plugin_" + c) || a.data(this, "plugin_" + c, new b(this, d))
            })
        },
            a.fn[c].defaults = {
                minSpeedX: .1,
                maxSpeedX: .7,
                minSpeedY: .1,
                maxSpeedY: .7,
                directionX: "center",
                directionY: "center",
                density: 1e4,
                dotColor: "#666666",
                lineColor: "#666666",
                particleRadius: 7,
                lineWidth: 1,
                curvedLines: !1,
                proximity: 100,
                parallax: !0,
                parallaxMultiplier: 5,
                onInit: function () {},
                onDestroy: function () {}
            }
    }
    (jQuery)

    $(document).ready(function() {
        //粒子背景特效
        $('body').particleground({
            dotColor: '#5cbdaa',
            lineColor: '#5cbdaa'
        });
    });

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
            // .on('success.form.bv', function(e) {
            //     // Prevent form submission
            //     e.preventDefault();
            //
            //     // Get the form instance
            //     var $form = $(e.target);
            //
            //     // Get the BootstrapValidator instance
            //     var bv = $form.data('bootstrapValidator');
            //
            //     // Use Ajax to submit form data
            //     $.post($form.attr('action'), $form.serialize(), function(result) {
            //     }, 'json');
            // });
    });

</script>

</html>