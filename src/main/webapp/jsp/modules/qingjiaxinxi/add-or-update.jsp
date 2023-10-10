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
							<h3 class="block-title">编辑请假信息</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>请假信息管理</span></li>
								<li class="breadcrumb-item active"><span>编辑请假信息</span></li>
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
							<h3 class="widget-title">请假信息信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>员工工号</label>
										<select  class="form-control"  name="yuangonggonghao" id="yuangonggonghaoSelect" onchange="yuangonggonghaoSelect2Change()">
										</select>
									</div>
									<div class="form-group col-md-6">
										<label>员工姓名</label>
										<input id="yuangongxingming" name="yuangongxingming" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>部门</label>
										<input id="bumen" name="bumen" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>请假类型</label>
										<select id="qingjialeixingSelect" name="qingjialeixing" class="form-control">
												<option value=""></option>
												<option class="qingjialeixingOption" value="事假">
													事假
												</option>
												<option class="qingjialeixingOption" value="病假">
													病假
												</option>
												<option class="qingjialeixingOption" value="婚假">
													婚假
												</option>
												<option class="qingjialeixingOption" value="产假">
													产假
												</option>
												<option class="qingjialeixingOption" value="其他">
													其他
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>请假事由</label>
										<input name="qingjiashiyou" id="qingjiashiyou" name="qingjiashiyou" class="form-control" placeholder="请假事由">
									</div>
									<div class="form-group col-md-6">
										<label>材料证明</label>
										<div>
										<div class="upload">选择文件<input name="file" type="file" class="form-control-file" id="cailiaozhengmingupload"></div>
										<label id="cailiaozhengmingFileName"></label>
										<input name="cailiaozhengming" id="cailiaozhengming-input" type="hidden">
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>开始时间</label>
										<div id="kaishishijianDate" class="input-append date form_datetime">
											<input id="kaishishijian-input" name="kaishishijian" size="20" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>结束时间</label>
										<div id="jieshushijianDate" class="input-append date form_datetime">
											<input id="jieshushijian-input" name="jieshushijian" size="20" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>请假时长</label>
										<input name="qingjiashizhang" id="qingjiashizhang" name="qingjiashizhang" class="form-control" placeholder="请假时长">
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button  id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>
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

		var tableName = "qingjiaxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};


		function yuangonggonghaoSelect2(){
			http("option/yuangong/yuangonggonghao","GET",{
				tableName: "yuangong",
				columnName: "yuangonggonghao"
			},(res)=>{
				if(res.code == 0){
					var options = res.data;
					var option = document.createElement("option");
					$("#yuangonggonghaoSelect").append(option)
					for(var i=0;i<options.length;i++){
						var yuangonggonghaoOption = document.createElement("option");
						yuangonggonghaoOption.setAttribute("value",options[i]);
						yuangonggonghaoOption.setAttribute("class","yuangonggonghaoOption");
						if(ruleForm.yuangonggonghao == options[i]){
							yuangonggonghaoOption.setAttribute("selected","selected");
						}
						yuangonggonghaoOption.innerHTML = options[i];
						//修改 回显
						if(ruleForm.yuangonggonghao != null && ruleForm.yuangonggonghao != '' && options[i] == ruleForm.yuangonggonghao){
							yuangonggonghaoOption.setAttribute("selected","selected");
						}
						$("#yuangonggonghaoSelect").append(yuangonggonghaoOption);
					}
				}
			});
		}		
		function yuangonggonghaoSelect2Change(){
			var options = document.getElementById("yuangonggonghaoSelect").options;
			var index = document.getElementById("yuangonggonghaoSelect").selectedIndex;
			var colVal = options[index].value;
			http("follow/yuangong/yuangonggonghao","GET",{
				tableName: "yuangong",
				columnName: "yuangonggonghao",
				columnValue: colVal
			},(res)=>{
				if(res.code == 0){
					if(res.data != null && res.data.yuangongxingming != null){
						$("#yuangongxingming").val(res.data.yuangongxingming);
					}
					if(res.data != null && res.data.bumen != null){
						$("#bumen").val(res.data.bumen);
					}
				}
			});
			
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
		                url: baseUrl + "qingjiaxinxi/info/" + id,
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
			$('#cailiaozhengmingupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {							
					document.getElementById('cailiaozhengming-input').setAttribute('value','file/download?fileName='+data.result.file);
					if(document.getElementById('cailiaozhengmingFileName') != null){
						document.getElementById('cailiaozhengmingFileName').innerHTML = "上传成功!";
					}		
					$("#cailiaozhengmingImg").attr("src",data.result.file);												
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
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
				if(crossFlag) {
				}
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
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
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
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("qingjiaxinxi/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("qingjiaxinxi/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("qingjiaxinxi/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
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
					},
				    yuangongxingming: {
					},
				    bumen: {
					},
				    qingjialeixing: {
					},
				    qingjiashiyou: {
					},
				    cailiaozhengming: {
					},
				    kaishishijian: {
					},
				    jieshushijian: {
					},
				    qingjiashizhang: {
					number: true,
					},
				    sfsh: {
					},
				    shhf: {
					},
				},
				messages: {
					yuangongxingming: {
					},
					bumen: {
					},
					qingjialeixing: {
					},
					qingjiashiyou: {
					},
					cailiaozhengming: {
					},
					kaishishijian: {
					},
					jieshushijian: {
					},
					qingjiashizhang: {
						number: "请输入数字",	
					},
					sfsh: {
					},
					shhf: {
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
				http("qingjiaxinxi/info/" + id,"GET",{},(res)=>{
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
												yuangonggonghaoSelect2();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				yuangonggonghaoSelect2();	



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
			$("#kaishishijianDate").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:ss',
				minuteStep:1,
				language:'zh-CN',
			});
			$("#jieshushijianDate").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:ss',
				minuteStep:1,
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
			http("qingjiaxinxi"+colName,"GET",{
				tableName: "qingjiaxinxi",
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
				
						$("#yuangongxingming").val(ruleForm.yuangongxingming);	
			$("#bumen").val(ruleForm.bumen);	
			var qingjialeixingOptions = document.getElementsByClassName("qingjialeixingOption");
			for(var qingjialeixingCount = 0; qingjialeixingCount < qingjialeixingOptions.length;qingjialeixingCount++){
				if(qingjialeixingOptions[qingjialeixingCount].getAttribute('value') == ruleForm.qingjialeixing){
					qingjialeixingOptions[qingjialeixingCount].setAttribute('selected','selected');
				}
			}
			$("#qingjiashiyou").val(ruleForm.qingjiashiyou);	
			$("#cailiaozhengming-input").val(ruleForm.cailiaozhengming);
			$("#cailiaozhengmingFileName").html(ruleForm.cailiaozhengming);
			$("#kaishishijian-input").val(ruleForm.kaishishijian);
			$("#jieshushijian-input").val(ruleForm.jieshushijian);
			$("#qingjiashizhang").val(ruleForm.qingjiashizhang);	
				
						$("#shhf").val(ruleForm.shhf);	
		}		
		//图片显示
		function showImg(){
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

					}
					if(res.data != null && res.data != '' && res.data.yuangongxingming != null && res.data.yuangongxingming != ''){

						$("#yuangongxingming").val(res.data.yuangongxingming);
						$("#yuangongxingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.bumen != null && res.data.bumen != ''){

						$("#bumen").val(res.data.bumen);
						$("#bumen").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.qingjialeixing != null && res.data.qingjialeixing != ''){

						var qingjialeixingOptions = document.getElementsByClassName("qingjialeixingOption");
						for(var qingjialeixingCount = 0; qingjialeixingCount < qingjialeixingOptions.length;qingjialeixingCount++){
							if(qingjialeixingOptions[qingjialeixingCount].getAttribute('value') == res.data.qingjialeixing){
								qingjialeixingOptions[qingjialeixingCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.qingjiashiyou != null && res.data.qingjiashiyou != ''){

						$("#qingjiashiyou").val(res.data.qingjiashiyou);
						$("#qingjiashiyou").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.cailiaozhengming != null && res.data.cailiaozhengming != ''){

						$("#cailiaozhengming-input").val(res.data.cailiaozhengming);
						$('#cailiaozhengmingFileName').val(res.data.cailiaozhengming)
					}
					if(res.data != null && res.data != '' && res.data.kaishishijian != null && res.data.kaishishijian != ''){

						$("#kaishishijian-input").val(res.data.kaishishijian);
						$('#kaishishijianFileName').val(res.data.kaishishijian)
					}
					if(res.data != null && res.data != '' && res.data.jieshushijian != null && res.data.jieshushijian != ''){

						$("#jieshushijian-input").val(res.data.jieshushijian);
						$('#jieshushijianFileName').val(res.data.jieshushijian)
					}
					if(res.data != null && res.data != '' && res.data.qingjiashizhang != null && res.data.qingjiashizhang != ''){

						$("#qingjiashizhang").val(res.data.qingjiashizhang);
						$("#qingjiashizhang").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){

					}
					if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

						$("#shhf").val(res.data.shhf);
						$("#shhf").attr('readonly','readonly');
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
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
                $("#qingjiashizhang").attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
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
