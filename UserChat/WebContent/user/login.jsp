<%@ page  contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<title>Ship-Da ������ ȸ�� ����</title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<form method="post" action="loginProc.jsp">
			<table class="table table-bordered table-hover" style="margin : 200px 30px 0 0; text-align:center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>������ ��ü �α���</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width:110px;"><h5>���̵�</h5></td>
						<td><input class="form-control" type="text" name="id" maxlength="20" placeholder="���̵� �Է��ϼ���"></td>
					</tr>
					<tr>
						<td style="width:110px;"><h5>��й�ȣ</h5></td>
						<td><input class="form-control" type="password" name="password" maxlength="20" placeholder="��й�ȣ�� �Է��ϼ���"></td>
					</tr>
					<tr>
						<td style="text-align:left" colspan="2">
							<a class="btn btn-primary pull-right" href="join.jsp">��ü ����ϱ�</a>
							<input class="btn btn-primary pull-right" type="submit" value="�α���">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
</body>
</html>