<!-- step01_container.html -->
<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>
	
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
			<h5>공지사항 수정</h5>
			<%--form start --%>
			<form name="noticeForm" method="post" action="modifyDB.jsp">
			  <div class="form-group">
			    <label for="exampleFormControlInput1">작성자</label>
			    <input type="text" class="form-control" id="writer" name="writer" value="성영한" placeholder="작성자를 입력하세요">
			  </div>
			 <form name="noticeForm" method="post" action="saveDB.jsp">
			  <div class="form-group">
			    <label for="tile">제목</label>
			    <input type="text" class="form-control" id="title" name="title" value="제목1" placeholder="제목을 입력하세요">
			  </div>
		
			  <div class="form-group">
			    <label for="content">내용</label>
			    <textarea class="form-control" id="content" name="content"rows="10">내용</textarea>
			  </div>
			</form>
			<%--form end --%>
				<div class="text-right">
				<a class="btn btn-secondary" href="view.jsp" role="button">뷰</a>
				<a class="btn btn-success" id="modifyNotice" role="button">수정</a>
				</div>
		
		
			</div>
		</div>
		
		<div class="col-md-12">
			
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
   <!-- Footer -->
   <%@ include file="../inc/footer.jsp" %>
