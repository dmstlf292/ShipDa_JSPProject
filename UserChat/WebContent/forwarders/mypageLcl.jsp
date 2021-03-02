<%@page import="quote.LclBean"%>
<%@page import="fmember.ForwardersMemberBean"%>
<%@page import="forwarders.LclQuotationBean"%>
<%@page import="java.util.Vector"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="lclq" class="forwarders.LclQuotationMgr"/>
<jsp:useBean id="lclMgr" class="quote.LclMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = (String)session.getAttribute("idKey");
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
		function lclReplyRead(no){
			document.detail.no.value=no?;
			document.detail.submit();
		}
	</script>
	</head>
	<body>
	
	<nav class="navbar navbar-default navbar-mobile navbar-fixed light bootsnav">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="index.jsp">
						<img src="assets/img/logo.png" class="logo logo-display" alt="">
						<img src="assets/img/logo.png" class="logo logo-scrolled" alt="">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">
						<li>
							<a href="index.jsp" class="dropdown-toggle">Home</a>
						</li>
						<li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">�����Ƿ� ����Ʈ</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<div class="content">
												<ul class="menu-col">
													<li><a href="boardFclView.jsp">FCL�����Ƿ� ����Ʈ</a></li>
													<li><a href="boardLclView.jsp">LCL�����Ƿ� ����Ʈ</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">MyPage</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<div class="content">
												<ul class="menu-col">
													<li><a href="mypageFcl.jsp">My Page</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li><a href="pricing.jsp">Pricing</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<%
							if(id!=null){
						%>
						<li><a class="dropdown-toggle">Hi, <%=id %></a></li>
						<li class="br-right"><a href="../user/userLogout.jsp" ><i class="login-icon ti-user"></i>Logout</a></li>
						<%}%>
					</ul>
				</div>
			</div>  
		</nav>
		<section class="dashboard gray-bg padd-0 mrg-top-50">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-sm-3 dashboard-bg">
							<nav class="navbar navbar-side">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#dashboard-menu">
									<i class="fa fa-bars"></i>
								</button>
							</div>
							<div class="collapse sidebar-collapse" id="dashboard-menu">
								<div class="profile-wrapper">
									<div class="profile-wrapper-thumb">
										<img src="../member/images/icon.png" class="img-responsive img-circle" alt="" />
										<span class="dashboard-user-status bg-success"></span>
									</div>
									<h4><%=id%></h4>
								</div>
								<ul class="nav" id="main-menu">
									<li>
										<a href="mypageFcl.jsp"><i class="fa fa-dashboard" aria-hidden="true"></i>FCL/â���԰� �� ���Կ��</a>
										<a href="mypageLcl.jsp"><i class="fa fa-dashboard" aria-hidden="true"></i>LCL/â���԰� �� ���Կ��</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
					<div class="col-lg-10 col-md-10 col-sm-9 col-lg-push-2 col-md-push-2 col-sm-push-3">
						<div class="row mrg-0 mrg-top-20">
							<div class="tr-single-box">
								<div class="tr-single-header">
									<h3 class="dashboard-title">���� �������� LIST</h3>
								</div>
								<div class="tr-single-body">
										
									<div class="detail-wrapper padd-top-30 padd-bot-30">
										<div class="row  mrg-0 detail-invoice">
											<div class="col-lg-12 col-md-12 col-sm-12">
												<div class="invoice-table">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>#NO</th>
																	<th>ITEM</th>
																	<th>DEPARTURE</th>
																	<th>ARRIVE</th>
																	<th>INCOTERMS</th>
																	<th>DATE</th>
																	<th>STATEMENT</th>
																	<th>DETAIL</th>
																</tr>
															</thead>
															<%
																Vector<LclQuotationBean> vlist = lclq.getLclQuotationList(id);
																//out.println(vlist.size());
																if(vlist.isEmpty()){
															%>
															<tr>
																<td colspan="7" align="center">Empty</td>
															</tr>
															<%}else{
																for(int i=0; i<vlist.size();i++){
																	LclQuotationBean quotation = vlist.get(i);
																	int lclno = quotation.getLclno();
																	//���Ⱑ �̹� ����Ǿ��ִ� ��� (bean)
																	//for������ ����Ʈ ������ 
																	//vlist.get(0).getNo() //�ε��� 0 ���� ����Ʈ�� no
																	//vlist.get(1).getNo() //�ε��� 1 ���� ����Ʈ�� no
																	LclBean lcl = lclMgr.getLcl(vlist.get(i).getNo());
															%>
															<tbody>
																<tr>
																	<td><%=quotation.getNo()%></td>
																	<td><%=lcl.getItem() %></td>
																	<td><%=lcl.getDeparture()%></td>
																	<td><%=lcl.getArrive()%></td>
																	<td><%=lcl.getIncoterms()%></td>
																	<td><%=quotation.getDate()%></td>
																	<td>
																		<%
																			switch(quotation.getState()){
																				case "1":out.print("Estimating in progress");break;
																				case "2":out.print("Quotation calculation completed");break;
																			}
																		%>
																	</td>
																	<td>
																		<!-- mypage?no= �̰� get���, �ּ�â���� ���̴� ��� => get ��� -->
																		<button name = "detail" method="post" class="btn theme-btn"
																		onclick="location.href='lclReplyRead.jsp?no=<%=quotation.getNo()%>';">detail</button>
																	</tr>
															</tbody>
																</tr>
															<%						
															  }//---for
															}//---if-else
															%>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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
		<script src="assets/plugins/js/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/js/jquery.metisMenu.js"></script>
		<script src="assets/plugins/js/jquery.easing.min.js"></script>
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