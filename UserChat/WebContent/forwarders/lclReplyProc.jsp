<%@page import="forwarders.UtilMgr"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="quotationMgr" class="forwarders.LclQuotationMgr"/>
<jsp:useBean id="lqbean" class="forwarders.LclQuotationBean"/>
<!-- ���� ��� ����ؿԴ� ���̺� bean�� ������ ����Ϸ��� setProperty ���� ������ ������� -->
<jsp:setProperty property="*" name="lqbean"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		String no = request.getParameter("no");
		
		int pickupRate = Integer.parseInt(request.getParameter("pickupRate"));
		System.out.println("procüũ:"+no);
		System.out.println("����׽�Ʈ1"+pickupRate);
	
		lqbean.setPickupRate(pickupRate);
		
		System.out.println("bean�� üũ"+lqbean.getPickupRate());	
		
		//fclReply �μ�Ʈ
		boolean result= quotationMgr.insertLclQuotation(lqbean);
		
		String msg="���� ���� ����";//����
		String url="lclReply.jsp";
		if(result){
			msg="��ϼ���";
			//���� �ڿ� no �߰�
			url="mypageLcl.jsp?no="+no;
		}

%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>