<%@page import="fmember.ForwardersMemberMgr"%>
<%@page import="quote.FclBean"%>
<%@page import="quote.UtilMgr"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="fcl" class="quote.FclMgr"/>
<%
		
		String nowPage = request.getParameter("nowPage");	
		String noPerPage = request.getParameter("noPerPage");	
		String keyField = request.getParameter("keyField");	
		String keyWord = request.getParameter("keyWord");
		int no = UtilMgr.parseInt(request, "no");	
		fcl.upCountFcl(no);
		FclBean fbean = fcl.getFcl(no);
		String departure = fbean.getDeparture();
		String port = fbean.getPort();
		String address = fbean.getAddress();
		String transit = fbean.getTransit();
		String arrive = fbean.getArrive();
		String aport = fbean.getAport();
		String aAddress = fbean.getaAddress();
		String aTransit = fbean.getaTransit();
		String incoterms = fbean.getIncoterms();
		String item = fbean.getItem();
		String ctype = fbean.getCtype();
		String csize = fbean.getCsize();
		String danger = fbean.getDanger();
		String lss = fbean.getLss();
		String surcharge = fbean.getSurcharge();
		String extra = fbean.getExtra();
		String regdate = fbean.getRegdate();
		int count = fbean.getCount();
		String client = fbean.getClient();
		int volume = fbean.getVolume();
		
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ ���Թ��� ������ Ship-da</title>
	<link rel="stylesheet" href="assets/plugins/css/plugins.css">	
    <link href="assets/css/style.css" rel="stylesheet">
	<link href="assets/css/responsiveness.css" rel="stylesheet"><link id="jssDefault" rel="stylesheet" href="assets/css/skins/default.css">
	<script type="text/javascript">
		function list() {
			document.listFrm.action = "boardFclView.jsp";
			document.listFrm.submit();
		}
	</script>
	</head>
	<body>
	<%@ include file="../index/top.jsp" %>
		<div class="page-title image-title" style="background-image:url(assets/img/banner.jpg);">
			<div class="container">
				<div class="page-title-wrap">
				<h2>FCL�����Ƿ�</h2>
				<p><a href="#" class="theme-cl">Home</a> | <span>FCL</span></p>
				</div>
			</div>
		</div>
		<section class="gray-bg">
			<div class="container">
				<div class="row">
					<div class="simple-tab-style">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#User" aria-controls="home" role="tab" data-toggle="tab"><i class="ti-user"></i>�ǽð� ������ȸ ������</a></li>
						</ul>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="User">
								<div class="simple-accordion">
									<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
										
										
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="title1">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse" data-parent="#accordion" href="#col1" aria-expanded="true" aria-controls="col1">
														��������&nbsp;&nbsp;&nbsp;<%=fbean.getIncoterms()%>
													</a>
												</h4>
											</div>
											<div id="col1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="title1">
												<div class="panel-body">
													<div class="col-md-6">
														<p>
															<label>����� ����</label>
															<input type="text" class="form-control" placeholder="enter" name="departure" value="<%=fbean.getDeparture()%>" readonly>
														</p>
														<p>
															<label>��� port</label>
															<input type="text"  class="form-control" placeholder="enter" name="port" value="<%=fbean.getPort()%>" readonly>
														</p>
														<p>
															<label>����� ���� ���ּ� �Է�</label>
															<input type="text"  class="form-control" placeholder="enter"  name="address" value="<%=fbean.getAddress()%>" readonly>
														</p>
														<p>
															<label>����� ������ �ױ�</label>
															<input type="text"class="form-control" placeholder="enter"  name="transit" value="<%=fbean.getTransit()%>" readonly>
														</p>
													</div>	
													<div class="col-md-6">
														<p>
															<label>������ ����</label>
															<input type="text" class="form-control" placeholder="enter"  name="arrive" value="<%=fbean.getArrive()%>" readonly>
														</p>
														<p>
															<label>���� port</label>
															<input type="text"  class="form-control" placeholder="enter" name="aport" value="<%=fbean.getAport()%>" readonly>
														</p>
														<p>
															<label>������ ���� ���ּ� �Է�</label>
															<input type="text"  class="form-control" placeholder="enter"  name="aAddress" <%=fbean.getaAddress()%>" readonly>
														</p>
														<p>
															<label>������ ������ �ױ�</label>
															<input type="text"class="form-control" placeholder="enter"  name="aTransit" <%=fbean.getaTransit()%>" readonly>
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="title2">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#col2" aria-expanded="false" aria-controls="col2">
														ȭ�� �ֿ� ���� & ���庰 �� ����
													</a>
												</h4>
											</div>
											<div id="col2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="title2">
												<div class="panel-body">
													<div class="col-md-6">
														<p>
															<label>ǰ��</label>
															<input type="text" class="form-control" name="item" value="<%=fbean.getItem()%>" readonly>
														</p>
														<p>
															<label>�����̳� TYPE</label>
															<input type="text" class="form-control" name="ctype" value="<%=fbean.getCtype()%>" readonly>
														</p>
														<p>
															<label>�����̳� ������</label>
															<input type="text" class="form-control" name="csize" value="<%=fbean.getCsize()%>" readonly>
														</p>
													</div>
													<div class="col-md-6">
														<p>
															<label>�����̳� ����</label>
															<input type="text" class="form-control"  name="volume" value="<%=fbean.getVolume()%>" readonly>
														</p>
														<p>
															<label>���蹰</label>
															<input type="text" class="form-control"  name="danger" value="<%=fbean.getDanger()%>" readonly>
														</p>
														
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="title3">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#col3" aria-expanded="false" aria-controls="col3">
														üũ����Ʈ
													</a>
												</h4>
											</div>
											<div id="col3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="title3">
												<div class="panel-body">
													<div class="col-md-4">
														<p>
															<label>LSS</label>
															<input type="text"  class="form-control"name="lss" value="<%=fbean.getLss()%>">
														</p>
													</div>
													<div class="col-md-4">
														<p>
															<label>Ocean Surcharge</label>
															<input type="text"  class="form-control"name="surcharge" value="<%=fbean.getSurcharge()%>">
														</p>
													</div>
													<div class="col-md-4">
														<p>
															<label>���� �δ���</label>
															<input type="text"  class="form-control"name="extra" value="<%=fbean.getExtra()%>">
														</p>
													</div>
												</div>
												
											</div>
										</div>
									</div>
									 <a href="javascript:list()" class="btn theme-btn">������� ���ư���</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<form name="listFrm">
			<input type="hidden" name="nowPage" value="<%=nowPage%>">
			<input type="hidden" name="noPerPage" value="<%=noPerPage%>">
			<%if(!(keyWord==null||keyWord.equals(""))){%>
			<input type="hidden" name="keyField" value="<%=keyField%>">
			<input type="hidden" name="keyWord" value="<%=keyWord%>">
			<%}%>
		</form>
		<%@ include file="../index/footer.jsp" %>
		<button class="w3-button w3-teal w3-xlarge w3-right" onclick="openRightMenu()"><i class="spin theme-cl fa fa-cog" aria-hidden="true"></i></button>
		<div class="w3-sidebar w3-bar-block w3-card-2 w3-animate-right" style="display:none;right:0;" id="rightMenu">
		  <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large theme-bg">Close &times;</button>
		   <ul id="styleOptions" title="switch styling">
				<li>
					<a href="javascript: void(0)" class="cl-box cl-default" data-theme="skins/default"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-red" data-theme="skins/red"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-green" data-theme="skins/green"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-blue" data-theme="skins/blue"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-pink" data-theme="skins/pink"></a>
				</li>
				<li>
					<a href="javascript: void(0)" class="cl-box cl-purple" data-theme="skins/purple"></a>
				</li>
			</ul>
		</div>
		<!-- /Switcher -->
		 
		<!-- =================== START JAVASCRIPT ================== -->
		<script src="assets/plugins/js/jquery.min.js"></script>
		<script src="assets/plugins/js/bootstrap.min.js"></script>
		<script src="assets/plugins/js/viewportchecker.js"></script>
		<script src="assets/plugins/js/bootsnav.js"></script>
		<script src="assets/plugins/js/slick.min.js"></script>
		<script src="assets/plugins/js/jquery.nice-select.min.js"></script>
		<script src="assets/plugins/js/jquery.fancybox.min.js"></script>
		<script src="assets/plugins/js/jquery.downCount.js"></script>
		<script src="assets/plugins/js/freshslider.1.0.0.js"></script>
		<script src="assets/plugins/js/moment.min.js"></script>
		<script src="assets/plugins/js/daterangepicker.js"></script>
		<script src="assets/plugins/js/wysihtml5-0.3.0.js"></script>
		<script src="assets/plugins/js/bootstrap-wysihtml5.js"></script>
		
		<!-- Dashboard Js -->
		<script src="assets/plugins/js/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/js/jquery.metisMenu.js"></script>
		<script src="assets/plugins/js/jquery.easing.min.js"></script>
 
		<!-- Custom Js -->
		<script src="assets/js/custom.js"></script>
		
		<script src="assets/js/jQuery.style.switcher.js"></script>
		<script>
			function openRightMenu() {
				document.getElementById("rightMenu").style.display = "block";
			}
			function closeRightMenu() {
				document.getElementById("rightMenu").style.display = "none";
			}
		</script>

		<script type="text/javascript">
			$(document).ready(function() {
				$('#styleOptions').styleSwitcher();
			});
		</script>
	
    </body>

</html>