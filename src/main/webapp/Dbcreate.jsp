<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.util.Date,java.text.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
    Date DoB = new Date();
    String date = formater.format(DoB);
%>

<c:set var="date" value="<%=date%>"/>
<t:wrapper>

    <sql:setDataSource var="emp" driver = "com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://127.0.0.1:3306/jstl"
                       user="root"  password=""/>


    <sql:update dataSource="${emp}" var="count">
        INSERT INTO users (name,email,contact,date) values('${param.name}','${param.email.toString()}','${param.contact.toString()}','${date}');


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