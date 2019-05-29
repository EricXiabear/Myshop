<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
	
	<link type="text/css" href="css/lr.css" rel="stylesheet" />
	
	<div id="s_bdw">
		<div id="s_bd">
			
			<div class="dl_zc">
				<div class="dl_zc_title">
					<h2 class="f_l">注册新用户</h2>
					<div class="rt_bg f_r"></div>
				</div>
				<div class="dl-con" id="regist">
					<form id="formpersonal" method="post" onsubmit="return false;">
						<div class="form">
							<div class="tipinfo">填写账户信息，以下信息均为必填</div>
							<div class="item">
								<span class="label">邮箱：</span>
		
								<div class="fl">
									<input type="text" id="mail" name="mail" class="text" tabindex="4"/>
									<label id="mail_succeed" class="blank"></label>
									<span class="clear"></span>
		
									<div id="mail_error"></div>
								</div>
							</div>
							<!--item end-->
							<div class="item">
								<span class="label">用户名：</span>
		
								<div class="fl">
									<input type="text" id="username" name="username" class="text" tabindex="1"/>
		
									<label id="username_succeed" class="blank"></label>
									<span class="clear"></span>
		
									<div id="username_error"></div>
								</div>
							</div>
							<!--item end-->
							<div id="o-password">
								<div class="item">
		
									<span class="label">设置密码：</span>
		
									<div class="fl">
										<input type="password" id="pwd" name="pwd" class="text" tabindex="2"/>
										<label id="pwd_succeed" class="blank"></label>
										<input type="checkbox" class="checkbox" id="viewpwd"/>
										<label class="ftx23" for="viewpwd">显示密码字符</label>
										<span class="clear"></span>
		
										<label class="hide" id="pwdstrength"><span class="fl">安全程度：</span><b></b></label>
										<label id="pwd_error"></label>
									</div>
								</div>
								<!--item end-->
								<div class="item">
									<span class="label">确认密码：</span>
		
									<div class="fl">
										<input type="password" id="pwd2" name="pwd2" class="text" tabindex="3"/>
										<label id="pwd2_succeed" class="blank"></label>
										<span class="clear"></span>
										<label id="pwd2_error"></label>
									</div>
								</div>
								<!--item end-->
							</div>
							
							<div class="item">
								<span class="label">验证码：</span>
		
								<div class="fl">
									<input type="text" id="authcode" name="authcode" class="text text-1" tabindex="6"
										   autocomplete="off" MaxLength="6"/>
									<label class="img">
										<img id="JD_Verification1" Ver_ColorOfNoisePoint="#888888"
											 src="/Inc/Code/adminCode.php?sesstr=regCode" onClick="chanageCode('regCode')"
											 alt="" style="cursor:pointer;width:100px;height:26px;"/>
									</label>
									<label>&nbsp;看不清？点击验证码图片更换</label>
									<label id="authcode_succeed" class="blank invisible"></label>
									<span class="clear"></span>
		
									<label id="authcode_error"></label>
								</div>
							</div>
							<!--item end-->
							
							<div class="item">
								<span class="label">&nbsp;</span>
		
								<div class="fl">
									<input type="checkbox" name="" id="xieyi" value="" /><label class="blue" for="xieyi">自愿遵守1号店服务协议</label>
								</div>
							</div>
							<!--item end-->
							
							<div class="item">
								<span class="label">&nbsp;</span>
								<input type="button" class="btnimg" id="registsubmit" value=""
									   tabindex="8"/>
							</div>
							<!--item end-->
		
						</div>
					</form>
				</div><!--regist end-->
			</div><!--dl_zc end-->
			
			<script type="text/javascript" src="js/Validate.js"></script>
			<script type="text/javascript" src="js/Validate.personal.js"></script>

		</div><!--s_bd end-->
	</div><!--s_bdw end-->

<%@include file="footer.jsp"%>