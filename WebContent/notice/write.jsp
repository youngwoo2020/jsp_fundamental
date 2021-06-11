<!-- step01_container.html -->
<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>
	<%
	String tempPage = request.getParameter("page");
	int cPage = 0;
	if(tempPage ==null || tempPage.length()==0){
		cPage =1 ;
		
	}
	try{
		cPage = Integer.parseInt(tempPage);
	}catch (NumberFormatException e) {
		cPage = 1;
	}
	
	%>
	<!-- bradcrum start -->
		<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
	    <li class="breadcrumb-item">공지사항</li>

	  </ol>
	</nav>
	<!-- bradcrum end -->

	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class = "row">
			<div class = "col-md-12">
			<h5>공지사항 글쓰기</h5>
			<%--form start --%>
			<form name="noticeForm" method="post" action="saveDb.jsp">
			  <div class="form-group">
			    <label for="exampleFormControlInput1">작성자</label>
			    <input type="text" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하세요">
			  </div>
			 <form name="noticeForm" method="post" action="saveDb.jsp">
			  <div class="form-group">
			    <label for="tile">제목</label>
			    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
			  </div>
			
			  <div class="form-group">
			    <label for="content">내용</label>
			    <textarea class="form-control" id="content" name="content"rows="10"></textarea>
			  </div>
			</form>
			<%--form end --%>
				<div class="text-right">
				<a class="btn btn-secondary" href="list.jsp?page=<%=cPage%>" role="button">리스트</a>
					<a class="btn btn-success" id="saveNotice" role="button">저장</a>
				</div>
		
		
			</div>
		</div>
		
		<div class="col-md-12">
			
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
	<script>
	$(function(){
		$('#saveNotice').click(function(){
			noticeForm.submit();
		});
	});
	
	
	</script>
   <!-- Footer -->
   <%@ include file="../inc/footer.jsp" %>
