<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mMgr" class="fmember.ForwardersMemberMgr"/>
<jsp:useBean id="mBean" class="fmember.ForwardersMemberBean"/>
<jsp:setProperty property="*" name="mBean" />
<%
		boolean result = mMgr.insertMember(mBean);
		String msg = "���Խ���";
		String url = "join.jsp";
		if(result){
			msg = "���Լ���";
			url = "../forwarders/index.jsp";
			//���Լ����� ���ÿ� �α��� ó���� ���� ���
			session.setAttribute("idKey", mBean.getId());
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>











