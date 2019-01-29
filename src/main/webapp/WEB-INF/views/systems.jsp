<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Systems Home Page</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid m-1">
    <div class="row">
        <div class="col text-body">
            <h3>Welcome to the Systems Home Page!</h3>
        </div>
    </div>
    <div class="row">
        <div class="col text-primary">
            <p>We have our annual holiday Caribbean cruise coming up. Register now!</p>
        </div>
    </div>
    <hr>
    <div class="row mb-2">
        <div class="col-sm">
            <a role="button"
               class="btn btn-light"
               href="${pageContext.request.contextPath}/">Back to Home Page
            </a>
        </div>
    </div>
</div>
</body>
</html>
