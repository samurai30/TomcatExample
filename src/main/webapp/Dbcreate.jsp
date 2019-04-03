<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<t:wrapper>
    <sql:setDataSource var="emp" driver = "com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://127.0.0.1:3306/jstl"
                       user="root"  password=""/>

    <sql:update dataSource="${emp}" var="count">
        INSERT INTO users (name,email,contact) values('${param.name}','${param.email.toString()}','${param.contact.toString()}');
    </sql:update>

    <c:if test="${count>=1}">
        <script>
            alert("Data Inserted");
        </script>
    </c:if>
    <c:if test="${count<1}">
        <script>
            alert("Sorry Something went wrong")
        </script>
    </c:if>
</t:wrapper>