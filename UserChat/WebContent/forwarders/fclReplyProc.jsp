<%@page import="forwarders.UtilMgr"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="quotationMgr" class="forwarders.FclQuotationMgr"/>
<jsp:useBean id="fqbean" class="forwarders.FclQuotationBean"/>
<!-- ���� ��� ����ؿԴ� ���̺� bean�� ������ ����Ϸ��� setProperty ���� ������ ������� -->
<jsp:setProperty property="*" name="fqbean"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		int pickupRate = Integer.parseInt(request.getParameter("pickupRate"));
		//��Ƽ�� ��ȯ �ؾ���(�ּ�â�� �ִ� ������ ��� int->string ������ ��ȯ����� ������)
		String no = request.getParameter("no");
		System.out.println("procüũ:"+no);
		System.out.println("����׽�Ʈ1"+pickupRate);
		
		//�� ����ִ� PickupRate ���� �����ؼ�, get���� ��������
		fqbean.setPickupRate(pickupRate);
		System.out.println("bean�� üũ"+fqbean.getPickupRate());	
		
		//fclReply �μ�Ʈ
		boolean result= quotationMgr.insertFclQuotation(fqbean);
		
		String msg="���� ���� ����";//����
		String url="fclReply.jsp";
		if(result){
			msg="��ϼ���";
			url="mypageFcl.jsp?no="+no;
		}
		//usd ����׽�Ʈ
		String getUsd=request.getParameter("usd");
		System.out.println("usd����׽�Ʈ :" + fqbean.getUsd());//0���� ���.
		
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>