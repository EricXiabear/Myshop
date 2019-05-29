<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    request.setAttribute("ctx",basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>一号店</title>
    <link href="${ctx}/static/css/main.css" rel="stylesheet" type="text/css" />
    <!--[if IE 6]>
    <link href="${ctx}/static/css/main.ie6.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <!--[if IE 7]>
    <link href="${ctx}/static/css/main.ie7.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jquery-imgslideshow.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/ks-switch.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/lib.js"></script>
    <script type="text/javascript">
        var timeout	= 500;
        var closetimer	= 0;
        var ddmenuitem	= 0;

        $(document).ready(function(){
            $('.cat_item').mousemove(function(){
                $(this).addClass('cat_item_on');
            });
            $('.cat_item').mouseleave(function(){
                $(this).removeClass('cat_item_on');
            });
            $('#slideshow').imgSlideShow({itemclass: 'i'})
            $("#slide-qg").switchTab({titCell: "dt a", trigger: "mouseover", delayTime: 0});
            $("#s_cart_nums1").hover(function(){
                mcancelclosetime();
                if(ddmenuitem) ddmenuitem.hide();
                ddmenuitem = $(document).find("#s_cartbox");
                ddmenuitem.fadeIn();
            },function(){
                mclosetime();
            });
            $("#s_cart_nums2").hover(function(){
                mcancelclosetime();
                if(ddmenuitem) ddmenuitem.hide();
                ddmenuitem = $(document).find("#s_cartbox");
                ddmenuitem.fadeIn();
            },function(){
                mclosetime();
            });
            $("#s_cartbox").hover(function(){
                mcancelclosetime();
            },function(){
                mclosetime();
            });
            var $cur = 1;
            var $i = 4;
            var $len = $('.hot_list>ul>li').length;
            var $pages = Math.ceil($len / $i);
            var $w = $('.hotp').width()-66;

            var $showbox = $('.hot_list');

            var $pre = $('div.left_icon');
            var $next = $('div.rgt_icon');

            $pre.click(function(){
                if (!$showbox.is(':animated')) {
                    if ($cur == 1) {
                        $showbox.animate({
                            left: '-=' + $w * ($pages - 1)
                        }, 500);
                        $cur = $pages;
                    }
                    else {
                        $showbox.animate({
                            left: '+=' + $w
                        }, 500);
                        $cur--;
                    }

                }
            });

            $next.click(function(){
                if (!$showbox.is(':animated')) {
                    if ($cur == $pages) {
                        $showbox.animate({
                            left: 0
                        }, 500);
                        $cur = 1;
                    }
                    else {
                        $showbox.animate({
                            left: '-=' + $w
                        }, 500);
                        $cur++;
                    }

                }
            });

        });
        function mclose()
        {
            if(ddmenuitem) ddmenuitem.hide();
        }
        function mclosetime()
        {
            closetimer = window.setTimeout(mclose, timeout);
        }
        function mcancelclosetime()
        {
            if(closetimer)
            {
                window.clearTimeout(closetimer);
                closetimer = null;
            }
        }
    </script>
</head>

<body>
<div id="doc">
    <div id="s_hdw">

        <div id="s_tbar">
            <div class="s_hd">
                <div class="tbar_lft">您好，欢迎来到一号店！
                    <c:choose>
                        <c:when test="${sessionScope.userName!=null}">
                            ${sessionScope.userName} | <a href="#">退出登录</a>
                        </c:when>
                        <c:otherwise>
                            <a href="#">请登录</a> | <a href="#">免费注册</a>
                        </c:otherwise>
                    </c:choose>

                </div>
                <div class="tbar_rgt">
                    <ul>
                        <li class="first"><a href="${ctx}/user/userCenter.html">我的订单</a></li>
                        <li><a href="#">我的一号店</a></li>
                        <li><a href="#">帮助中心</a></li>
                        <li><a href="#">联系客服</a></li>
                        <li><a href="#">加入收藏</a></li>
                        <li class="s_tel_str">服务热线：</li>
                        <li class="s_tel">400-8823-823</li>
                    </ul>
                </div>
            </div>
        </div><!--s_tbar end-->

        <div class="s_hd nav">
            <div id="s_logo"><a href="${ctx}/index.html"><img src="${ctx}/static/images/logo.jpg" border="0" /></a></div>
            <div id="s_nav">
                <ul>
                    <li class="first cur"><a href="index.jsp">首页</a><span></span></li>
                    <li><a href="jifen.jsp">积分兑换</a><span></span></li>
                    <li><a href="#">抢购</a><span></span></li>
                    <li class="last"><a href="#">礼品</a><span></span></li>
                </ul>
            </div>
        </div><!--s_hd end-->

        <div class="mmenu">
            <div class="s_hd">
                <div id="s_search">
                    <form action="" method="post"><input name="" type="text" class="search-input" /><input name="" type="image" src="${ctx}/static/images/btn_search.jpg" /></form>
                </div>

                <div id="s_keyword">
                    <ul>
                        <li><strong>热门搜索：</strong></li>
                        <li><a href="#">贝玲妃</a></li>
                        <li><a href="#">SKII</a></li>
                        <li><a href="#">阿芙</a></li>
                        <li><a href="#">罗莱家纺</a></li>
                        <li><a href="#">glasslock</a></li>
                        <li><a href="#">翡翠</a></li>
                        <li><a href="#">珍珠</a></li>
                        <li><a href="#">银饰</a></li>
                        <li><a href="#">机械表</a></li>
                    </ul>
                </div>

                <div id="s_cart">
                    <ul>
                        <li class="nums"><a href="" id="s_cart_nums1">购物车： <span>0</span>  件</a> <a href="" class="btn" id="s_cart_nums2"></a></li>
                        <li class="checkout"><a href="#">去结算>></a></li>
                    </ul>
                </div>

                <div id="s_cartbox" class="s_cartbox">您的购物车中暂无商品，赶快选择心爱的商品吧！</div>

                <script type="text/javascript">
                    $(document).ready(function(){
                        $("#s_cats").hoverClass("current");
                    });
                </script>

                <div id="s_cats">
                    <div class="cat_hd"><h3><a href="#">所有商品分类</a></h3></div>
                    <div class="cat_bd">
                        <ul>
                            <c:forEach items="${catalogs}" var="catalog">
                                <li class="cat_item">
                                    <h4 class="cat_tit"><a href="#" class="cat_tit_link">${catalog.name}</a><span class="s_arrow">></span></h4>
                                    <div class="cat_cont">
                                        <div class="cat_cont_lft">
                                            <c:forEach items="${catalog.subCatalog}" var="subCatalog">
                                                <dl class="cf">
                                                    <dt><a href="#">${subCatalog.name}</a></dt>
                                                    <dd>
                                                        <ul>
                                                            <c:forEach items="${subCatalog.subCatalog}" var="thirdCatalog" varStatus="var">
                                                                    <li class="<c:if test="${var.count ==1}">first</c:if>"><a href="#">${thirdCatalog.name}</a></li>
                                                            </c:forEach>

                                                            <li><a href="#" class="more">更多</a></li>
                                                        </ul>
                                                    </dd>
                                                </dl>
                                            </c:forEach>
                                            <dl class="cf">
                                                <dt><a href="#">进入该频道</a></dt>
                                                <dd></dd>
                                            </dl>

                                        </div>

                                        <div class="cat_cont_rgt">
                                            <dl>
                                                <dt>推荐品牌</dt>
                                                <dd>
                                                    <ul>
                                                        <li><a href="#">奥利奥</a></li>
                                                        <li><a href="#">光明</a></li>
                                                        <li><a href="#">金龙鱼</a></li>
                                                        <li><a href="#">立顿</a></li>
                                                        <li><a href="#">咏萄 Everwines</a></li>
                                                        <li><a href="#">阿明</a></li>
                                                        <li><a href="#">康师傅</a></li>
                                                        <li><a href="#">蒙牛</a></li>
                                                        <li><a href="#">伊利</a></li>
                                                        <li><a href="#">可口可乐</a></li>
                                                        <li><a href="#">雀巢</a></li>
                                                        <li><a href="#">统一</a></li>
                                                        <li><a href="#">福临门</a></li>
                                                    </ul>
                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt>促销专题</dt>
                                                <dd>
                                                    <ul>
                                                        <li><a href="#">饼干糕点10.8元任选3</a></li>
                                                        <li><a href="#">阳澄湖大闸蟹立省百元</a></li>
                                                        <li><a href="#">清新水果季 全场上海</a></li>
                                                    </ul>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <!--<div class="all_cats"><a href="#" class="more">全部商品分类</a></div>-->
                    </div>
                </div>
            </div>
        </div><!--mmenu end-->

    </div><!--s_hdw end-->