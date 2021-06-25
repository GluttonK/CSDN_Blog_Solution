<%@ page import="java.util.List" %>
<%@ page import="com.jiang.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jiang
  Date: 2021/6/21
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="get" action="${pageContext.request.contextPath }/getAllUser">
        <input name="button" type="submit" value="查询">
    </form>

        <%

            if(request.getAttribute("userlist")!=null){
            List<User>list=(List<User>)request.getAttribute("userlist");
            for (int i = 0; i < list.size(); i++) {
                System.out.println("hahahah");
                System.out.println(list.get(i));
            }
                for (int i = 0; i <6 ; i++) {
                    System.out.println(request.getAttribute("test"));
                }
            }
        %>
     <c:forEach var="user" items="${requestScope.userlist}" varStatus="Status">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.address}</td>
                        <td>${user.phone}</td>
                        <td>${user.level}</td>
                        <td>${user.id}</td>
                        <td>${user.password}</td>
                    </tr>


     </c:forEach>

<%--       <c:forEach var="user" items="${requestScope.userlist}" varStatus="status">--%>
<%--           <tr>--%>
<%--               <td>${user.username}</td>--%>
<%--               <td>${user.address}</td>--%>
<%--               <td>${user.phone}</td>--%>
<%--               <td>${user.level}</td>--%>
<%--               <td>${user.id}</td>--%>
<%--               <td>${user.password}</td>--%>
<%--           </tr>--%>
<%--       </c:forEach>--%>

</body>
</html>
