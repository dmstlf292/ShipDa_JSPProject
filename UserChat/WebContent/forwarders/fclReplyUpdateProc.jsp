<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="quotationMgr" class="forwarders.FclQuotationMgr"/>
<jsp:useBean id="fqbean" class="forwarders.FclQuotationBean"/>
<jsp:setProperty property="*" name="fqbean"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		String no = request.getParameter("no");
		boolean result = quotationMgr.updateFclQuotatione(fqbean);
		
		String msg="���� ���� ����";//����
		String url="fclReplyUpdate.jsp";
		if(result){
			msg="��ϼ���";
			url="mypageFcl.jsp?no="+no;
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>