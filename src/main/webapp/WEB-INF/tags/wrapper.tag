<%@tag description="Simple Wrapper Tag" pageEncoding="UTF-8"%>
<html>

<head>
    <title>JSTL-Example</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">


    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<nav class="cyan darken-4">
    <div class="nav-wrapper">
        <a href="../../index.jsp" class="brand-logo center">JSTL-EL-EXAMPLE</a>
        <ul id="nav-mobile" class="left hide-on-med-and-down">
            <li><a href="../../create.jsp">Create</a></li>
            <li><a href="../../read.jsp">Display</a></li>
        </ul>
    </div>
</nav>

<jsp:doBody/>


<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>


</html>