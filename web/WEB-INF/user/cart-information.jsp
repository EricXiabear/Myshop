<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
	
	<link type="text/css" href="css/info.css" rel="stylesheet" />
	
	<div id="s_bdw">
		<div id="s_bd">
			
			<div class="stepflow"><img src="${ctx}/static/images/cartinforstep.gif" width="980" height="32" alt="" /></div>
			
			<div class="infotable">
				<table width="100%">
					<tr>
						<td class="tit">收货地址</td>
						<td class="summary">
							<table class="address" width="100%">
								<tr>
									<td width="80px">地址标注：</td><td><input type="text" name="" value="" id="" class="stext" style="width:80px;" /> 例如家里、公司，最多四个字。</td>
								</tr>
								<tr>
									<td><span class="red">*</span>选择地区：</td>
									<td>
										<select class="selectbox" name="" id=""><option value="">--ALL--</option></select>
										<select class="selectbox" name="" id=""><option value="">--ALL--</option></select>
										<select class="selectbox" name="" id=""><option value="">--ALL--</option></select>
									</td>
								</tr>
								<tr>
									<td><span class="red">*</span>详细地址：</td><td><input type="text" name="" value="" id="" class="stext" style="width:280px;" /></td>
								</tr>
								<tr>
									<td>邮政编码：</td><td><input type="text" name="" value="" id="" class="stext" /></td>
								</tr>
								<tr>
									<td><span class="red">*</span>收货人：</td><td><input type="text" name="" value="" id="" class="stext" /></td>
								</tr>
								<tr>
									<td><span class="red">*</span>手机：</td><td><input type="text" name="" value="如13612345678" id="" class="stext focutext00" /> 或固定电话 <input type="text" name="" value="区号" id="" class="stext focutext01" style="width:60px;" /> - <input type="text" name="" value="电话号码" id="" class="stext focutext02" /> - <input type="text" name="" value="分机号(可选)" id="" class="stext focutext03" /> 两者至少填写一项</td>
								</tr>
								<tr><td colspan="2" height="10px"></td></tr>
								<tr>
									<td colspan="2"><input type="button" value="确认收货信息" id="" name="" class="btntext" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div><!--infotable end-->
			
			<script type="text/javascript">
			$(function(){
				$(".focutext00").focusText();
				$(".focutext01").focusText();
				$(".focutext02").focusText();
				$(".focutext03").focusText();
			});
			</script>
			
			<div class="infotable">
				<table width="100%">
					<tr>
						<td class="tit">配送方式</td>
						<td class="summary">
							<table class="address" width="100%">
								<tr bgcolor="fff7eb">
									<td valign="top" width="10px"></td>
									<td valign="top" width="40px"><input type="radio" name="" id="yxkd" value="" /></td>
									<td valign="top" width="120px"><label for="yxkd">易讯快递</label></td>
									<td valign="top" width="80px" class="red">免费</td>
									<td valign="top">支持<span class="red">货到付款及POS机刷卡，上海市区一日三送</span>，同时也支持江苏省(南京、苏州、无锡、南通)、浙江省(杭州、嘉兴、宁波)及安徽省(合肥)的部分地区(查看配送区域及说明 )<br />送货时间：<select class="selectbox" name="" id=""><option value="">2011-11-06 星期日</option></select> <select class="selectbox" name="" id=""><option value="">下午 14:00-18:00</option></select></td>
								</tr>
								<tr><td height="20px"></td></tr>
								<tr>
									<td valign="top" width="10px"></td>
									<td colspan="4"><input type="checkbox" name="" value="" id="" /> 收货时若网快递无法联系上我，我同意由朋友、同事或家人代收</td>
								</tr>
								<tr><td height="20px"></td></tr>
								<tr>
									<td valign="top" width="10px"></td>
									<td colspan="4"><input type="button" value="确认配送方式" id="" name="" class="btntext" /></td>
								</tr>
								<tr><td height="40px"></td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div><!--infotable end-->
			
			<div class="infotable">
				<table width="100%">
					<tr>
						<td class="tit">支付方式</td>
						<td class="summary">
							<table class="address" width="100%">
								<tr>
									<td valign="top" width="10px"></td>
									<td valign="top" width="40px"><input type="radio" name="zf" id="df" value="" /></td>
									<td valign="top" width="110px"><label for="df">货到付款</label></td>
									<td valign="top">货到付款,<span class="red">易讯快递可刷卡</span>，免手续费；<span class="red">第三方易讯快递只能使用现金；可使用支票</span><br />(1.支票抬头：上海易讯电子商务发展有限公司；2.支票限额：每个订单支票支付限额为4万；3.暂不接受非上海公司的支票)</td>
								</tr>
								<tr><td height="10px"></td></tr>
								<tr>
									<td valign="top" width="10px"></td>
									<td valign="top" width="40px"><input type="radio" name="zf" id="yhf" value="" /></td>
									<td valign="top"><label for="yhf">银行电汇</label></td>
									<td valign="top">通过银行转账或现金直接存入易讯网指定帐号（查看汇款单填写范本），<span class="red">[汇款用途]-栏需注明订单号</span></td>
								</tr>
								<tr><td height="10px"></td></tr>
								<tr>
									<td valign="top" width="10px"></td>
									<td valign="top" width="40px"><input type="radio" name="zf" id="opay" value="" /></td>
									<td valign="top"><label for="opay">在线支付</label></td>
									<td valign="top">
										通过网上银行或支付平台在线付款
										<table>
											<tr>
												<td><input type="radio" name="bank" id="bank01" value="" class="bankicon" /><label for="bank01"><img src="${ctx}/static/images/bank/bank01.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank02" value="" class="bankicon" /><label for="bank02"><img src="${ctx}/static/images/bank/bank02.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank03" value="" class="bankicon" /><label for="bank03"><img src="${ctx}/static/images/bank/bank03.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank04" value="" class="bankicon" /><label for="bank04"><img src="${ctx}/static/images/bank/bank04.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank05" value="" class="bankicon" /><label for="bank05"><img src="${ctx}/static/images/bank/bank05.gif" width="96" height="32" alt="" /></label></td>
											</tr>
											<tr>
												<td><input type="radio" name="bank" id="bank06" value="" class="bankicon" /><label for="bank06"><img src="${ctx}/static/images/bank/bank06.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank07" value="" class="bankicon" /><label for="bank07"><img src="${ctx}/static/images/bank/bank07.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank08" value="" class="bankicon" /><label for="bank08"><img src="${ctx}/static/images/bank/bank08.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank09" value="" class="bankicon" /><label for="bank09"><img src="${ctx}/static/images/bank/bank09.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank10" value="" class="bankicon" /><label for="bank10"><img src="${ctx}/static/images/bank/bank10.gif" width="96" height="32" alt="" /></label></td>
											</tr>
											<tr>
												<td><input type="radio" name="bank" id="bank11" value="" class="bankicon" /><label for="bank11"><img src="${ctx}/static/images/bank/bank11.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank12" value="" class="bankicon" /><label for="bank12"><img src="${ctx}/static/images/bank/bank12.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank13" value="" class="bankicon" /><label for="bank13"><img src="${ctx}/static/images/bank/bank13.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank14" value="" class="bankicon" /><label for="bank14"><img src="${ctx}/static/images/bank/bank14.gif" width="96" height="32" alt="" /></label></td>
											</tr>
											<tr>
												<td><input type="radio" name="bank" id="bank15" value="" class="bankicon" /><label for="bank15"><img src="${ctx}/static/images/bank/bank15.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank16" value="" class="bankicon" /><label for="bank16"><img src="${ctx}/static/images/bank/bank16.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank17" value="" class="bankicon" /><label for="bank17"><img src="${ctx}/static/images/bank/bank17.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank18" value="" class="bankicon" /><label for="bank18"><img src="${ctx}/static/images/bank/bank18.gif" width="96" height="32" alt="" /></label></td>
												<td><input type="radio" name="bank" id="bank19" value="" class="bankicon" /><label for="bank19"><img src="${ctx}/static/images/bank/bank19.gif" width="96" height="32" alt="" /></label></td>
											</tr>
											<tr>
												<td><input type="radio" name="bank" id="bank20" value="" class="bankicon" /><label for="bank20"><img src="${ctx}/static/images/bank/bank20.gif" width="96" height="32" alt="" /></label></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr><td height="20px"></td></tr>
								<tr>
									<td valign="top" width="10px"></td>
									<td colspan="4"><input type="button" value="确认支付方式" id="" name="" class="btntext" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div><!--infotable end-->
			
			<div class="infotable">
				<table width="100%">
					<tr>
						<td class="tit">发票信息</td>
						<td class="summary">
							<table class="address" width="100%">
								<tr>
									<td width="10px"></td>
									<td width="50px"><input type="radio" name="1" id="fpgr" value="" /></td>
									<td><label for="fpgr">商业零售发票(个人)</label><span style="color:#ababab;">(发票抬头：徐威)</span></td>
									<td width="100px"></td>
									<td><a href="#">修改</a> | <a href="#">删除</a></td>
									<td width="200px"></td>
								</tr>
								<tr><td height="10px"></td></tr>
								<tr bgcolor="#fff7eb">
									<td width="10px"></td>
									<td width="50px"><input type="radio" name="1" id="" value="" /></td>
									<td colspan="4">
										<p>发票类型：<input type="radio" name="fp2" id="" value="" /> 商业零售发票 <input type="radio" name="fp2" id="" value="" /> 增值税专用发票</p>
										<p>发票抬头：<input type="radio" name="tt0" id="" value="" /> 个人 <input type="radio" name="tt0" id="" value="" /> 单位</p>
										<p>个人姓名：<input type="text" name="" value="" id="" style="width:340px;" class="stext" /></p>
									</td>
								</tr>
								<tr><td height="10px"></td></tr>
								<tr>
									<td height="10px"></td>
									<td colspan="5">发票内容： <input type="radio" name="mx" id="" value="" /> 商品明细</td>
								</tr>
								<tr><td height="20px"></td></tr>
								<tr>
									<td valign="top" width="10px"></td>
									<td colspan="4"><input type="button" value="确认发票信息" id="" name="" class="btntext" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div><!--infotable end-->
			
			<div class="catinfotable">
				<table width="100%">
					<tr>
						<td class="tit">购物清单<br /><a style="font-size:12px;font-weight:normal;" class="blue" href="#">更改</a></td>
						<td class="summary">
							<table class="catlist" width="100%">
								<tr bgcolor="#f3f3f3">
									<th>购物车中的商品</th><th>易迅价</th><th>返现</th><th>送积分</th><th>购买数量</th><th>发货时间</th>
								</tr>
								<tr>
									<td><a href="#">Benks 邦克仕 Magic HSR iPad2 高清防指纹套装系列保护贴膜</a><br />商品编号：21-255-244</td>
									<td class="red">￥108.00</td><td>￥0.00</td><td>0</td><td>1</td><td>有货，可当日出货</td>
								</tr>
								<tr>
									<td><a href="#">Benks 邦克仕 Magic HSR iPad2 高清防指纹套装系列保护贴膜</a><br />商品编号：21-255-244</td>
									<td class="red">￥108.00</td><td>￥0.00</td><td>0</td><td>1</td><td>有货，可当日出货</td>
								</tr>
								<tr>
									<td><a href="#">Benks 邦克仕 Magic HSR iPad2 高清防指纹套装系列保护贴膜</a><br />商品编号：21-255-244</td>
									<td class="red">￥108.00</td><td>￥0.00</td><td>0</td><td>1</td><td>有货，可当日出货</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>		
			</div><!--catinfotable end-->
			
			<div class="catinfotable">
				<table width="100%">
					<tr>
						<td class="tit">订单结算</td>
						<td class="summary">
							<div class="f-l" style="width:640px;">
								<table class="ddbox" width="100%">
									<tr>
										<td valign="top" align="right" width="110px">备注：</td><td><textarea name="" id="" class="ltext"></textarea></td>
									</tr>
									<tr>
										<td valign="top" align="right">使用优惠券：</td><td><input type="text" name="" value="" id="" class="stext f-l" style="width:227px;" /><a style="margin-left:10px;display:inline;" class="f-l" href="#"><img src="${ctx}/static/images/shiyong.gif" width="62" height="24" alt="使用" /></a><div class="clear"></div><p>优惠券一旦使用，在订单生成后，将无法退回。如您取消订单，订单中所使用的优惠券将永久失效，无法找回。<a class="blue" href="#">详见帮助中心优惠券使用细则第4条</a></p></td>
									</tr>
									<tr>
										<td align="right"><input type="checkbox" name="" id="thispl" value="" /> <label for="thispl"><img src="${ctx}/static/images/lpicon.gif" /></label></td><td></td>
									</tr>
									<tr>
										<td valign="top" align="right">赠言：</td><td><textarea name="" id="" class="ltext"></textarea></td>
									</tr>
								</table>
							</div>
							<div class="f-r" style="width:170px;padding:0 15px;background:#f3f3f3;">
								<table class="totable" width="100%">
									<tr>
										<td width="80px">商品总重：</td><td align="right">3.640千克</td>
									</tr>
									<tr>
										<td>商品总价：</td><td align="right">￥220.6.00</td>
									</tr>
									<tr>
										<td>运费金额：</td><td align="right">￥0.00</td>
									</tr>
									<tr>
										<td>积分抵扣：</td><td align="right">￥0.00</td>
									</tr>
									<tr>
										<td>返现优惠：</td><td align="right">￥0.00</td>
									</tr>
									<tr>
										<td>手&nbsp;&nbsp;续&nbsp;&nbsp;费：</td><td align="right">￥0.00</td>
									</tr>
									<tr>
										<td>优&nbsp;&nbsp;惠&nbsp;&nbsp;券：</td><td align="right">￥0.00</td>
									</tr>
									<tr>
										<td>合&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计：</td><td align="right"><strong style="font-size:18px;color:#dc0000;">￥220.6.00</strong></td>
									</tr>
									<tr>
										<td align="right" colspan="2"><input type="submit" name="" id="" value="" class="btnimg" /></td>
									</tr>
									<tr><td height="10px"></td></tr>
								</table>
							</div>
						</td>
					</tr>
				</table>		
			</div><!--catinfotable end-->
			
		</div><!--s_bd end-->
	</div><!--s_bdw end-->	
	
<%@include file="footer.jsp"%>