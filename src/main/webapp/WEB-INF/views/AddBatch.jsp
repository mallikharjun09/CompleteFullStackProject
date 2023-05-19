<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>

</head>
<body>
    <a class="btn btn-success" href="../allBatches">All Batches</a>
	<form action="saveBatch" class="w-50 border border-danger rounded" >
		
		<div class="mb-3">
			<label class="form-label" for="cid" >Course Id</label>
			<input class="form-control" id="cid" name="cid" />
		</div>
		<div class="mb-3">
			<label class="form-label" for="sd" >Start Date</label>
			<input class="form-control" id="sd" name="sd" />
		</div>
		<div class="mb-3">
			<label class="form-label" for="ed" >End Date</label>
			<input class="form-control" id="ed" name="ed" />
		</div>
		<div class="mb-3 text-end">
			<button type="submit" role="submit" class="btn btn-danger">Add Batch</button>
		</div>
	</form>
</body>
</html>