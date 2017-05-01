<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<%@include file="/common/context.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>丑尐寳的个人博客</title>
<link href="<%=frontPath%>/other/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<%=frontPath%>/css/common.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=frontPath%>/other/bootstrap/js/jquery-1.11.3.min.js"></script>
<script language="javascript" src="<%=frontPath%>/other/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">

.nav_active {
	border-bottom: #E67E22 solid 2px;
}
#mul>li>a:hover {
	color: #E67E22;
}
.post .post-head {
	text-align: center;
}
.post .post-head .post-title {
	font-size: 2.5em;
	line-height: 1em;
	margin: 0;
}
.post .post-head .post-title a {
	color: #303030;
}
.post .post-head .post-title a:hover, .post .post-head .post-title a:focus {
	text-decoration: none;
}
.post .post-head .post-meta {
	color: #959595;
	margin: 14px 0 0;
}
.post .post-head .post-meta span {
	margin: 0 7px;
	white-space: nowrap;
}
.author, .post-date {
	color: #959595;
}
.author a {
	color: #E67E22;
}
.btn-default {
	background: #e67e22 none repeat scroll 0 0;
	border: 1px solid #e67e22;
	color: #ffffff;
	transition: all 0.2s ease-in-out 0s;
}
.right_div {
	margin-left: 20px;
}
.widget {
	background: #ffffff none repeat scroll 0 0;
	padding: 21px 30px;
	margin-bottom: 30px;
}
.widget .title {
	border-bottom: 1px solid #ebebeb;
	margin-bottom: 21px;
	margin-top: 0;
	padding-bottom: 7px;
	position: relative;
}
.widget .title::after {
	background: #e67e22 none repeat scroll 0 0;
	bottom: -1px;
	content: "";
	height: 1px;
	left: 0;
	position: absolute;
	width: 90px;
}
#top1 a {
	color: #e67e22;
	outline: medium none;
}
.widget .tag-cloud a {
	border: 1px solid #ebebeb;
	color: #959595;
	display: inline-block;
	line-height: 1.5em;
	margin: 0 7px 7px 0;
	padding: 2px 7px;
	transition: all 0.2s ease 0s;
}
.main-header {
	background-position: center 20%;
	background-repeat: no-repeat;
	background-size: cover;
	padding-bottom: 62px;
	padding-top: 62px;
	text-align: center;
}

.main-footer {
    background: #202020 none repeat scroll 0 0;
    color: #959595;
    padding: 35px 0 0;
}

.main-footer .widget {
    padding: 0 30px;
	background:#202020 none repeat scroll 0 0;
}
.main-footer .widget .title {
    border-bottom: 1px solid #303030;
    color: #ffffff;
}

.widget .recent-post .recent-single-post .post-title {
    color: #505050;
    transition: all 0.2s ease 0s;
}
.widget .recent-post .recent-single-post .post-title:hover {
    color: #e67e22;
    text-decoration: none;
}

.main-footer .widget .tag-cloud a {
    border: 1px solid #303030;
}
.main-footer .widget .tag-cloud a:hover {
    border: 1px solid #e67e22;
	background:#e67e22;
	text-decoration:none;
}

.main-footer .widget .friend-links hr {
    border-top: 1px dashed #303030;
    margin: 1em 0;
}


.copyright {
    background: #111 none repeat scroll 0 0;
    border-top: 1px solid #303030;
    color: #555555;
    font-size: 13px;
    padding-bottom: 28px;
    padding-top: 28px;
    text-align: center;
}
.copyright span {
    margin: 0 0.5em;
}
.copyright a {
    color: #555555;
}
</style>
<script language="javascript">
	$(function($){
		$("#mul>li>a").click(function(){
			$("#mul>li>a").removeClass("nav_active");
			$(this).addClass("nav_active");
		});
	});
	
</script>
</head>
<body>
<!--<img src="imgs/top.jpg" class="img-responsive"/>-->
<header style="background:url(imgs/top.jpg)" class="main-header">
  <div class="container">
    <div class="row">
      <div class="col-sm-12"> 
        
        <!-- start logo --> 
        <a title="Ghost 开源博客平台" href="http://www.ghostchina.com" class="branding"><img alt="Ghost 开源博客平台" src="imgs/top2.png"></a> </div>
    </div>
  </div>
</header>

<!--
1.编写导航条，包含两方面的内容
1)折叠之后的效果
2)展开的效果

-->
<nav class="navbar navbar-default"> 
  <!--导航条占满整个屏幕宽度-->
  <div class="container-fluid"> 
    <!--折叠之后的效果-->
    <div class="navbar-header"> 
      <!--
            class指定折叠按钮的样式
            data-toggle：使用collapse插件，如果不加上这个属性，则无法将菜单展开
            data-target：展开的目标菜单组件id
            -->
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#index_menu"> 
      <!--折叠按钮上的横线，一个span代表一条横线--> 
      <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> 
      <!--<span class="glyphicon glyphicon-user"></span>--> 
      </button>
    </div>
    
    <!--导航条上面的菜单-->
    <div  class="collapse navbar-collapse" id="index_menu">
      <ul class="nav navbar-nav" id="mul">
        <li><a href="#"  class="nav_active" >首页</a></li>
        <li><a href="#" >论坛</a></li>
        <li><a href="#">文档</a></li>
        <li><a href="#">下载</a></li>
        <li><a href="#">关于</a></li>
       <!--  <li>
        <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
        </form>
        </li> -->
        <li><a href="#">登录</a></li>
        <li><a href="#">注册</a></li>
      </ul>
       <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
        </form>
    </div>
  </div>
</nav>
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="jumbotron post" style="background:#FFF">
        <div class="post-head">
          <h1 class="post-title"><a href="/ghost-zhuo-mian-ban-app-geng-xin-neng-gou-tong-shi-guan-li-duo-ge-ghost-bo-ke/">Ghost 桌面版 APP 正式发布，能同时管理多个 Ghost 博客</a></h1>
          <div class="post-meta"> <span class="author">作者：<a href="/author/wangsai/">王赛</a></span> •
            <time title="2016年4月28日星期四上午10点14分" datetime="2016年4月28日星期四上午10点14分" class="post-date">2016年4月28日</time>
          </div>
        </div>
        <p><img src="imgs/books.png" class="img-responsive"></p>
        <p> 虽然通过浏览器管理 Ghost 博客虽然很方便，但是在多个 tab 之间切换有时候也会很麻烦，嗯，如果能有一个独立的 app 应该使用起来会更爽一些！ 今天的主角来了，Ghost 桌面版 APP -- Ghost Desktop！ 目前，Ghost Desktop 还处于早期阶段 </p>
        <p style="margin-top:20px;"><a class="btn btn-default btn-lg" href="#" role="button">阅读全文</a></p>
        <p style="height:20px; border-top:#F93 solid 1px"></p>
      </div>
    </div>
    <div class="col-md-4" class="left_div">
    
    <!-- start widget --> 
    <!-- end widget --> 
    
    <!-- start tag cloud widget -->
    <div class="widget">
      <h4 class="title">社区</h4>
      <div class="content community" id="top1">
        <p>QQ群：277327792</p>
        <p><a href="http://wenda.ghostchina.com/" title="Ghost中文网问答社区" target="_blank" onclick="_hmt.push(['_trackEvent', 'big-button', 'click', '问答社区'])"><i class="fa fa-comments"></i> 问答社区</a></p>
        <p><a href="http://weibo.com/ghostchinacom" title="Ghost中文网官方微博" target="_blank" onclick="_hmt.push(['_trackEvent', 'big-button', 'click', '官方微博'])"><i class="fa fa-weibo"></i> 官方微博</a></p>
      </div>
    </div>
    <!-- end tag cloud widget --> 
    
    <!-- start widget -->
    <div class="widget">
      <h4 class="title">下载 Ghost</h4>
      <div class="content download"> <a href="/download/" class="btn btn-default btn-block" onclick="_hmt.push(['_trackEvent', 'big-button', 'click', '下载Ghost'])">Ghost 中文版（0.7.4）</a> </div>
    </div>
    <!-- end widget --> 
    
    <!-- start tag cloud widget -->
    <div class="widget">
      <h4 class="title">标签云</h4>
      <div class="content tag-cloud"> <a href="/tag/jquery/">jQuery</a> <a href="/tag/ghost-0-7-ban-ben/">Ghost 0.7 版本</a> <a href="/tag/opensource/">开源</a> <a href="/tag/zhu-shou-han-shu/">助手函数</a> <a href="/tag/tag-cloud/">标签云</a> <a href="/tag/navigation/">导航</a> <a href="/tag/customize-page/">自定义页面</a> <a href="/tag/static-page/">静态页面</a> <a href="/tag/roon-io/">Roon.io</a> <a href="/tag/configuration/">配置文件</a> <a href="/tag/upyun/">又拍云存储</a> <a href="/tag/upload/">上传</a> <a href="/tag/handlebars/">Handlebars</a> <a href="/tag/email/">邮件</a> <a href="/tag/shortcut/">快捷键</a> <a href="/tag/yong-hu-zhi-nan/">用户指南</a> <a href="/tag/theme-market/">主题市场</a> <a href="/tag/release/">新版本发布</a> <a href="/tag-cloud/">...</a> </div>
    </div>
    <!-- end tag cloud widget --> 
    
    <!-- start widget --> 
    <!-- end widget --> 
    
    <!-- start widget --> 
    <!-- end widget --> 
  </div>
</div>

<div class="row">
    <div class="col-md-8">
      <div class="jumbotron post" style="background:#FFF">
        <div class="post-head">
          <h1 class="post-title"><a href="/ghost-zhuo-mian-ban-app-geng-xin-neng-gou-tong-shi-guan-li-duo-ge-ghost-bo-ke/">Ghost 桌面版 APP 正式发布，能同时管理多个 Ghost 博客</a></h1>
          <div class="post-meta"> <span class="author">作者：<a href="/author/wangsai/">王赛</a></span> •
            <time title="2016年4月28日星期四上午10点14分" datetime="2016年4月28日星期四上午10点14分" class="post-date">2016年4月28日</time>
          </div>
        </div>
        <p><img src="imgs/books.png" class="img-responsive"></p>
        <p> 虽然通过浏览器管理 Ghost 博客虽然很方便，但是在多个 tab 之间切换有时候也会很麻烦，嗯，如果能有一个独立的 app 应该使用起来会更爽一些！ 今天的主角来了，Ghost 桌面版 APP -- Ghost Desktop！ 目前，Ghost Desktop 还处于早期阶段 </p>
        <p style="margin-top:20px"><a class="btn btn-default btn-lg" href="#" role="button">阅读全文</a></p>
      </div>
    </div>
</div>
</div>



<footer class="main-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="widget">
                        <h4 class="title">最新文章</h4>
                        <div class="content recent-post">
                                <div class="recent-single-post">
                                    <a class="post-title" href="/ghost-zhuo-mian-ban-app-geng-xin-neng-gou-tong-shi-guan-li-duo-ge-ghost-bo-ke/">Ghost 桌面版 APP 正式发布，能同时管理多个 Ghost 博客</a>
                                    <div class="date">2016年4月28日</div>
                                </div>
                                <div class="recent-single-post">
                                    <a class="post-title" href="/install-nodejs-of-latest-version-in-ubuntu-and-debian/">为 Ubuntu 和 Debian 安装最新版本的 Node.js</a>
                                    <div class="date">2016年3月23日</div>
                                </div>
                                <div class="recent-single-post">
                                    <a class="post-title" href="/ghost-0-7-4-released/">Ghost 0.7.4 正式发布</a>
                                    <div class="date">2015年12月29日</div>
                                </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="widget">
                        <h4 class="title">标签云</h4>
                        <div class="content tag-cloud">
                                <a href="/tag/about-ghost/">Ghost</a>
                                <a href="/tag/release/">新版本发布</a>
                                <a href="/tag/javascript/">JavaScript</a>
                                <a href="/tag/promise/">Promise</a>
                                <a href="/tag/zhuti/">主题</a>
                                <a href="/tag/nodejs/">Node.js</a>
                                <a href="/tag/mysql/">MySQL</a>
                                <a href="/tag/nginx/">Nginx</a>
                                <a href="/tag/aliyun-ecs/">阿里云服务器</a>
                                <a href="/tag/ubuntu/">Ubuntu</a>
                                <a href="/tag/ghost-in-depth/">深度玩转 Ghost</a>
                                <a href="/tag/theme/">Theme</a>
                                <a href="/tag/markdown/">Markdown</a>
                                <a href="/tag/proxy/">反向代理</a>
                                <a href="/tag/apache/">Apache</a>

                            <a href="/tag-cloud/">...</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="widget">
                        <h4 class="title">合作伙伴</h4>
                        <div class="content tag-cloud friend-links">
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'bootcsscom'])" title="Bootstrap中文网" href="http://www.bootcss.com">Bootstrap中文网</a>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'bootcdncn'])" title="开放CDN服务" href="http://www.bootcdn.cn">开放CDN服务</a>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'gruntjsnet'])" title="Grunt中文网" href="http://www.gruntjs.net">Grunt中文网</a>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'gulpjscomcn'])" title="Gulp中文网" href="http://www.gulpjs.com.cn/">Gulp中文网</a>
                            <hr>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'lodashjscom'])" title="Lodash中文文档" href="http://lodashjs.com/">Lodash中文文档</a>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'jquery123com'])" title="jQuery中文文档" href="http://www.jquery123.com/">jQuery中文文档</a>
                            <hr>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'aliyun'])" title="阿里云" href="http://www.aliyun.com/">阿里云</a>
                            <hr>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'upyun'])" title="又拍云" href="https://www.upyun.com/">又拍云</a>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'ucloud'])" title="UCloud" href="http://www.ucloud.cn/">UCloud</a>
                            <a target="_blank" onclick="_hmt.push(['_trackEvent', 'link', 'click', 'qiniu'])" title="七牛云存储" href="http://www.qiniu.com/">七牛云存储</a>
                        </div>
                </div></div>
            </div>
        </div>
    </footer>
<div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <span>Copyright &copy; <a href="http://www.ghostchina.com/">丑尐寳的个人博客</a></span> | 
                    <span><a target="_blank" href="http://www.miibeian.gov.cn/">粤ICP备xxxxxxxx号</a></span> | 
                    <span>粤公网安备xxxxxxxxxxxxxx</span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>