<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="fcl" class="quote.FclMgr"/>
<jsp:useBean id="fclbean" class="quote.FclBean"/>
<jsp:setProperty property="*" name="fclbean"/>
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
		
		//���� �̰� 4�� �� �߰��ؾ��� ȭ�鿡 �ѷ����� null�� �ȶ��.
		fclbean.setTransit(getTransit);
		fclbean.setAddress(getAddress);
		fclbean.setaAddress(getaAddress);
		fclbean.setaTransit(getaTransit);
		
		boolean result = fcl.insertFcl(fclbean);
		
		
		System.out.println("bean�� üũ1"+fclbean.getTransit());	
		System.out.println("bean�� üũ2"+fclbean.getaTransit());	
		System.out.println("bean�� üũ3"+fclbean.getAddress());	
		System.out.println("bean�� üũ4"+fclbean.getaAddress());	
		
	
		
		String msg="��Ͻ���";
		String url = "boardFclWrite.jsp";
		if(result){
			msg="��ϼ���";
			url="../member/mypage.jsp";
		}
		
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>