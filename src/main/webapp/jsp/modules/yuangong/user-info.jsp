<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑员工</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>员工管理</span></li>
								<li class="breadcrumb-item active"><span>编辑员工</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">员工信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>员工工号</label>
										<input name="yuangonggonghao" readonly id="yuangonggonghao" name="yuangonggonghao" class="form-control" placeholder="员工工号">
									</div>
									<div class="form-group col-md-6">
										<label>员工姓名</label>
										<input name="yuangongxingming"  id="yuangongxingming" name="yuangongxingming" class="form-control" placeholder="员工姓名">
									</div>
									<div class="form-group col-md-6">
										<label>性别</label>
										<select id="xingbieSelect" name="xingbie"  class="form-control">
												<option value=""></option>
												<option class="xingbieOption" value="男">
													男
												</option>
												<option class="xingbieOption" value="女">
													女
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>部门</label>
										<select id="bumenSelect" name="bumen"  class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>手机</label>
										<input name="shouji"  id="shouji" name="shouji" class="form-control" placeholder="手机">
									</div>
									<div class="form-group col-md-6">
										<label>头像</label>
										<div><img id="touxiangImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="touxiangupload" class="form-control-file"></div>
										<input name="touxiang" id="touxiang-input" type="hidden"></div>
									</div>
									<div class="form-group col-md-6">
										<label>身份证</label>
										<input name="shenfenzheng"  id="shenfenzheng" name="shenfenzheng" class="form-control" placeholder="身份证">
									</div>
									<div class="form-group col-md-6">
										<label>入职时间</label>
										<div id="ruzhishijianDate" class="input-append date form_datetime">
											<input id="ruzhishijian-input" name="ruzhishijian" size="15" type="text" readonly >
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>职位</label>
										<input name="zhiwei"  id="zhiwei" name="zhiwei" class="form-control" placeholder="职位">
									</div>
									<div class="form-group col-md-6">
										<label>学历</label>
										<select id="xueliSelect" name="xueli"  class="form-control">
												<option value=""></option>
												<option class="xueliOption" value="初中">
													初中
												</option>
												<option class="xueliOption" value="高中">
													高中
												</option>
												<option class="xueliOption" value="大学">
													大学
												</option>
												<option class="xueliOption" value="研究生">
													研究生
												</option>
												<option class="xueliOption" value="其他">
													其他
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>出生日期</label>
										<input name="chushengriqi"  id="chushengriqi" name="chushengriqi" class="form-control" placeholder="出生日期">
									</div>
									<div class="form-group col-md-6">
										<label>地址</label>
										<input name="dizhi"  id="dizhi" name="dizhi" class="form-control" placeholder="地址">
									</div>
									<div class="form-group col-md-6">
										<label>合同号</label>
										<input id="hetonghao" name="hetonghao" class="form-control" value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>简历</label>
										<div>
										<div class="upload">选择文件<input name="file" type="file" class="form-control-file" id="jianliupload"></div>
										<label id="jianliFileName"></label>
										<input name="jianli" id="jianli-input" type="hidden">
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>状态</label>
										<select id="zhuangtaiSelect" name="zhuangtai"  class="form-control">
												<option value=""></option>
												<option class="zhuangtaiOption" value="在职">
													在职
												</option>
												<option class="zhuangtaiOption" value="离职">
													离职
												</option>
										</select>	
									</div>	
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<!--<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>-->
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "yuangong";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var bumenOptions = [];

				function bumenSelect(){
					http("option/bumenxinxi/bumenxinxi","GET",{},(res)=>{
						if(res.code == 0){
							bumenOptions = res.data;
							var nullOption = document.createElement('option');
							var bumenSelect = document.getElementById('bumenSelect');
							bumenSelect.appendChild(nullOption);
							for(var i=0;i<bumenOptions.length;i++){
								var bumenOption = document.createElement('option');
								bumenOption.setAttribute('name','bumenOption');
								bumenOption.setAttribute('value',bumenOptions[i]);
								bumenOption.innerHTML = bumenOptions[i];									
								if(ruleForm.bumen == bumenOptions[i]){
									bumenOption.setAttribute('selected','selected');
								}
								bumenSelect.appendChild(bumenOption);
							}
						}
					});
				}	
			function hetonghaoUuid(){
				if($("#hetonghao").val() == null || $("#hetonghao").val() == "null" || $("#hetonghao").val() == ""){
					$("#hetonghao").attr("value",Math.round(new Date().getTime()/1000));
				}
			}				

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "yuangong/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#touxiangupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('touxiang-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('touxiangFileName') != null){
						document.getElementById('touxiangFileName').innerHTML = "上传成功!";
					}				
					$("#touxiangImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
			$('#jianliupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {							
					document.getElementById('jianli-input').setAttribute('value','file/download?fileName='+data.result.file);
					if(document.getElementById('jianliFileName') != null){
						document.getElementById('jianliFileName').innerHTML = "上传成功!";
					}		
					$("#jianliImg").attr("src",data.result.file);												
				}
			});
		}  
		//取消 
		function cancel() {
			window.location.href="list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {
			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("yuangong/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
			if(crossFlag) {
				//更新跨表属性
				var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
				var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
				if(statusColumnName!='') {
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = window.sessionStorage.getItem('crossTableName');
					httpJson(crossTableName + "/update","POST",obj,(res)=>{
						if(res.code == 0){
							console.log('更新属性成功');
						}
					});   
				}
			}

						if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    yuangonggonghao: {
					required: true,
					},
				    mima: {
					required: true,
					},
				    yuangongxingming: {
					},
				    xingbie: {
					},
				    bumen: {
					},
				    shouji: {
					isPhone: true,
					},
				    touxiang: {
					},
				    shenfenzheng: {
					isIdCardNo: true,
					},
				    ruzhishijian: {
					},
				    zhiwei: {
					},
				    xueli: {
					},
				    chushengriqi: {
					},
				    dizhi: {
					},
				    hetonghao: {
					},
				    jianli: {
					},
				    zhuangtai: {
					},
				},
				messages: {
					mima: {
						required: "密码不能为空",
					},
					yuangongxingming: {
					},
					xingbie: {
					},
					bumen: {
					},
					shouji: {
					},
					touxiang: {
					},
					shenfenzheng: {
					},
					ruzhishijian: {
					},
					zhiwei: {
					},
					xueli: {
					},
					chushengriqi: {
					},
					dizhi: {
					},
					hetonghao: {
					},
					jianli: {
					},
					zhuangtai: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("yuangong/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												bumenSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				bumenSelect();	
				hetonghaoUuid();

		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#ruzhishijianDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
		}		
		function calculationSE(colName){
			//单列求和接口
			http("yuangong"+colName,"GET",{
				tableName: "yuangong",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#yuangonggonghao").val(ruleForm.yuangonggonghao);	
			$("#mima").val(ruleForm.mima);	
			$("#yuangongxingming").val(ruleForm.yuangongxingming);	
			var xingbieOptions = document.getElementsByClassName("xingbieOption");
			for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
				if(xingbieOptions[xingbieCount].getAttribute('value') == ruleForm.xingbie){
					xingbieOptions[xingbieCount].setAttribute('selected','selected');
				}
			}
			var bumenOptions = document.getElementsByClassName("bumenOption");
			for(var bumenCount = 0; bumenCount < bumenOptions.length;bumenCount++){
				if(bumenOptions[bumenCount].getAttribute('value') == ruleForm.bumen){
					bumenOptions[bumenCount].setAttribute('selected','selected');
				}
			}
			$("#shouji").val(ruleForm.shouji);	
			$("#touxiang-input").val(ruleForm.touxiang);
			$("#shenfenzheng").val(ruleForm.shenfenzheng);	
			$("#ruzhishijian-input").val(ruleForm.ruzhishijian);
			$("#zhiwei").val(ruleForm.zhiwei);	
			var xueliOptions = document.getElementsByClassName("xueliOption");
			for(var xueliCount = 0; xueliCount < xueliOptions.length;xueliCount++){
				if(xueliOptions[xueliCount].getAttribute('value') == ruleForm.xueli){
					xueliOptions[xueliCount].setAttribute('selected','selected');
				}
			}
			$("#chushengriqi").val(ruleForm.chushengriqi);	
			$("#dizhi").val(ruleForm.dizhi);	
			$("#hetonghao").val(ruleForm.hetonghao);	
			$("#jianli-input").val(ruleForm.jianli);
			$("#jianliFileName").html(ruleForm.jianli);
			var zhuangtaiOptions = document.getElementsByClassName("zhuangtaiOption");
			for(var zhuangtaiCount = 0; zhuangtaiCount < zhuangtaiOptions.length;zhuangtaiCount++){
				if(zhuangtaiOptions[zhuangtaiCount].getAttribute('value') == ruleForm.zhuangtai){
					zhuangtaiOptions[zhuangtaiCount].setAttribute('selected','selected');
				}
			}
		}		
		//图片显示
		function showImg(){
			var touxiangFileName = "\"" + ruleForm.touxiang + "\"";
			$("#touxiangImg").attr("src",baseUrl+ruleForm.touxiang);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.yuangonggonghao != null && res.data.yuangonggonghao != ''){

					$("#yuangonggonghao").val(res.data.yuangonggonghao);
					}
					if(res.data != null && res.data != '' && res.data.mima != null && res.data.mima != ''){

					$("#mima").val(res.data.mima);
					}
					if(res.data != null && res.data != '' && res.data.yuangongxingming != null && res.data.yuangongxingming != ''){

					$("#yuangongxingming").val(res.data.yuangongxingming);
					}
					if(res.data != null && res.data != '' && res.data.xingbie != null && res.data.xingbie != ''){

					var xingbieOptions = document.getElementsByClassName("xingbieOption");
						for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
							if(xingbieOptions[xingbieCount].getAttribute('value') == res.data.xingbie){
								xingbieOptions[xingbieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.bumen != null && res.data.bumen != ''){

					var bumenOptions = document.getElementsByClassName("bumenOption");
						for(var bumenCount = 0; bumenCount < bumenOptions.length;bumenCount++){
							if(bumenOptions[bumenCount].getAttribute('value') == res.data.bumen){
								bumenOptions[bumenCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.shouji != null && res.data.shouji != ''){

					$("#shouji").val(res.data.shouji);
					}
					if(res.data != null && res.data != '' && res.data.touxiang != null && res.data.touxiang != ''){

					$("#touxiangImg").attr("src",baseUrl+res.data.touxiang);
					$("#touxiang-input").val(res.data.touxiang);
					}
					if(res.data != null && res.data != '' && res.data.shenfenzheng != null && res.data.shenfenzheng != ''){

					$("#shenfenzheng").val(res.data.shenfenzheng);
					}
					if(res.data != null && res.data != '' && res.data.ruzhishijian != null && res.data.ruzhishijian != ''){

					$("#ruzhishijian-input").val(res.data.ruzhishijian);
					$('#ruzhishijianFileName').val(res.data.ruzhishijian)
					}
					if(res.data != null && res.data != '' && res.data.zhiwei != null && res.data.zhiwei != ''){

					$("#zhiwei").val(res.data.zhiwei);
					}
					if(res.data != null && res.data != '' && res.data.xueli != null && res.data.xueli != ''){

					var xueliOptions = document.getElementsByClassName("xueliOption");
						for(var xueliCount = 0; xueliCount < xueliOptions.length;xueliCount++){
							if(xueliOptions[xueliCount].getAttribute('value') == res.data.xueli){
								xueliOptions[xueliCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.chushengriqi != null && res.data.chushengriqi != ''){

					$("#chushengriqi").val(res.data.chushengriqi);
					}
					if(res.data != null && res.data != '' && res.data.dizhi != null && res.data.dizhi != ''){

					$("#dizhi").val(res.data.dizhi);
					}
					if(res.data != null && res.data != '' && res.data.hetonghao != null && res.data.hetonghao != ''){

					$("#hetonghao").val(res.data.hetonghao);
					}
					if(res.data != null && res.data != '' && res.data.jianli != null && res.data.jianli != ''){

					$("#jianli-input").val(res.data.jianli);
					$('#jianliFileName').val(res.data.jianli)
					}
					if(res.data != null && res.data != '' && res.data.zhuangtai != null && res.data.zhuangtai != ''){

					var zhuangtaiOptions = document.getElementsByClassName("zhuangtaiOption");
						for(var zhuangtaiCount = 0; zhuangtaiCount < zhuangtaiOptions.length;zhuangtaiCount++){
							if(zhuangtaiOptions[zhuangtaiCount].getAttribute('value') == res.data.zhuangtai){
								zhuangtaiOptions[zhuangtaiCount].setAttribute('selected','selected');
							}
						}
					}
				}
			});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
