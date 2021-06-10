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
			
			<%--table start --%>
			<div class="table-responsive">
			<table class="table table-hover">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">작성자</th>
				      <th scope="col">제목</th>
				      <th scope="col">날짜</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>성영한</td>
				      <td>제목1나는오늘도 배가 고프다 왜냐하면 배가 고프기 때문이다</td>
				      <td>2021-06-10</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>성영한</td>
				      <td>제목2</td>
				      <td>2021-06-11</td>
				    </tr>
				    
				  </tbody>
				</table>
				<%--pageination start --%>
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item disabled">
				      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#">Next</a>
				    </li>
				  </ul>
				</nav>
				<%--pageination end --%>
				
				<div class="text-right">
				<a class="btn btn-success" href="write.jsp" role="button">글쓰기</a>
				</div>
				</div>
			<%--table end --%>
		
		
		
			</div>
		</div>
		
		<div class="col-md-12">
			
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
   <!-- Footer -->
   <%@ include file="../inc/footer.jsp" %>
