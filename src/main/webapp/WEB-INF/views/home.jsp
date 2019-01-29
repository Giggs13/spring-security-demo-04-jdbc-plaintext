<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Project Home Page</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid m-1">
    <div class="row">
        <div class="col">
            <div class="row py-3">
                <div class="col text-body">
                    <h3>Welcome to the Project Home Page!</h3>
                </div>
            </div>
            <hr>
            <div class="row py-3">
                <div class="col text-primary">
                    <p>User: <security:authentication property="principal.username"/></p>
                    <p>Role(s): <security:authentication property="principal.authorities"/></p>
                </div>
            </div>
            <hr>
            <security:authorize access="hasAuthority('ROLE_MANAGER')">
                <div class="row mb-2">
                    <div class="col-sm">
                        <a role="button"
                           class="btn btn-light"
                           href="${pageContext.request.contextPath}/leaders">Leadership Meeting
                        </a>
                    </div>
                </div>
                <hr>
            </security:authorize>
            <security:authorize access="hasAuthority('ROLE_ADMIN')">
                <div class="row mb-2">
                    <div class="col-sm">
                        <a role="button"
                           class="btn btn-light"
                           href="${pageContext.request.contextPath}/systems">IT Systems Meeting
                        </a>
                    </div>
                </div>
                <hr>
            </security:authorize>
            <form:form action="${pageContext.request.contextPath}/logout"
                       method="post">
                <div class="row">
                    <div class="col-sm">
                        <button type="submit"
                                class="btn btn-primary">Logout
                        </button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
