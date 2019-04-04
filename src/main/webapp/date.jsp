<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.util.Date,java.text.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<sql:setDataSource var="emp" driver = "com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://127.0.0.1:3306/jstl"
                   user="root"  password=""/>

<%

    Date DoB = new Date();
    int Id = 13;
%>
<c:set var="dates" value="2019-1-20" />
<sql:update dataSource="${emp}" var="count">

    UPDATE users SET date=? WHERE id=?;
    <sql:dateParam value="<%=DoB%>" type="Date"/>
    <sql:param value="<%=Id%>"/>

</sql:update>
<c:if test="${count>=1}">
    <script>
        alert("worked");
    </script>
</c:if>

</body>
</html>
