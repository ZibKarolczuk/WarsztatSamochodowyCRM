<%--
  Created by IntelliJ IDEA.
  User: zbigniew
  Date: 21.07.18
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Welcome!</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
          crossorigin="anonymous">
</head>
<body>

<%@include file="/WEB-INF/views/fragments/header.jspf" %>

<div class="container-fluid">

    <h4><br><br><br>Szanowny Kliencie!<br></h4>
    
    <h5 class="text-justify"><br>Strona internetowa warsztatu jest obecnie w budowie.<br><br>
        Termin uruchomienia nowego serwisu planowany jest na 27 lipca 2018.<br>
        Prosimy o kontakt telefoniczny z działem obsługi klienta.<br><br>
        - Zespół CodersLab KRAJEE03<br><br>
    </h5>

    <table class="table table-striped table-bordered table-hover table-condensed">

        <thead>
        <tr>
            <th scope="col" class="align-middle text-center" data-firstsort="desc">ID</th>
            <th scope="col" class="align-middle text-center">Register</th>
            <th scope="col" class="align-middle text-center">Details</th>
            <th scope="col" class="align-middle text-center">Owner</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td class="align-middle text-center">${order.id}</td>
                <td class="align-middle text-center">${order.register}</td>
                <td class="align-middle text-center">${order.details}</td>
                <td class="align-middle text-center">${order.owner}</td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

    <br>
    <%@include file="/WEB-INF/views/fragments/footer.jspf" %>

</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
        integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
</body>
</html>
