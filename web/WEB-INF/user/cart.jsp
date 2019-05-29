<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
	
	<link type="text/css" href="css/info.css" rel="stylesheet" />
	
	<div id="s_bdw">
		<div id="s_bd">
			
			<div class="stepflow"><img src="${ctx}/static/images/step01.gif" width="980" height="32" alt="" /></div>
			
			<div class="addinfo">
				<strong>Coolpad 酷派 N930 GSM/CDMA2000 双模手机 定制机 已添加至购物车。</strong>
				<a href="#">返回继续购物</a>
			</div><!--addinfo end-->
			
			<div class="cartlist">
				<table width="100%">
					<tr>
						<th>购物车中的商品</th><th>易迅价</th><th>返现</th><th>购买数量</th><th>发货时间</th><th>操作</th>
					</tr>
					<tr bgcolor="#fffaf1">
						<td>
							<a href="#"><img class="smallpic" src="images/12sdfv.jpg" width="80" height="80" /></a>
							<a href="#">Coolpad 酷派 N930 GSM/CDMA2000 双模手机</a>
						</td>
						<td><strong class="red">￥1899.00</strong></td>
						<td>￥0.00</td>
						<td>
							<div class="addinput">
								<input type="text" name="qty_item_1" value="1" id="qty_item_1" onKeyUp="setAmount.modify('#qty_item_1')" class="stext"/>
                        		<a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)"></a>
								<a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)"></a>
							</div>
						</td>
						<td>有货，可当日出货</td>
						<td><a href="#" class="blue">移入收藏夹</a><br /><a href="#" class="blue">删除</a></td>
					</tr>
					<tr>
						<td>
							<a href="#"><img class="smallpic" src="images/12sdfv.jpg" width="80" height="80" /></a>
							<a href="#">Coolpad 酷派 N930 GSM/CDMA2000 双模手机</a>
						</td>
						<td><strong class="red">￥1899.00</strong></td>
						<td>￥0.00</td>
						<td>
							<div class="addinput">
								<input type="text" name="qty_item_2" value="1" id="qty_item_2" onKeyUp="setAmount.modify('#qty_item_2')" class="stext"/>
                        		<a class="add" onClick="setAmount.add('#qty_item_2')" href="javascript:void(0)"></a>
								<a class="reduce" onClick="setAmount.reduce('#qty_item_2')" href="javascript:void(0)"></a>
							</div>
						</td>
						<td>有货，可当日出货</td>
						<td><a href="#" class="blue">移入收藏夹</a><br /><a href="#" class="blue">删除</a></td>
					</tr>
					<tr>
						<td>
							<a href="#"><img class="smallpic" src="images/12sdfv.jpg" width="80" height="80" /></a>
							<a href="#">Coolpad 酷派 N930 GSM/CDMA2000 双模手机</a>
						</td>
						<td><strong class="red">￥1899.00</strong></td>
						<td>￥0.00</td>
						<td>
							<div class="addinput">
								<input type="text" name="qty_item_3" value="1" id="qty_item_3" onKeyUp="setAmount.modify('#qty_item_3')" class="stext"/>
                        		<a class="add" onClick="setAmount.add('#qty_item_3')" href="javascript:void(0)"></a>
								<a class="reduce" onClick="setAmount.reduce('#qty_item_3')" href="javascript:void(0)"></a>
							</div>
						</td>
						<td>有货，可当日出货</td>
						<td><a href="#" class="blue">移入收藏夹</a><br /><a href="#" class="blue">删除</a></td>
					</tr>
					<tr>
						<td valign="top"><a href="#"><img src="${ctx}/static/images/deleteicon.gif" /> 清空购物车</a></td>
						<td align="right" colspan="5">
							<p>共3件商品，总重3.580kg</p>
							<p style="margin-top:10px;font-size:14px;">总计金额(不含运费)：￥2206.00(商品金额) - ￥0.00(返现金额)= <strong style="font-size:18px;color:#d80000;">￥2206.00</strong> </p>
						</td>
					</tr>
					<tr>
						<td style="border:none;padding-top:20px;" colspan="6"><input type="button" value="" id="" class="btnimg f-r" /><a class="f-r goonbtn" href="#"><img src="${ctx}/static/images/gooncat.gif" width="86" height="24" alt="" /></a></td>
					</tr>
				</table>
			</div><!--cartlist end-->
			
			<script type="text/javascript">
			/* reduce_add */
			var setAmount = {
				min:1,
				max:999,
				reg:function(x) {
					return new RegExp("^[1-9]\\d*$").test(x);
				},
				amount:function(obj, mode) {
					var x = $(obj).val();
					if (this.reg(x)) {
						if (mode) {
							x++;
						} else {
							x--;
						}
					} else {
						alert("请输入正确的数量！");
						$(obj).val(1);
						$(obj).focus();
					}
					return x;
				},
				reduce:function(obj) {
					var x = this.amount(obj, false);
					if (x >= this.min) {
						$(obj).val(x);
					} else {
						alert("商品数量最少为" + this.min);
						$(obj).val(1);
						$(obj).focus();
					}
				},
				add:function(obj) {
					var x = this.amount(obj, true);
					if (x <= this.max) {
						$(obj).val(x);
					} else {
						alert("商品数量最多为" + this.max);
						$(obj).val(999);
						$(obj).focus();
					}
				},
				modify:function(obj) {
					var x = $(obj).val();
					if (x < this.min || x > this.max || !this.reg(x)) {
						alert("请输入正确的数量！");
						$(obj).val(1);
						$(obj).focus();
					}
				}
			}
			</script>
			
		</div><!--s_bd end-->
	</div><!--s_bdw end-->	
	
<%@include file="footer.jsp"%>
