<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>添加汇交测绘数据</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/autocomplete/jquery.autocomplete.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/easyui/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/uploader/swfobject.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/uploader/jquery.uploadify.v2.1.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/autocomplete/jquery.autocomplete.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/autocomplete/jquery.autocomplete.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/util/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/YMLib.js"></script>
<script type="text/javascript">
$(function(){
	$("#wcsj").datebox({    
	});  
	$("#jcyssj").datebox({    
	});
	$(".combo.datebox").css("width","100px");
	$(".combo.datebox").find("input").css("width","77px");
});


</script>
</head>
<body>

	<center>
		<table width="98%" height="60%" cellpadding="0" cellspacing="0" border="0" style="margin-top: 10px; margin-left: 13px;">
			<tr>
				<td><br />
				   <table width="595px;" border="0" height="20px;">
						<tr>
							<td style="vertical-align: middle;text-align: center;">广元市测绘成果汇交凭证</td>
						</tr>
						<tr>
							<td style="vertical-align: middle;text-align: right;">广测汇凭字（20<input type="text" id="whnf" style="width: 20px;"/>）第<input type="text" id="whbh" style="width: 20px;"/>号</td>
						</tr>
					</table>
					<table width="595px;" border="0"
						style="border-style: solid; border-width: 3px 1px 1px 1px; border-color: #55BEEE #C0C0C0 #C0C0C0 #C0C0C0; height: 45px;"
						cellspacing="0" cellpadding="0">
						<tr style="height: 35px;">
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									汇交单位：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px; font-size: 12px;">
								<input  id="hjdw" name="hjdw" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									联系电话：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px; font-size: 12px;">
								<input  id="lxdh" name="lxdh" type="text"  style="width: 80px;"/>&nbsp;
							</td>
						</tr>
						<tr style="height: 35px;">
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">测绘项目名称：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px;">
								<input id="chxmmc" name="chxmmc" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">测绘项目所在地：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px; font-size: 12px;">
								<input id="chxmszd" name="chxmszd" type="text"  style="width: 80px;" />&nbsp;
							</td>
							
						</tr>
						<tr style="height: 35px;">
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">施测单位：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px;">
								<input id="scdw" name="scdw" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">完成时间：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px; font-size: 12px;">
								<input id="wcsj" name="wcsj" type="text"  style="width: 80px;" />&nbsp;
							</td>
							
						</tr>
						<tr style="height: 35px;">
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">质量检查验收单位：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px;">
								<input id="zljcysdw" name="zljcysdw" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">检查验收时间：</font></b>
							</td>
							<td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px none #C0C0C0; border-bottom: 1px solid #C0C0C0; width: 19%; text-align: left; padding-left: 10px; font-size: 12px;">
								<input id="jcyssj"  name= "jcyssj" type="text"  style="width: 80px;" />&nbsp;
							</td>
							
						</tr>
						<tr style="height: 35px;">
							<td style="border-style: none none solid none; border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;"colspan="4">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">汇交测绘成果副本或目录数量：</font><input  type="text" id="hjchcgfbhmlsl" name="hjchcgfbhmlsl"></b>
							</td>
							
						</tr>
					</table>
					
					<table width="595px;" border="1"
						style="border-style: solid; border-width: 1px 1px 1px 1px; border-color: #C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0; height: 45px;"
						cellspacing="0" cellpadding="0">
						<tr style="height: 35px;">
							<td style="zwidth: 11%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									序号</font></b>
							</td>
							<td style=" text-align: center; background-color: #F1F8FF; width: 11%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									数据类型</font></b>
							</td>
							<td style=" text-align: center; background-color: #F1F8FF; width: 11%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									数量</font></b>
							</td>
							<td style=" text-align: center; background-color: #F1F8FF; width: 11%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									坐标系</font></b>
							</td>
							<td style=" text-align: center; background-color: #F1F8FF; width: 11%; padding-right: 5px;">
								<b><font color="#009ACD" style="cursor: hand; font-size: 12px">
									备注</font></b>
							</td>
							
						</tr>
						<tr style="height: 35px;">
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="a1" name="a1" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="a2" name="a2" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="a3" name="a3" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="a4" name="a4" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="a5" name="a5" type="text"  style="width: 80px;" />&nbsp;
							</td>
							
						</tr>
					
						<tr style="height: 35px;">
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="b1" name="b1" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="b2" name="b2" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="b3" name="b3" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="b4" name="b4" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="b5" name="b5" type="text"  style="width: 80px;" />&nbsp;
							</td>
							
						</tr>
						<tr style="height: 35px;">
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="c1" name="c1" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="c2" name="c2" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="c3" name="c3" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="c4" name="c4" type="text"  style="width: 80px;" />&nbsp;
							</td>
							<td style=" border-width: 1px; border-color: #C0C0C0; color: #007DB3; font-weight: bold; font-size: small; text-align: left; background-color: #F1F8FF; width: 15%; padding-right: 5px;">
								<input id="c5" name="c5" type="text"  style="width: 80px;" />&nbsp;
							</td>
							
						</tr>
						<tr style="height: 100px;">
							<td style="text-align: left;height: 200px;vertical-align: top;"
							colspan="5">
								汇交测绘成果副本或目录详细内容：<br/>
								<textarea name="hjchcgfbhmlxxnr" rows="20" cols="20" id="hjchcgfbhmlxxnr"
						style="border-color: Black; border-width: 1px; border-style: Solid; height: 88%; width: 99%; overflow: auto"></textarea>
								
							</td>
							
						</tr>
					</table>
					<table width="595px;" border="1"
						style="border-style: solid; border border-width: 1px 1px 1px 1px; border-color: #C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0; height: 120px;"
						cellspacing="0" cellpadding="0">
						<tr>
							<td style="vertical-align: middle;text-align: center;"><span style="text-align: left;">汇交人签名：     &nbsp; &nbsp; &nbsp; &nbsp;接收人签名：</span><br/>
							<input type="text" id="hjrqm" name="hjrqm"/>             <input type="text"  id="jsrqm" name="jsrqm"/>
							<br/> <input type="text"  id="hjjsn" name="hjjsn" style="width: 40px;"/>年  <input type="text"  id="hjjsy" name="hjjsy" style="width: 20px;"/>月 <input type="text"  id="hjjsr" name="hjjsr" style="width: 20px;"/> 日</td>
							<td style="vertical-align: middle;text-align: center;">负责接收的测绘行政主管部门<br/>（签章）<br/>
								<input type="text"  id="qzn" name="qzn" style="width: 40px;"/>年  <input type="text"  id="qzy" name="qzy" style="width: 20px;"/>月 <input type="text"  id="qzr" name="qzr" style="width: 20px;"/> 日</td>
							</td>
						</tr>
						
					</table>
					 注：本凭证一式两份。汇交单位一份，接收单位一份。                       广元市测绘地理信息局  制
					<table width="100%" border="0"
						style=" margin-top: 20px; height: 45px;"
						cellspacing="0" cellpadding="0">
						<tr style="height: 30px;">
							<td align="center">
							<td align="center">
								<input type="image" name="btnAdd" id="btnAdd" onclick="addZjxd()"
								onmouseover="this.src='${pageContext.request.contextPath}/images/Button/baocun2.gif'" alt="保存"
								onmouseout="this.src='${pageContext.request.contextPath}/images/Button/baocun1.gif'"
								src="${pageContext.request.contextPath}/images/Button/baocun1.gif" style="border-width: 0px;" />
								&nbsp; 
								<input type="image" name="btnCancel" id="btnCancel" onmouseover="this.src='${pageContext.request.contextPath}/images/Button/fanhui2.GIF'" alt="返回"
								onclick="parent.$('#hjch_add_win').window('destroy');" onmouseout="this.src='${pageContext.request.contextPath}/images/Button/fanhui1.GIF'"
								src="${pageContext.request.contextPath}/images/Button/fanhui1.GIF" style="border-width: 0px;" />
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
		<script type="text/javascript">
		
			function addZjxd(){
				if($('input[name="wcsj"]').val()==""){
					alert("完成时间不能为空！");
					return;
				}
				var hjch={'hjch.whnf':$('#whnf').val(),'hjch.whbh':$('#whbh').val(),
						'hjch.hjdw':$("#hjdw").val(),'hjch.lxdh':$('#lxdh').val() ,
						'hjch.chxmmc':$('#chxmmc').val(),'hjch.chxmszd':$("#chxmszd").val(),
						'hjch.scdw':$('#scdw').val(),'hjch.wcsj':$('input[name="wcsj"]').val(),
						'hjch.zljcysdw':$('#zljcysdw').val(),'hjch.jcyssj':$('input[name="jcyssj"]').val(),
						'hjch.hjchcgfbhmlsl':$('#hjchcgfbhmlsl').val(),'hjch.hjchcgfbhmlxxnr':$('#hjchcgfbhmlxxnr').val(),
						'hjch.a1':$('#a1').val(),'hjch.a2':$('#a2').val(),
						'hjch.a3':$('#a3').val(),'hjch.a4':$('#a4').val(),
						'hjch.a5':$('#a5').val(),'hjch.b1':$('#b1').val(),
						'hjch.b2':$('#b2').val(),'hjch.b3':$('#b3').val(),
						'hjch.b4':$('#b4').val(),'hjch.b5':$('#b5').val(),
						'hjch.c1':$('#c1').val(),'hjch.c2':$('#c2').val(),
						'hjch.c3':$('#c3').val(),'hjch.c4':$('#c4').val(),
						'hjch.c5':$('#c5').val(),'hjch.hjrqm':$('#hjrqm').val(),
						'hjch.jsrqm':$('#jsrqm').val(),'hjch.hjjsn':$('#hjjsn').val(),
						'hjch.hjjsy':$('#hjjsy').val(),'hjch.hjjsr':$('#hjjsr').val(),
						'hjch.qzn':$('#qzn').val(),'hjch.qzy':$('#qzy').val(),
						'hjch.qzr':$('#qzr').val()};
				$.ajax({
					type:'post',
					url:'/gych/sjjs/insertHjch.do',
					dataType:'json',
					data:hjch,
					success:function(data){
						alert("保存成功！");
						parent.startSearch();
						parent.$('#hjch_add_win').window('destroy');
					}
				});
			}
		</script>
	</center>
</body>
</html>