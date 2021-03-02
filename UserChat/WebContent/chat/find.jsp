<%@ page  contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
	<%
		String userID =null;
		if(session.getAttribute("userID")!=null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID==null){
			session.setAttribute("messageType", "��û�޽���");
			session.setAttribute("messageContent", "���� �α����� �Ǿ����� �ʽ��ϴ�.");
			response.sendRedirect("../index/index.jsp");
			return;
		}
	%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>������ ���Թ��� ������ Ship-da</title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="assets/plugins/css/plugins.css">	
    <link href="assets/css/style.css" rel="stylesheet">
	<link href="assets/css/responsiveness.css" rel="stylesheet"><link id="jssDefault" rel="stylesheet" href="assets/css/skins/default.css">
	<script type="text/javascript">
		function findFunction(){
			var userID = $('#findID').val();
			$.ajax({
					type:"POST",
					url:"../member/userFind",
					data:{userID: userID},
					success: function(result){
						if(result == -1){//�����߻�
							$('#checkMessage').html('ģ��ã�� ����');
							$('#checkType').attr('class','modal-content panel-warning');
							getFailFriend();
						}
						else{
							$('#checkMessage').html('ģ��ã�� ����');
							$('#checkType').attr('class','modal-content panel-success');
							//���ƿ��� ������ �޾ƿ����� �ϱ�
							//result ���� �Ľ��ؼ� ������� ������ ������ �޾ƿ� �� �ֵ��� ����
							var data = JSON.parse(result);
							var profile = data.userProfile;
							getFriend(userID,profile);
						}
						$('#checkModal').modal("show");
					}
			});
		}
		function getFriend(findID, userProfile){
			$('#friendResult').html('<thead>'+
					'<tr>'+
					'<th><h4>�˻����</h4></th>'+
					'</tr>'+
					'</thead>'+
					'<tbody>'+
					'<tr>'+
					'<td style="text-align:center;">'+
					'<img class="media-object img-circle" style="max-width : 300px; margin:0 auto;" src="' + userProfile + '">'+
					'<h3>' + findID + '</h3><a href="chat.jsp?toID=' + encodeURIComponent(findID) + '" class="btn btn-primary pull-right">' + '�޽��� ������</a></td>' +                            
					'</tr>'+
					'</tbody>');
		}
		function getFailFriend(){
			$('#friendResult').html('');
		}
		
		function getUnread(){
			$.ajax({
				type:"POST",
				url:"../chatting/chatUnreadt",
				data:{
					userID:encodeURIComponent('<%=userID%>'),
				},
				success : function(result){
					if(result>=1){
						showUnread(result);
					}else{
						showUnread('');//����� ��� ����
					}
				}
			});
			
		}
		function getInfiniteUnread(){
			setInterval(function(){
				getUnread();
			},4000);//4�ʸ��� �ѹ���
		}
		function showUnread(result){
			$('#unread').html(result);
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
					<a class="navbar-brand" href="../index/index.jsp">
						<img src="assets/img/logo.png" class="logo logo-display" alt="">
						<img src="assets/img/logo.png" class="logo logo-scrolled" alt="">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-left" data-in="fadeInDown" data-out="fadeOutUp">
						<li>
							<a href="../index/index.jsp" class="dropdown-toggle">Home</a>
						</li>
						<li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">�ǽð� ���� ��ȸ</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<div class="content">
												<ul class="menu-col">
													<li><a href="boardFclWrite.jsp">FCL�����Ƿ�</a></li>
													<li><a href="boardLclWrite.jsp">LCL�����Ƿ�</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
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
						<li>
							<a href="../forwarders/pricing.jsp">Pricing</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<%
							if(userID==null){
						%>
						<li class="br-right"><a href="../member/login.jsp"><i class="login-icon ti-user"></i>Login</a></li>
						<li class="br-right"><a href="../member/join.jsp" ><i class="login-icon ti-user"></i>Join</a></li>
						<%
							}else{
						%>
						<li class="dropdown megamenu-fw"><a href="#" class="dropdown-toggle" data-toggle="dropdown">MyPage</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<div class="content">
												<ul class="menu-col">
													<li><a  href="../chat/box.jsp">My ChatBox</a></li>
													<li><a href="../chat/find.jsp">Find Friend</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</li>
						<li class="br-right"><a href="../member/logoutAction.jsp" ><i class="login-icon ti-user"></i>Logout</a></li>
						<%}%>
					</ul>
				</div>
			</div>  
		</nav>
	<div class="container">
		<table class="table table-bordered table-hover" style="margin : 100px 30px 0 0; text-align:center;">
			<thead>
				<tr>
					<th colspan="2"><h4>�˻����� ȸ��ã��</h4></th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td style="width:110px;"><h5>ȸ�� ���̵�</h5></td>
					<td><input class="form-control" type="text" id="findID" maxlength="20" placeholder="���̵� �˻��ϼ���"></td>
				</tr>
				<tr>
					<td colspan="2"><button class="btn btn-primary pull-right" onclick="findFunction();">�˻�</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container">
		<table id="friendResult" class="table table-bordered table-hover" style="text-align:center; border:1px solid #dddddd;">
		</table>
	</div>
	<%
		String messageContent = null;
		if(session.getAttribute("messageContent")!=null){
			messageContent=(String)session.getAttribute("messageContent");
		}
		String messageType = null;
		if(session.getAttribute("messageType")!=null){
			messageType=(String)session.getAttribute("messageType");
		}
		if(messageContent !=null){
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
		  <div class="modal-dialog vertical-align-center">
			<div class="modal-content" <%if(messageType.equals("�����޽���")) out.println("panel-warning"); else out.println("panel-success");%>">
				<div class="modal-header panel-heading">
					<button type="button" class="close" data-dismiss="modal">
						<sapn aria-hidden="true">&times</sapn>
						<span class="sr-only">Close</span>	
					</button>
					<h4 class="modal-title">
						<%=messageType%>
					</h4>
					<div class="modal-body">
						<%=messageContent%>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Ȯ��</button>
					</div>
				</div>
			</div>
		   </div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%	
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
		  <div class="modal-dialog vertical-align-center">
			<div id="checkType" class="modal-content panel-info">
				<div class="modal-header panel-heading">
					<button type="button" class="close" data-dismiss="modal">
						<sapn aria-hidden="true">&times</sapn>
						<span class="sr-only">Close</span>	
					</button>
					<h4 class="modal-title">
						Ȯ�θ޽���
					</h4>
					<div id="checkMessage" class="modal-body">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Ȯ��</button>
					</div>
				</div>
			</div>
		   </div>
		</div>
	</div>
	<%
		if(userID!=null){
	%>
		<script type="text/javascript">
			$(document).ready(function(){
				getUnread();
				getInfiniteUnread();
			});
		</script>
	<%
		}
	%>
</body>

</html>