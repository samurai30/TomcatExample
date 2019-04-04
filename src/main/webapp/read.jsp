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


    <sql:query dataSource="${emp}" var="result">
        select * from users;
    </sql:query>

    <div class="container">
        <table border = "1" width = "100%" class="white-text highlight centered highlight" style="background: rgba(0,0,0,0.5)">
            <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>User Email</th>
                <th>User Contact</th>
                <th>Delete</th>
                <th>Update</th>

            </tr>

            <c:forEach var = "row" items = "${result.rows}">

                <tr>
                    <td> <c:out value = "${row.id}"/></td>
                    <td> <c:out value = "${row.name}"/></td>
                    <td> <c:out value = "${row.email}"/></td>
                    <td> <c:out value = "${row.contact}"/></td>
                    <td> <a class="btn red" href="delete.jsp?id=${row.id}">Delete</a></td>
                    <td><a class="btn blue lighten-3" href="update.jsp?id=${row.id}&name=${row.name}&email=${row.email}&contact=${row.contact}">Update</a></td>
                </tr>
            </c:forEach>

        </table>
    </div>
    <script>
        function deleteUser(e) {

        }
    </script>

</t:wrapper>