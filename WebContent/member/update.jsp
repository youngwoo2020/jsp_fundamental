<%@page import="kr.or.kpc.dto.CustomerDto"%>
<%@page import="kr.or.kpc.dao.CustomerDao"%>
<%@ page pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String newpwd = request.getParameter("newpwd");
	String name = request.getParameter("name");
	String status = request.getParameter("status");
	CustomerDao dao = CustomerDao.getInstance();
	int num = Integer.parseInt(request.getParameter("num"));
	int cPage = Integer.parseInt(request.getParameter("Page"));
	boolean success  = dao.update(new CustomerDto(num,null, newpwd, name, status, null));

	if(success){
%>
	<script>
	alert('회원이 수정이 만료되었습니다..');
	location.href="list.jsp?page=1";
	</script>
<%}else{ %>
<script>
	alert('error');
	history.back(-1);
	</script>
<%} %>