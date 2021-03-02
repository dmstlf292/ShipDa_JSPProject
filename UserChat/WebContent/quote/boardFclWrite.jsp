<%@ page  contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
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
							<li role="presentation" class="active"><a href="#User" aria-controls="home" role="tab" data-toggle="tab"><i class="ti-user"></i>�ǽð� ������ȸ</a></li>
						</ul>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="User">
								
								
								
								
							  <form name="regFrm" method="post" action="boardFclProc.jsp">
								<div class="simple-accordion">
									<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
										
										
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="title1">
												<h4 class="panel-title">
													<a role="button" data-toggle="collapse" data-parent="#accordion" href="#col1" aria-expanded="true" aria-controls="col1">
														��ۼ��� �� ��������
													</a>
												</h4>
											</div>
											<div id="col1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="title1">
												<div class="panel-body">
													</br>
													<div align="center">
														<h5>FCL : Full container loaded�� ���ڷ�, ���Ա���� �ϳ��� �����̳ʸ� �ܵ����� ����ϴ� ���� �ǹ��մϴ�. 
														ȭ�� �����Ͽ� ���� DRY/RF/OT/FR �����̳ʸ� �����Ͽ� ����մϴ�.</h5>
													</div>
													</br>
													<div class="col-md-12">
														<p>
															<label>��������</label>
															<select class="wide form-control" name="incoterms" required>
																<option value="CFR / FCL">CFR / FCL</option>
																<option value="CIF / FCL">CIF / FCL</option>
																<option value="CIP / FCL">CIP / FCL</option>
																<option value="CPT / FCL">CPT / FCL</option>
																<option value="DAP / FCL">DAP / FCL</option>
																<option value="DDP / FCL">DDP / FCL</option>
																<option value="EXW / FCL">EXW / FCL</option>
																<option value="FCA / FCL">FCA / FCL</option>
																<option value="FOB / FCL">FOB / FCL</option>
															</select>
														</p>
													</div>
													<div class="col-md-6">
														<p>
															<label>����� ����</label>
															<input type="text" class="form-control" name="departure" required>
														</p>
														<p>
															<label>��� port</label>
															<input type="text"  class="form-control"  name="port" required>
														</p>
														<p>
															<label>����� ���� ���ּ� �Է�</label>
															<input type="text"  class="form-control"   name="address" >
														</p>
														<p>
															<label>����� ������ �ױ�</label>
															<input type="text"class="form-control"  name="transit" >
														</p>
													</div>	
													<div class="col-md-6">
														<p>
															<label>������ ����</label>
															<input type="text" class="form-control" name="arrive" required>
														</p>
														<p>
															<label>���� port</label>
															<input type="text"  class="form-control" name="aport" required>
														</p>
														<p>
															<label>������ ���� ���ּ� �Է�</label>
															<input type="text"  class="form-control"  name="aAddress" >
														</p>
														<p>
															<label>������ ������ �ױ�</label>
															<input type="text"class="form-control"  name="aTransit" >
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="title2">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#col2" aria-expanded="false" aria-controls="col2">
														ȭ������ �Է�
													</a>
												</h4>
											</div>
											<div id="col2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="title2">
												<div class="panel-body">
													<div class="col-md-6">
														<p>
															<label>ǰ��</label>
															<input type="text" class="form-control"  name="item" required>
														</p>
														<p>
															<label>�����̳� TYPE</label>
															<select class="wide form-control" name="ctype" required>
																<option value="DRY">DRY</option>
																<option value="REEFER">REEFER</option>
																<option value="OPEN TOP">OPEN TOP</option>
																<option value="FLAT RACK">FLAT RACK</option>
															</select>
														</p>
														<p>
															<label>�����̳� ������</label>
															<select class="wide form-control" name="csize" required>
																<option value="20 DRY">20 DRY</option>
																<option value="40 DRY">40 DRY</option>
																<option value="40 HQ">40 HQ</option>
															</select>
														</p>
													</div>
													<div class="col-md-6">
														<p>
															<label>�����̳� ����</label>
															<input type="number" maxlength="255" class="form-control" placeholder="���ڸ� �Է��ϼ���"  name="volume" maxlength="20" required>
														</p>
														<p>
															<label>���蹰</label>
															<select class="wide form-control" name="danger" required>
																<option value="NO">NO</option>
																<option value="YES">YES</option>
															</select>
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
													</br>
													<div>
														<h5> * LSS : ����Ȳ��������� ���������� �߻��ϴ� ����Դϴ�. ��������� �����ڰ� �����մϴ�.</h5>
														<h5> * Ocean Surcharge : �ػ���� ��, ���������� �߻��ϴ� �ػ���� �߰����(BAF,CAF,CRS)�� �ǹ��մϴ�.</h5>
														<h5> * ���� �δ��� : ���� ��, ���� �ױ�/���׿��� �߻��ϴ� ���(THC, WFG ��)�� �ǹ��մϴ�.</h5>
													</div>
													</br>
													
													<div class="col-md-4">
														<p>
															<label>LSS</label>
															<select class="wide form-control" name="lss" required> 
																<option value="Not Included">Not Included</option>
																<option value="Include">Include</option>
															</select>
														</p>
													</div>
													<div class="col-md-4">
														<p>
															<label>Ocean Surcharge</label>
															<select class="wide form-control" name="surcharge" required>
																<option value="Not Included">Not Included</option>
																<option value="Include">Include</option>
															</select>
														</p>
													</div>
													<div class="col-md-4">
														<p>
															<label>���� �δ���</label>
															<select class="wide form-control" name="extra" required>
																<option value="Not Included">Not Included</option>
																<option value="Include">Include</option>
															</select>
														</p>
													</div>
													</br>
													<div class="col-md-12">
														<h4>�ʿ��� ������ �������ּ���.</h4>
													</div>
													
													</br>
													<div class="col-md-12">
														<p>
															<input type="radio" name="client" value="Customs Broker" autocomplete="off" checked>Customs Broker&nbsp;&nbsp;&nbsp;
															<input type="radio" name="client" value="Insurance" autocomplete="off">Insurance
														</p>
													</div>
													
													</br>
													<div class="col-md-12">
														<h5> * �������������� ��� ȭ�� ���� �� �ݾ׿� ������� 1ȸ 30,000��(VAT ����)�� û���˴ϴ�.</h5>
														<h5> * �ػ�/�װ� ��� �߻� �ø� ����Ͽ� �����ϴ� �����Դϴ�. ��������� ����ǰ���� * 110% * 0.03%���� ����˴ϴ�.</h5>
													</div>
												</div>
												
											</div>
										</div>
									</div>
									 <input type="submit" value="���" class="btn theme-btn"> 
									 <input type="hidden" value="<%=userID%>" name="userID"> 
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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