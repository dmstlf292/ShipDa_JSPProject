<%@page import="quote.LclBean"%>
<%@page import="forwarders.UtilMgr"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="lcl" class="quote.LclMgr"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ ���Թ��� ������ Ship-da</title>
	<link rel="stylesheet" href="assets/plugins/css/plugins.css">	
    <link href="assets/css/style.css" rel="stylesheet">
	<link href="atkfkdssets/css/responsiveness.css" rel="stylesheet">
	<link id="jssDefault" rel="stylesheet" href="assets/css/skins/default.css">
	</head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		function call(){
			   	var width =document.getElementById("width").value;
				var llength = document.getElementById("llength").value;
				var height =  document.getElementById("height").value;
				var pakageCount = 	document.getElementById("packageCount").value;
				//�Ҽ������� ����Ҷ� var sum =(pickupRate*stuffingRate); �̷�������
				var test1 = (((width)*(llength)*(height))*(pakageCount));
				var test2 = parseInt(test1);

				console.log(width)
				console.log(llength)
				console.log(height)
			 	console.log(pakageCount)
			 	console.log(test2)
				
				
				$("#cbmCal").val(test2);
		}
	</script>
	<body>
	<%@ include file="../index/top.jsp" %>
		<div class="page-title image-title" style="background-image:url(assets/img/banner.jpg);">
			<div class="container">
				<div class="page-title-wrap">
				<h2>LCL�����Ƿ�</h2>
				<p><a href="#" class="theme-cl">Home</a> | <span>LCL</span></p>
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
							 
							 
							  <form name="regFrm" method="post" action="boardLclProc.jsp">
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
														<h5>LCL : Less than container loaded�� ���ڷ�, ���Ա���� �ϳ��� �����̳ʸ� ���� ���Ա���� �Բ� ����ϴ� ���� �ǹ��մϴ�.</h5>
													</div>
													</br>
													<div class="col-md-12">
														<p>
															<label>��������</label>
															<select class="wide form-control" name="incoterms">
																<option value="CFR / LCL">CFR / LCL</option>
																<option value="CIF / LCL">CIF / LCL</option>
																<option value="CIP / LCL">CIP / LCL</option>
																<option value="CPT / LCL">CPT / LCL</option>
																<option value="DAP / LCL">DAP / LCL</option>
																<option value="DDP / LCL">DDP / LCL</option>
																<option value="EXW / LCL">EXW / LCL</option>
																<option value="FCA / LCL">FCA / LCL</option>
																<option value="FOB / LCL">FOB / LCL</option>
															</select>
														</p>
													</div>
													<div class="col-md-6">
														<p>
															<label>����� ����</label>
															<input type="text" class="form-control" placeholder="enter" name="departure" required>
														</p>
														<p>
															<label>��� port</label>
															<input type="text"  class="form-control" placeholder="enter" name="port" required>
														</p>
														<p>
															<label>����� ���� ���ּ� �Է�</label>
															<input type="text"  class="form-control" placeholder="enter"  name="address">
														</p>
														<p>
															<label>����� ������ �ױ�</label>
															<input type="text"class="form-control" placeholder="enter"  name="transit">
														</p>
													</div>	
													<div class="col-md-6">
														<p>
															<label>������ ����</label>
															<input type="text" class="form-control" placeholder="enter"  name="arrive" required>
														</p>
														<p>
															<label>���� port</label>
															<input type="text"  class="form-control" placeholder="enter" name="aport" required>
														</p>
														<p>
															<label>������ ���� ���ּ� �Է�</label>
															<input type="text"  class="form-control" placeholder="enter"  name="aAddress">
														</p>
														<p>
															<label>������ ������ �ױ�</label>
															<input type="text"class="form-control" placeholder="enter"  name="aTransit">
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
													<div class="col-md-3">
														<p>
															<label>���� TYPE</label>
															<select class="wide form-control" name="packingType">
																<option value="Pallets">Pallets</option>
																<option value="Boxes">Boxes</option>
																<option value="Cartons">Cartons</option>
																<option value="Crates">Crates</option>
																<option value="Drums">Drums</option>
																<option value="Bags">Bags</option>
																<option value="Bales">Bales</option>
																<option value="Bundles">Bundles</option>
																<option value="Cans">Cans</option>
																<option value="Carboys">Carboys</option>
																<option value="Carpets">Carpets</option>
																<option value="Cases">Cases</option>
																<option value="Coils">Coils</option>
																<option value="Cylinders">Cylinders</option>
																<option value="Loose">Loose</option>
																<option value="Pails">Pails</option>
																<option value="Reels">Reels</option>
																<option value="FRolls">Rolls</option>
																<option value="Tubes">Tubes</option>
																<option value="Pipes">Pipes</option>
																<option value="Other">Other</option>
															</select>
														</p>
														<p>
															<!-- �̰��ʿ� -->
															<label>����</label>
															<input type="number" maxlength="255" class="form-control" placeholder="MM�� ���ڸ� �Է��ϼ���"  name="width" id="width" required>
														</p>
														<p>
															<!-- �̰��ʿ� -->
															<label>����</label>
															<input type="number" maxlength="255" class="form-control" placeholder="MM�� ���ڸ� �Է��ϼ���"  name="llength" id="llength" required>
														</p>
														<p>
															<!-- �̰��ʿ� -->
															<label>����</label>
															<input type="number" maxlength="255" class="form-control" placeholder="MM�� ���ڸ� �Է��ϼ���"  name="height" id="height" required>
														</p>
													</div>
													<div class="col-md-3">
														<p>
															<label>ǰ��</label>
															<input type="text" class="form-control" placeholder="enter"  name="item" required>
														</p>
														<p>
															<label>���Ǵ���</label>
															<select class="wide form-control" name="volumeUnit">
																<option value="MM">MM</option>
															</select>
														</p>
														
													</div>
													<div class="col-md-3">
														<p>
															<label>���蹰</label>
															<select class="wide form-control" name="danger">
																<option value="NO">NO</option>
																<option value="YES">YES</option>
															</select>
														</p>
														<p>
															<label>�߷�</label>
															<input type="number" maxlength="255" class="form-control" placeholder="���ڸ� �Է��ϼ���"  name="volume"  required>
														</p>
														<p>
															<label>�߷�����</label>
															<select class="wide form-control" name="weightUnit">
																<option value="TON">TON</option>
																<option value="KG">KG</option>
															</select>
														</p>
													</div>
													<div class="col-md-3">
														<p>
															<label>2�� ����</label>
															<select class="wide form-control" name="stackable">
																<option value="NO">NO</option>
																<option value="YES">YES</option>
															</select>
														</p>
														<p>
															<label>�������</label>
															<!-- �̰��ʿ� -->
															<input type="number" maxlength="255" class="form-control" placeholder="���ڸ� �Է��ϼ���" 
															onkeyup="call()" name="packageCount" id="packageCount"  required>
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
															<select class="wide form-control" name="lss">
																<option value="Not Included">Not Included</option>
																<option value="Include">Include</option>
															</select>
														</p>
													</div>
													<div class="col-md-4">
														<p>
															<label>Ocean Surcharge</label>
															<select class="wide form-control" name="surcharge">
																<option value="Not Included">Not Included</option>
																<option value="Include">Include</option>
															</select>
														</p>
													</div>
													<div class="col-md-4">
														<p>
															<label>���� �δ���</label>
															<select class="wide form-control" name="extra">
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
															<label>���� �δ���</label>
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
										
										<div class="panel panel-default">
											<div class="panel-heading" role="tab" id="title4">
												<h4 class="panel-title">
													<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#col4" aria-expanded="false" aria-controls="col4">
														����� CBM
													</a>
												</h4>
											</div>
											<div id="col4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="title4">
												<div class="panel-body">
													<div class="col-md-4">
														<p>
															<label>����� �� CBM</label>
															<input type="number" maxlength="255" class="form-control" name="cbmCal" id="cbmCal" >
														</p>
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