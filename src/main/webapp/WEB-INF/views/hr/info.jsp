<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 class="my-3">사원정보</h3>
<table class="table tb-row">
<colgroup><col width="160px"><col></colgroup>
<tr><th>사번</th>
	<td>${vo.employee_id }</td>
</tr>
<tr><th>사원명</th>
	<td>${vo.name }</td>
</tr>
<tr><th>이메일</th>
	<td>${vo.email }</td>
</tr>
<tr><th>전화번호</th>
	<td>${vo.phone_number }</td>
</tr>
<tr><th>급여</th>
	<td><fmt:formatNumber  value="${vo.salary }" /> </td>
</tr>
<tr><th>입사일자</th>
	<td>${vo.hire_date }</td>
</tr>
<tr><th>부서</th>
	<td>${vo.department_name }</td>
</tr>
<tr><th>업무</th>
	<td>${vo.job_title }</td>
</tr>
</table>

<div class="btn-toolbar gap-2 justify-content-center my-3">
	<button class="btn btn-primary" 
			onclick="location='list'">사원목록</button>
	<button class="btn btn-warning" 
			onclick="location='modify?id=${vo.employee_id}'">정보수정</button>
	<button class="btn btn-danger"
	  		onclick="if( confirm('[${vo.name }]고객 정말 삭제?') ){ location='delete?id=${vo.employee_id}' }" >정보삭제</button>
</div>

</body>
</html>