<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/hsenid"
                   user="root"  password="pass123"/>

<sql:query dataSource="${snapshot}" var="result">
  SELECT * from userdetails;
</sql:query>

<table border="1" width="100%">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>username</th>
  </tr>
  <c:forEach var="row" items="${result.rows}">
    <tr>
      <td><c:out value="${row.fname}"/></td>
      <td><c:out value="${row.lname}"/></td>
      <td><c:out value="${row.email}"/></td>
      <td><c:out value="${row.username}"/></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
