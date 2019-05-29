<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
	
	<link type="text/css" href="css/info.css" rel="stylesheet" />
	
	<div id="s_bdw">
		<div id="s_bd">
			
			<div class="stepflow"><img src="${ctx}/static/images/stepend.gif" width="980" height="33" alt="" /></div>
			
			<div class="osuccess">
				<strong class="tit">您的订单提交成功！</strong>
				<p>我们讲为您保留订单2日，如果2日后易迅网仍未收到您的付款，我们将自动取消此订单。<br />商品预计到达时间：2011年11月06日，星期日，下午14:00-18:00，请您注意查收。</p>
				<div class="ddinfo">
					订单编号：1011757885 <a class="blue" href="#">查看订单详情</a><br />付款方式：在线支持 中国银行<br />应付金额：<strong class="red">￥2206.00</strong>
				</div>
				<p class="gopay"><a href="#"><img src="${ctx}/static/images/gopay.gif" width="88" height="36" alt="" /></a></p>
				<div class="nowgo">您现在还可以：<br /><a class="blue" href="#">返回首页</a><a class="blue" href="#">继续购物</a><a class="blue" href="#">查看订单</a><a class="blue" href="#">订单中心</a></div>
			</div><!--osuccess end-->
			
			<dl style="margin-top:10px;">
				<dt>注意事项：</dt>
				<dd>1.“订单提交成功”仅表明易迅网收到了您的订单，只有您的订单通过审核后，才代表订单正式生效；<br />2.选择货到付款/易迅快递的客户，请您务必认真检查所收货物，如有不符，您可以拒收；<br />3.选择其他方式的客户，请您认真检查外包装。如有明显损坏迹象，您可以拒收该货品，并及时通知我们；<br />4.建议在购买的15天内保留商品的全套包装、附件、发票等所有随货物品，以便后续的保修处理。</dd>
			</dl>
			
		</div><!--s_bd end-->
	</div><!--s_bdw end-->

<%@include file="footer.jsp"%>