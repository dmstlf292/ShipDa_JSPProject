<%@ page  contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>������ ���Թ��� ������ Ship-da</title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<script type="text/javascript">
		function registerCheckFunction(){
			var userID = $('#userID').val();
			$.ajax({
				type: 'POST',
				url:'../member/userRegisterCheckServlet',
				data:{userID: userID},
				success:function(result){
					if(result==1){
						$('#checkMessage').html('����� �� �ִ� ���̵��Դϴ�.');
						$('#checkType').attr('class','modal-content panel-success');
					}else{
						$('#checkMessage').html('����� �� ���� ���̵��Դϴ�.');
						$('#checkType').attr('class','modal-content panel-warning');
					}
					$('#checkModal').modal("show");
				}
			});
		}
		function passwordCheckFunction(){
			var userPassword1 = $('#userPassword1').val();
			var userPassword2 = $('#userPassword2').val();
			if(userPassword1 != userPassword2){
				$('#passwordCheckMessage').html('��й�ȣ�� ���� �ʽ��ϴ�.');
			}else{
				$('#passwordCheckMessage').html('');
			}
		}
	</script>
</head>
<body>
	<%
		String userID =null;
		if(session.getAttribute("userID")!=null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID!=null){
			session.setAttribute("messageType", "�����޽���");
			session.setAttribute("messageContent", "���� �α����� �Ǿ� �ִ� �����Դϴ�.");
			response.sendRedirect("../index/index.jsp");
			return;
		}
	%>
	<div class="container">
		<form method="post" action="../member/userLogin">
			<table class="table table-bordered table-hover" style="text-align:center; border: 1px solid #dddddd; margin : 200px 30px 0 0;">
				<thead>
					<tr>
						<th colspan="2"><h4>ShipDa �α���</h4>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:110px;"><h5>���̵�</h5></td>
						<td><input class="form-control" type="text" name="userID" maxlength="20" placeholder="���̵� �Է��ϼ���"></td>
					</tr>
					<tr>
						<td style="width:110px;"><h5>��й�ȣ</h5></td>
						<td><input class="form-control" type="password" name="userPassword" maxlength="20" placeholder="��й�ȣ�� �Է��ϼ���"></td>
					</tr>
					<tr>
						<td style="text-align:left" colspan="2">
							<input class="btn btn-primary pull-right" type="button" onclick="location.href='join.jsp'" value="ȸ������">
							<input class="btn btn-primary pull-right" type="submit" value="�α���">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
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
</body>
</html>