<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>

</head>
<body>
    <a class="btn btn-success" href="../allBatches">All Batches</a>
	<form action="" class="w-50 border border-danger rounded">
		<div class="mb-3">
			<label class="form-label" for="bid">Batch Id</label>
			<input class="form-control" id="bid" value="${batch.batchId}"/>
		</div>
		<div class="mb-3">
			<label class="form-label" for="cid">Course Id</label>
			<input class="form-control" id="cid" value="${batch.courseId}"/>
		</div>
		<div class="mb-3">
			<label class="form-label" for="sd">Start Date</label>
			<input class="form-control" id="sd" value="${batch.startDate}"/>
		</div>
		<div class="mb-3">
			<label class="form-label" for="ed">End Date</label>
			<input class="form-control" id="ed" value="${batch.endDate}"/>
		</div>
		<div class="mb-3 text-end">
			<button type="submit" role="submit" class="btn btn-danger">Update</button>
		</div>
	</form>
</body>
</html>