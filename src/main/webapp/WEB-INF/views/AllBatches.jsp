<%@page import="com.tmf.inventory.SpringHibernateIntegrationBackend.config.SessionFactoryConfig"%>
<%@page import="com.tmf.inventory.SpringHibernateIntegrationBackend.services.BatchService"%>
<%@page import="org.springframework.context.annotation.AnnotationConfigApplicationContext"%>
<%@page import="com.tmf.inventory.SpringHibernateIntegrationBackend.services.BatchServiceImplementation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<div class="container">
	<table class="table-danger table-bordered">
	   <thead class="bg-danger text-white">
	       <tr >
	           <th class="text-center">Batch Id</th>
	           <th class="text-center">Course Id</th>
	           <th class="text-center">Start Date</th>
	           <th class="text-center">End Date</th>
	           <th class="text-center">Options</th>
	       </tr>
	   </thead>
	   <tbody >
        <c:forEach var="btc" items="${allBatches}">
    	<tr>
    		<td class="text-center">${btc.batchId }</td>
    		<td class="text-center">${btc.courseId }</td>
    		<td>${btc.startDate}</td>
    		<td>${btc.endDate}</td>
    		<td>
    			<a href="displayBatch/${btc.batchId}">View</a>
    		</td>
    	</tr>
    	</c:forEach>
    	</tbody>
    </table>
  </div>
</body>
</html>