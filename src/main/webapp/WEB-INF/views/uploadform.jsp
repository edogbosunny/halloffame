<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sys_Admin
  Date: 4/5/2018
  Time: 8:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/templates/header.jsp" %>
<html>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<body>
<br><br>

<div class="container">
    <div class="row">
        <div class="col-sm-3">
        </div>

        <div class="col-sm-6">
            <form:form action="${pageContext.request.contextPath}/form" method="post"
                   commandName="formdata" enctype="multipart/form-data">


                <%--<div class="form-group">--%>
                    <%--<label for="firstname">Name</label>--%>
                    <%--<form:input path="firstName" id="firstname" class="form-Control"/>--%>
                <%--</div>--%>

                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <form:input path="firstName" type="text" class="form-control" id="firstName"
                           placeholder="First Name"/>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <form:input path="lastName" type="text" class="form-control" id="lastName"
                           placeholder="Last Name"/>
                </div>

                <div class="form-group">
                    <label for="email">Email address</label>
                    <form:input path="email" type="email" class="form-control" id="email"
                           placeholder="name@example.com"/>
                </div>

                <div class="form-group">
                    <label class="control-label" for="productImage">Upload Picture</label>
                    <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
                </div>

                <div class="form-group">
                    <label for="shortnote">Short Note</label>
                    <form:textarea path="shortnote" class="form-control" id="shortnote" rows="3" placeholder="shortnote about your mum"></form:textarea>
                </div>
                <div class="row">
                    <div class="col-sm-4"></div>

                    <br><br>
                    <input type="submit" value="submit" class="btn btn-dark col-sm-4">
                    <%--<a href="<c:url value="/thankyou" />" class="btn btn-default">Cancel</a>--%>

                    <%--<button type="button" class="btn btn-dark col-sm-4">Submit</button>--%>

                    <div class="col-sm-4"></div>
                </div>
            </form:form>
        </div>
    </div>
    <div class="col-sm-3">
    </div>
</div>

</body>
</html>
