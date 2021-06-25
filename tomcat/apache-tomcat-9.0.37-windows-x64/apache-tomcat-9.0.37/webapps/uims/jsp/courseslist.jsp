<%@ page import="com.jiang.entity.User" %>
<%@ page import="com.jiang.util.Constants" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/jsp/common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>课程管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/getallcourse">

            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath}/jsp/courseadd.jsp">添加课程</a>
        </form>
    </div>
    <!--用户-->

    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="30%">课程id</th>
            <th width="40%">课程名</th>
            <th width="30%">任课教师工号</th>
        </tr>

        <c:forEach var="course" items="${requestScope.courseslist}" varStatus="status">
            <tr>
                <td>
                    <span>${course.course_id}</span>
                </td>
                <td>
                    <span>${course.course_name}</span>
                </td>
                <td>
                    <span>${course.id}</span>
                </td>
                <td>
                    <span><a class="viewUser" href="javascript:;" courseid=${course.id } course_name=${course.course_name }><img
                            src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyUser" href="${pageContext.request.contextPath}/jsp/pwdmodifyUser.jsp?courseid=${course.id}" userid=${user.id } course_name=${course.course_name }><img
                            src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteUser" href="javascript:;" courseid=${course.id } course_name=${course.course_name }><img
                            src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
            </tr>
        </c:forEach>
    </table>
    <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>

</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/userlist.js"></script>
