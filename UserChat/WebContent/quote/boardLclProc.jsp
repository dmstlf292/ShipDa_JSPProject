<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="lcl" class="quote.LclMgr"/>
<jsp:useBean id="lclbean" class="quote.LclBean"/>
<jsp:setProperty property="*" name="lclbean"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String flag = request.getParameter("flag");
		String getTransit = request.getParameter("transit");
		String getaTransit = request.getParameter("aTransit");
		String getAddress = request.getParameter("address");
		String getaAddress = request.getParameter("aAddress");
		
		System.out.println("����� ���� ���ּ� �Ķ����: "+getAddress);
		System.out.println("����� �������ױ��Ķ����: "+getTransit);
		System.out.println("������ ���� ���ּ� �Ķ����: "+getaAddress);
		System.out.println("������ ���� �ױ� �Ķ����: "+getaTransit);
		
		//�ƴ� ���� �̰� 4�� �� �߰��ؾ��� ȭ�鿡 �ѷ����� null�� �ȶ��.
		lclbean.setTransit(getTransit);
		lclbean.setAddress(getAddress);
		lclbean.setaAddress(getaAddress);
		lclbean.setaTransit(getaTransit);
		
		boolean result = lcl.insertLcl(lclbean);
		
		
		System.out.println("bean�� üũ1"+lclbean.getTransit());	
		System.out.println("bean�� üũ2"+lclbean.getaTransit());	
		System.out.println("bean�� üũ3"+lclbean.getAddress());	
		System.out.println("bean�� üũ4"+lclbean.getaAddress());	
		
	
		
		String msg="��Ͻ���";
		String url = "boardLclWrite.jsp";
		if(result){
			msg="��ϼ���";
			url="boardLclView.jsp";
		}
		
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>