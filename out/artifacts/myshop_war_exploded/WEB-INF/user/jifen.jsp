<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
	
	<link type="text/css" href="css/list.css" rel="stylesheet" />
	
	<div id="s_bdw">
		<div id="s_bd">
			<div class="f-l leftlist">
				<div class="Toplist">
					<div class="Ttitle"><h2 class="f-l">本周兑换排行榜</h2></div>
					<div class="duihuan">
						<ul>
							<li class="current">
								<span class="f-l num01">1</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num02">2</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num03">3</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num04">4</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num04">5</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num04">6</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num04">7</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num04">8</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li>
								<span class="f-l num04">9</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
							<li class="last">
								<span class="f-l num04">10</span>
								<a class="f-l p-pic" href="#"><img src="${ctx}/static/images/214sas.jpg" width="60" height="60" alt="" /></a>
								<a class="f-l p-text" href="#">统一冰红茶500ml/瓶</a>
							</li>
						</ul>
					</div>
					
					<script type="text/javascript">
					$.fn.Sonny = function(option, callback) {
						if (typeof option == "function") {
							callback = option;
							option = {};
						}
						;
						var s = $.extend({delay:50,index:0}, option || {});
						var _this = this;
						var timer = null;
						$.each(this, function(n) {
							$(this).bind("mouseover", function() {
								if (timer != null)clearTimeout(timer);
								var obj = $(this);
								timer = setTimeout(function() {
									_this.eq(s.index).removeClass(s.current);
									s.index = n;
									_this.eq(s.index).addClass(s.current);
									if (callback) {
										callback(obj);
									}
								}, s.delay);
					
							})
						})
					}
					
					$(".duihuan ul").eq(0).find("li").Sonny({current:"current"});
					</script>
					
				</div><!--Toplist end-->
				
				<div class="Toplist">
					<div class="Ttitle"><h2 class="f-l">推荐礼品</h2></div>
					<div class="Topcon">
						<ul>
							<li>
								<a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a>
								<p><a href="#">心相印优选装200抽2层塑装面巾纸</a><br /><strong class="red">￥10.9</strong></p>
							</li>
							<li>
								<a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a>
								<p><a href="#">心相印优选装200抽2层塑装面巾纸</a><br /><strong class="red">￥10.9</strong></p>
							</li>
							<li>
								<a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a>
								<p><a href="#">心相印优选装200抽2层塑装面巾纸</a><br /><strong class="red">￥10.9</strong></p>
							</li>
							<li>
								<a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a>
								<p><a href="#">心相印优选装200抽2层塑装面巾纸</a><br /><strong class="red">￥10.9</strong></p>
							</li>
							<li class="last">
								<a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a>
								<p><a href="#">心相印优选装200抽2层塑装面巾纸</a><br /><strong class="red">￥10.9</strong></p>
							</li>
						</ul>
					</div>
				</div><!--Toplist end-->
				
			</div><!--leftlist end-->
			
			<div class="f-r rightlist">
				<div class="jftit">
					<div class="f-l"><span>看看您已有多少积分？</span><a href="#">登陆</a><a href="#">注册</a></div>
					<div class="f-r"><a href="#">积分明细</a><a href="#">积分兑换区说明</a></div>
				</div><!--jftit end-->
				<div class="jftab">
					<dl>
						<dt class="jftabli">
							<a class="current" href="javascript:void(0);">首页</a>
							<a href="javascript:void(0);">秋日必备</a>
							<a href="javascript:void(0);">2000积分</a>
							<a href="javascript:void(0);">食品饮料</a>
							<a href="javascript:void(0);">节日寻宝</a>
							<a href="javascript:void(0);">心动十一月</a>
						</dt>
						<dd>
							<div class="pltit">
								<div class="pltitle"><h2>热门礼品</h2></div>
								<div class="plbox">
									<ul class="cf">
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
									</ul>
								</div>
							</div><!--pltit end-->
							
							<div class="pltit">
								<div class="pltitle"><h2>最新礼品</h2></div>
								<div class="plbox">
									<ul class="cf">
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
										<li>
											<a href="#"><img src="${ctx}/static/images/1234ad.jpg" width="168" height="170" alt="" /></a>
											<dl>
												<dt><a href="#">乐天巧克力布司300g</a></dt>
												<dd>市场价：<del>￥18.6</del></dd>
												<dd class="jfcj"><strong class="f-l">0</strong><a class="f-r" href="#">去抽奖</a></dd>
												<dd class="jfdh"><strong class="f-l">450</strong><a class="f-r" href="#">去兑换</a></dd>
											</dl>
										</li>
									</ul>
								</div>
							</div><!--pltit end-->
							
							<div class="dhlist">
								<h2>兑换动态</h2>
								<ul class="cf">
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
									<li>
										<a href="#"><img src="${ctx}/static/images/124a.jpg" width="40" height="40" alt="" /></a>
										<p>ton***兑换了<br />乐天巧克力布司300g</p>
									</li>
								</ul>
							</div><!--dhlist end-->
							
						</dd>
					</dl>
				</div>
			</div><!--rightlist end-->
			
			<div class="clear"></div>
			
		</div><!--s_bd end-->
	</div><!--s_bdw end-->

<%@include file="footer.jsp"%>
