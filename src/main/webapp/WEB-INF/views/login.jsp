<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Please sign in</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid p-5">
    <div class="row justify-content-center">
        <div class="col-4">
            <div class="row py-3">
                <div class="col text-body">
                    <h3>Please sign in</h3>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/login"
                  method="post">
                <c:if test="${ param.error != null }">
                    <i class="text-danger">Sorry! You entered invalid username/password.</i>
                </c:if>
                <c:if test="${ param.logout != null }">
                    <i class="text-success">You have been logged out.</i>
                </c:if>
                <div class="form-group">
                    <input type="text"
                           class="form-control"
                           id="username"
                           name="username"
                           placeholder="Username"/>
                </div>
                <div class="form-group">
                    <input type="password"
                           class="form-control"
                           id="password"
                           name="password"
                           placeholder="Password"/>
                </div>
                <div class="row mb-2">
                    <div class="col-sm">
                        <button type="submit"
                                class="btn btn-primary">Sign in
                        </button>
                    </div>
                </div>
                <div>
                    <input type="hidden"
                           name="${_csrf.parameterName}"
                           value="${_csrf.token}"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
