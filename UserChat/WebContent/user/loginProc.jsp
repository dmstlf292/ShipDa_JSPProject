<%@page import="java.io.PrintWriter"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="fmember.ForwardersMemberMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String msg = "�α��ο� ���� �Ͽ����ϴ�.";
		
		boolean result = mMgr.loginMember(id, password);
		if(result){
		  session.setAttribute("idKey",id);
		  msg = "�α��ο� ���� �Ͽ����ϴ�.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "../forwarders/index.jsp";
</script>