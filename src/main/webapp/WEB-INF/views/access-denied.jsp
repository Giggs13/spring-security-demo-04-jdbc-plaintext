<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Access Denied Page</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col text-body m-5">
            <div class="alert alert-danger text-center" role="alert">
                <h5>Access Denied - You are not authorized to access this resource.</h5>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col mx-5">
            <a role="button"
               class="btn btn-light"
               href="${pageContext.request.contextPath}/">Back to Home Page
            </a>
        </div>
    </div>
</div>
</html>
