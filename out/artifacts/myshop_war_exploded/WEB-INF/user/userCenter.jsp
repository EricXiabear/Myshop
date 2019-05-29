<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
	
	<link type="text/css" href="${ctx}/static/css/my.css" rel="stylesheet" />
	
	<div id="s_bdw">
		<div id="s_bd">
			
			<div style="margin:10px 0 0 0;"></div>
			
			<div class="breadcrumbs">
				<div class="f-l"><a href="#">首页</a><span>»</span><a href="#">我的易迅</a><span>»</span>我的订单</div>
			</div>
			
			<div class="f-l presonalsort">
				<dl>
					<dt>交易管理</dt>
					<dd><a class="current" href="#">我的收藏</a></dd>
					<dd><a href="#">我的优惠券</a></dd>
					<dd><a href="#">我的到货通知</a></dd>
					<dd><a href="#">我的积分</a></dd>
					<dd><a href="#">我的站内信</a></dd>
					<dd><a href="#">我的反馈</a></dd>
					<dd><a href="#">我的咨询</a></dd>
					<dd><a href="#">我的价格举报</a></dd>
					<dd><a href="#">我的装机配置</a></dd>
				</dl>
				<dl>
					<dt>售后管理</dt>
					<dd><a href="#">在线报修申请</a></dd>
					<dd><a href="#">我的在线报修</a></dd>
				</dl>
				<dl>
					<dt>资料管理</dt>
					<dd><a href="#">个人资料</a></dd>
					<dd><a href="#">收货信息</a></dd>
					<dd><a href="#">登录密码</a></dd>
					<dd><a href="#">邮件订阅</a></dd>
				</dl>
			</div><!--presonalsort end-->
			
			<div class="f-r presonalinfo">
				<h2>我的订单</h2>
				<div class="ddbox">
					<dl>
						<dt class="ddboxtab"><a class="current" href="#">最近一个月订单</a><a href="#">一个月之前订单</a><span class="f-r"><a style="background:none;" class="blue" href="#">查看订单状态说明</a></span></dt>
						<dd>
							<div class="ddtable">
								<table class="ddinfo" width="100%">
									<tr>
										<th>订单编号</th><th>订单商品</th><th>收货人</th><th>下单日期</th><th>总金额</th><th>订单状态</th><th>操作</th>
									</tr>
									<tr>
										<td width="100px"><a class="blue" href="#">1011757885</a></td><td width="240px"><a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a><a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a><a href="#"><img src="${ctx}/static/images/124ad.jpg" width="58" height="58" alt="" /></a></td><td>刘德华</td><td>2011-11-03</td><td>￥2206.00<br />(中国银行)</td><td class="ddgz">待支付<br /><a class="gzbtn blue" href="javascript:void(0);">跟踪</a>
										<div class="ddtipbox">
											<span class="arrow"></span>
											<div>
												<h2><strong class="f-l">订单跟踪</strong><a class="f-r close" href="javascript:void(0);">X</a></h2>
												<table width="100%">
													<tr>
														<th>处理时间按</th><th>处理信息</th>
													</tr>
													<tr>
														<td>2011-11-03 16:28:02</td><td>您提交了订单，等到客服审核。</td>
													</tr>
													<tr>
														<td>2011-11-03 16:28:02</td><td>您提交了订单，等到客服审核。</td>
													</tr>
													<tr>
														<td>2011-11-03 16:28:02</td><td>您提交了订单，等到客服审核。</td>
													</tr>
												</table>
											</div>
										</div>
										</td><td><a class="paybtn" href="#">付款</a><br /><a class="blue" href="#">订单详情</a></td>
									</tr>
								</table>
							</div>
							
							<script type="text/javascript">
							$(function(){
								$(".gzbtn").click(function(){
									$(".ddtipbox").show();
								});
								$(".close").click(function(){
									$(".ddtipbox").hide();
								})
							});
							</script>
							
						</dd>
					</dl>
				</div>
			</div><!--presonalinfo end-->
			
			<div class="clear"></div>
			
		</div><!--s_bd end-->
	</div><!--s_bdw end-->

<jsp:include page="footer.jsp"></jsp:include>