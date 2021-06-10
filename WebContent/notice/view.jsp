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
			<h5>공지사항 보기</h5>
			<%--form start --%>
			<form name="noticeForm" method="post" action="saveDB.jsp">
			  <div class="form-group">
			작성자 : 성영한
			   
			  </div>
			
			  <div class="form-group">
			    제목 : 제목1
			  </div>
		
			  <div class="form-group">
			    내용 : 나는 오늘도 지금도 아마 내일도 배가 고프다 젠장 뱁먹고싶다 뱁!
			  </div>
			  
			  
			</form>
			<%--form end --%>
				<div class="text-right">
				<a class="btn btn-secondary" href="list.jsp" role="button">리스트</a>
					<a class="btn btn-success"  href="modify.jsp"role="button">수정</a>
					<a class="btn btn-danger" id="deleteNotice" role="button">삭제</a>
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
