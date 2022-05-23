<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--<!DOCTYPE html>-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>手机城</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asserts/css/main.css">
    <script src="${pageContext.request.contextPath}/asserts/js/jQuery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/asserts/js/bootstrap.min.js"></script>
</head>
<style>

</style>
<style>
    #carousel-example-generic{
        margin: 0 auto;
    }
</style>
<body>
    <jsp:include page="site-topbar.jsp"/>
    <div class="home-hero-container">
        <div class="swiper-lazy">
            <!--                <img src="" alt="">-->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74a51ccb0237755ef3ad7021a6e6d43c.png?thumb=1&w=1226&h=460&f=webp&q=90" alt="...">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b717c9c84e44409496e993ed6b526c05.jpg?thumb=1&w=1226&h=460&f=webp&q=90" alt="...">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b3a1561bd0986cd71ca726d3add6a13d.jpg?thumb=1&w=1226&h=460&f=webp&q=90" alt="...">
                        <div class="carousel-caption">
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="iconfont">&#xe659;</span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="iconfont">&#xe658;</span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <ul id="J_categoryList">
                <li>
                    <a href="#">
                        <span>手机</span>
                        <i class="iconfont">&#xe622;</i>
                    </a>
                </li>
                <li><a href="#"><span>电视</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>笔记本&nbsp平板</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>家电</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>出行&nbsp穿戴</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>智能 路由器</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>电源 配件</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>健康 儿童</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>耳机 音箱</span><i class="iconfont">&#xe622;</i></a></li>
                <li><a href="#"><span>生活 箱包</span><i class="iconfont">&#xe622;</i></a></li>
            </ul>
        </div>
    </div>
    <div class="fubiaoti">
        <div class="container">
            <div class="home-hero-sub">
                <div class="home ">
                    <a href="#">
                        <i class="iconfont">&#xe74f;</i>
                        <div>保障服务</div>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe74f;</i>
                        <div>保障服务</div>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe74f;</i>
                        <div>保障服务</div>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe74f;</i>
                        <div>保障服务</div>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe74f;</i>
                        <div>保障服务</div>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe74f;</i>
                        <div>保障服务</div>
                    </a>
                </div>

            </div>
            <div class="home1 home1-1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ab8e5096ac6f08bd632e4d5a15d1792.jpg?w=632&h=340" alt="">
                </a>
            </div>
            <div class="home1 home1-2">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ab8e5096ac6f08bd632e4d5a15d1792.jpg?w=632&h=340" alt="">
                </a>
            </div>
            <div class="home1 home1-3">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0ab8e5096ac6f08bd632e4d5a15d1792.jpg?w=632&h=340" alt="">
                </a>
            </div>

        </div>
    </div>
    <div class="page-main">
        <div class="container1">
            <a href="#">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0e2b43800d3e1ef40470ac04b3e0140b.jpg?thumb=1&w=1226&h=120&f=webp&q=90" alt="">
            </a>

        </div>
        <div class="container2">
            <div>
                <h2>手机</h2>
                <div>
                    <a href="#">
                        <span>查看更多</span>
                        <i class="iconfont">&#xe658;</i>
                    </a>
                </div>
            </div>
        </div>
        <div class="phone">
            <div class="phone1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ac5cafc68c10ce4471869d378f594b52.png?thumb=1&w=234&h=614&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="phone8" id="phoneList">

            </div>
        </div>
        <div class="shouhuan">
            <div>
                <h2>智能穿戴</h2>
                <div>
                    <a href="#">
                        <span>热门</span>
                    </a>
                    <a href="#">
                        <span>穿戴</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="phone">
            <div class="phone1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9895c56a7b792fb9053e3085fc261072.jpg?thumb=1&w=234&h=614&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="phone8" id="smartBraceletList">

            </div>
        </div>
        <div class="shouhuan">
            <div>
                <h2>笔记本 | 平板</h2>
                <div>
                    <a href="#">
                        <span>热门</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="phone">
            <div class="phone1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e9896934bb657c3dd0c548952eb27481.jpg?thumb=1&w=234&h=614&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="phone8" id="computerList">

            </div>
        </div>
        <div class="shouhuan">
            <div>
                <h2>家电</h2>
                <div>
                    <a href="#">
                        <span>热门</span>
                    </a>
                    <a href="#">
                        <span>电视影音</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="jiadian">
            <div class="jiadian1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3d47879ec183e25a36e67e0219636e60.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/229bbaccda43f32f464c0a810b800106.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="jiadian8">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                <h3>Redmi Book Pro 15 2022</h3>
                <span class="intro">全新12代英特尔处理器</span><br>
                <span class="price">5599元起</span>
            </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <div class="more">
                    <a href="#">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b649a329983ad590fde607472f73e55a.jpg?thumb=1&w=100&h=100&f=webp&q=90" alt="">
                        <h3>米家全自动波轮洗衣机8kg</h3>
                        <span class="price">799元起</span>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe619;</i>
                        <div class="more1">
                            浏览更多
                            <small>热门</small>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="shouhuan">
            <div>
                <h2>生活电器</h2>
                <div>
                    <a href="#">
                        <span>扫地机</span>
                    </a>
                    <a href="#">
                        <span>空净</span>
                    </a>
                    <a href="#">
                        <span>清洁</span>
                    </a>
                    <a href="#">
                        <span>风扇</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="jiadian">
            <div class="jiadian1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d0a92bc19df74c4da59563206321320a.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/00c61477413eb05a67b1ec032a148121.png?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="jiadian8">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <div class="more">
                    <a href="#">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/67ec9efd02e20d10c890dc3fa6a4b9eb.jpg?thumb=1&w=100&h=100&f=webp&q=90" alt="">
                        <h3>小米净水器500G增强版</h3>
                        <span class="price">1299元</span>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe619;</i>
                        <div class="more1">
                            浏览更多
                            <small>净水器</small>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="container1">
            <a href="#">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/178d6fbd434af8e9da4e86452449ffa7.jpg?thumb=1&w=1226&h=120&f=webp&q=90" alt="">
            </a>

        </div>
        <div class="shouhuan">
            <div>
                <h2>厨房电器</h2>
                <div>
                    <a href="#">
                        <span>净水器</span>
                    </a>
                    <a href="#">
                        <span>烟灶</span>
                    </a>
                    <a href="#">
                        <span>电饭煲</span>
                    </a>
                    <a href="#">
                        <span>微蒸烤</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="jiadian">
            <div class="jiadian1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/d0a92bc19df74c4da59563206321320a.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/00c61477413eb05a67b1ec032a148121.png?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="jiadian8">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1889916871e84f151975bb83014ea61f.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>Redmi Book Pro 15 2022</h3>
                    <span class="intro">全新12代英特尔处理器</span><br>
                    <span class="price">5599元起</span>
                </a>
                <div class="more">
                    <a href="#">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/67ec9efd02e20d10c890dc3fa6a4b9eb.jpg?thumb=1&w=100&h=100&f=webp&q=90" alt="">
                        <h3>小米净水器500G增强版</h3>
                        <span class="price">1299元</span>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe619;</i>
                        <div class="more1">
                            浏览更多
                            <small>净水器</small>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="shouhuan">
            <div>
                <h2>运动出行</h2>
                <div>
                    <a href="#">
                        <span>平衡车/滑板车</span>
                    </a>
                    <a href="#">
                        <span>运动健身</span>
                    </a>
                    <a href="#">
                        <span>箱包配饰</span>
                    </a>
                    <a href="#">
                        <span>出行工具</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="jiadian">
            <div class="jiadian1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/84fef78042e4056ea589474196780d4e.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ecce1c0d981037e58cfa281a06122249.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="jiadian8">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fe46e9ba1bf939713b0c3c55bf6776b.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>米家充气宝1S</h3>
                    <span class="intro">米家充气宝1S</span><br>
                    <span class="price">199元</span>
                </a>
                <div class="more">
                    <a href="#">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/155d7ee69679d173a034576737577342.jpg?thumb=1&w=100&h=100&f=webp&q=90" alt="">
                        <h3>米家电动精修螺丝刀</h3>
                        <span class="price">199元</span>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe619;</i>
                        <div class="more1">
                            浏览更多
                            <small>出行工具</small>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="container1">
            <a href="#">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/88e35cffc82cd98cd53172460067af17.jpg?thumb=1&w=1226&h=120&f=webp&q=90" alt="">
            </a>

        </div>
        <div class="shouhuan">
            <div>
                <h2>日用百货</h2>
                <div>
                    <a href="#">
                        <span>个护健康</span>
                    </a>
                    <a href="#">
                        <span>电源/线材</span>
                    </a>
                    <a href="#">
                        <span>儿童用品</span>
                    </a>
                    <a href="#">
                        <span>家居床品</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="jiadian">
            <div class="jiadian1">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c5769bd53177a9301113f799fdc8511d.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/65950f83f429f2a05125bea297d8df6b.jpg?thumb=1&w=234&h=300&f=webp&q=90" alt="">
                </a>
            </div>
            <div class="jiadian8">
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <a href="#">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1db0bdebf7a991abf8a307f289491a37.jpg?thumb=1&w=200&h=200&f=webp&q=90" alt="">
                    <h3>8H释压舒弹纤维枕 抗菌对装</h3>
                    <span class="intro">8H释压舒弹纤维枕 抗菌对装</span><br>
                    <span class="price">99元</span>
                </a>
                <div class="more">
                    <a href="#">
                        <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/62ce711a4c595c78dee5e647f1295240.jpg?thumb=1&w=100&h=100&f=webp&q=90" alt="">
                        <h3>8H记忆绵多功能午睡枕</h3>
                        <span class="price">79元</span>
                    </a>
                    <a href="#">
                        <i class="iconfont">&#xe619;</i>
                        <div class="more1">
                            浏览更多
                            <small>净水器</small>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="container2">
            <div>
                <h2>视频</h2>
                <div>
                    <a href="#">
                        <span>查看更多</span>
                        <i class="iconfont">&#xe658;</i>
                    </a>
                </div>
            </div>
        </div>
        <div class="video">
            <a class="container">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e74c4ff741bcdfc5b28a48a43e4edc6d.jpg?thumb=1&w=296&h=180&f=webp&q=90" alt="">
                <i class="iconfont">&#xea6e;</i>
                <h3>2021年春季新品发布会第一场</h3>
            </a>
            <a class="container">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/101b19aca4bb489bcef0f503e44ec866.jpg?thumb=1&w=296&h=180&f=webp&q=90" alt="">
                <i class="iconfont">&#xea6e;</i>
                <h3>2021年春季新品发布会第一场</h3>
            </a>
            <a class="container">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/96563e75833ba4563bd469dd28203b09.jpg?thumb=1&w=296&h=180&f=webp&q=90" alt="">
                <i class="iconfont">&#xea6e;</i>
                <h3>2021年春季新品发布会第一场</h3>
            </a>
            <a class="container">
                <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2fd26bb99b723337a2f8eaba84f7d5bb.jpg?thumb=1&w=296&h=180&f=webp&q=90" alt="">
                <i class="iconfont">&#xea6e;</i>
                <h3>2021年春季新品发布会第一场</h3>
            </a>
        </div>
    </div>
    <jsp:include page="site-footer.jsp"/>
    <jsp:include page="site-info.jsp"/>
    <div class="home-tool-bar">
        <a href="#">
            <i class="iconfont">&#xe674;</i>
        </a>
        <a href="#">
            <i class="iconfont">&#xe651;</i>
        </a>
        <a href="#">
            <i class="iconfont">&#xe673;</i>
        </a>
        <a href="#">
            <i class="iconfont">&#xe88f;</i>
        </a>
        <a href="#">
            <i class="iconfont">&#xe73d;</i>
        </a>
    </div>

</body>
<script>
    function phone() {
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
                var content="";
                for (var i =0;i<myArr.length;i++){
                    content += `
                        <a href="./productlist?op=byId&use=cart&findById=`+myArr[i].id+`">
                            <img src="`+myArr[i].thumbnail+`" alt="" height="200px" width="200px">
                            <h3>`+myArr[i].productName+`</h3>
                            <span class="intro">大电量、大音量、大屏幕</span><br>
                            <span class="price">`+myArr[i].price+`</span>
                        </a>
                    `
                    document.getElementById("phoneList").innerHTML=content
                }
            }
        }
        xmlhttp.open("GET","./productlist?op=findPhone&productType=1",true);
        xmlhttp.send();
    }

    function computer() {
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
                var content="";
                for (var i =0;i<myArr.length;i++){
                    content += `
                        <a href="./productlist?op=byId&use=cart&findById=`+myArr[i].id+`"">
                            <img src="`+myArr[i].thumbnail+`" alt="" height="200px" width="200px">
                            <h3>`+myArr[i].productName+`</h3>
                            <span class="intro">大电量、大音量、大屏幕</span><br>
                            <span class="price">`+myArr[i].price+`</span>
                        </a>
                    `
                    document.getElementById("computerList").innerHTML=content
                }
            }
        }
        xmlhttp.open("GET","./productlist?op=findPhone&productType=2",true);
        xmlhttp.send();
    }

    function smartBracelet() {
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
                var content="";
                for (var i =0;i<myArr.length;i++){
                    content += `
                        <a href="./productlist?op=byId&use=cart&findById=`+myArr[i].id+`"">
                            <img src="`+myArr[i].thumbnail+`" alt="" height="200px" width="200px">
                            <h3>`+myArr[i].productName+`</h3>
                            <span class="intro">大电量、大音量、大屏幕</span><br>
                            <span class="price">`+myArr[i].price+`</span>
                        </a>
                    `
                    document.getElementById("smartBraceletList").innerHTML=content
                }
            }
        }
        xmlhttp.open("GET","./productlist?op=findPhone&productType=3",true);
        xmlhttp.send();
    }

    window.onload = function () {
        setInterval(phone(),1000)
        setInterval(computer(),1000)
        setInterval(smartBracelet(),1000)
    }
</script>
</html>