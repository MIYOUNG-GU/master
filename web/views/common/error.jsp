<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message =(String)request.getAttribute("message");
%>
<div class="row">
	<h1> 에러페이지 :<%= message %></h1>
	
</div>

