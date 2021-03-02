<%@ page  contentType="text/html; charset=EUC-KR"%>
<%@page import="member.UserDAO"%>
<%@page pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="fmember.ForwardersMemberMgr"/>

<%
		request.setCharacterEncoding("EUC-KR");
		String id = (String)session.getAttribute("idKey");
		if(id==null){
			//���� ���ӵ� url��
			StringBuffer url = request.getRequestURL();
			response.sendRedirect("../user/login.jsp?url="+url);
			return;//���Ŀ� jsp �ڵ� ���� �ȵ�.
		}
		
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
													<li><a href="../forwarders/mypageFcl.jsp">My Page</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li>
							<a href="pricing.jsp">Pricing</a>
						</li>
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
		<div class="main-banner" style="background-image:url(assets/img/banner-7.jpg);">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
					<div class="caption text-center cl-white">
						<h2>������ ���Թ��� ������ ����</h2>
						<p>������ ������ ������ ��� Ȯ��</p>
					</div>
					<form class="wow-form"> 
						<input type="text" placeholder="������ �̸����� �Է��ϼ���.">
						<button type="submit" class="btn btn-wow theme-btn" name="submit" value="Search">���� �̿��ϱ�</button>
					</form>
					<div class="caption text-center cl-white">
						<p>���ٴ� ������ ȭ���� ���� ����ϴ� ������ ������ �����Դϴ�.
						</br>�̸��� �Է� �� ����� ���񽺸� �̿��ϼ���.</p>
					
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<section>
			<div class="container">
				
				<div class="row">
					<div class="col-md-12">
						<div class="heading">
							<h1>���ٸ��� ù��° ������ �Ұ��մϴ�.</h1>
							</br>
							<h4>�����̳�(FCL) �������</h4>
							<h3>ù°, ���� ���Թ�����, ���ٿ��� �߼Ҿ�ü�� �����ϰ� ��� �����մϴ�.</h3>
							</br>
							<h4>Ÿ ������ ��� 20%���� ������ ������ ���� ���</h4>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 col-md-6">
						<article class="destination-box style-1">
							<div class="destination-box-image">
								<figure>
									<a href="destination-detail.html">
										<img src="assets/img/strength1.png" class="img-responsive listing-box-img" alt="" />
									</a>
								</figure>
							</div>
						</article>
					</div>
					<div class="col-md-6 col-md-6">
						<article class="destination-box style-1">

							<div class="destination-box-image">
								<figure>
									<a href="destination-detail.html">
										<img src="assets/img/strength1.png" class="img-responsive listing-box-img" alt="" />
									</a>
									
								</figure>
							</div>
							
						</article>
					</div>
					<div class="col-md-12 col-md-12" align="center">
						<h3>���� 240���� ������ ���Թ����� ���� (*40��Ʈ �����̳� ����)</h3>
						<p>���� ȭ������ ���� ���� ����Ǵ� ������, �����̳� 1�븦 �����Ͻô��� �뷮���� �����ϴ� ������ ������ ������ �����մϴ�.</p>
					</div>
				</div>
		</section>
		
		<div class="clearfix"></div>
		<section class="gray-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="heading">
							<h1>���ٸ��� �ι�° ������ �Ұ��մϴ�.</h1>
							</br>
							<h3>�ҷ�ȭ�� ���԰������� �߻��ϴ� �߰����� �ܰ踦 �����մϴ�.</h3>
							<h4>���ٴ� �ҷ�ȭ���� �ϳ��� �����̳ʷ� ȥ�� �۾��ϴ� �ֻܼ� ������ �����մϴ�.</h4>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="row">
					<div class="col-md-6 col-md-6">
						<article class="destination-box style-1">
							<div class="destination-box-image">
								<figure>
									<a href="destination-detail.html">
										<img src="assets/img/process1.png" class="img-responsive listing-box-img" alt="" />
									</a>
								</figure>
							</div>
						</article>
					</div>
					<div class="col-md-6 col-md-6">
						<article class="destination-box style-1">

							<div class="destination-box-image">
								<figure>
									<a href="destination-detail.html">
										<img src="assets/img/process2.png" class="img-responsive listing-box-img" alt="" />
									</a>
									
								</figure>
							</div>
							
						</article>
					</div>
					</br>
					<div class="col-md-12 col-md-12" align="center">
						<h4>�����̳� �¼��� '����Ƽ��' ���񽺸� ���� ���ʿ��� �߰� ����ܰ踦 �����Ͽ� �ҷ�ȭ�� ������ ü�踦 ����ȭ�մϴ�.</h4>
					</div>
				</div>
				</div>
			</div>
		</section>
		
		<div class="clearfix"></div>
		<section>
			<div class="container">
				
				<div class="row">
					<div class="col-md-12">
						<div class="heading">
							<h1>�������� ���ٸ� ���� Ȯ���غ�����!</h1>
						</div>
					</div>
				</div>
					<div class="col-md-12 col-md-12" align="center">
						<iframe width="1000" height="400" src="https://www.youtube.com/embed/OlmbJDUFSgA" 
						frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
						gyroscope; picture-in-picture" allowfullscreen></iframe>
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