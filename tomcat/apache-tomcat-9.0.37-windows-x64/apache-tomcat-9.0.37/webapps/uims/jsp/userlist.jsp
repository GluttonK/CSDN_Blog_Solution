<%@ page import="com.jiang.entity.User" %>
<%@ page import="com.jiang.util.Constants" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/jsp/common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>用户管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/getAllUser">

            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath}/jsp/useradd.jsp">添加用户</a>
        </form>
    </div>
    <!--用户-->

    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">用户名</th>
            <th width="20%">姓名</th>
            <th width="10%">工号</th>
            <th width="10%">等级</th>
            <th width="10%">电话</th>
            <th width="10%">地址</th>
            <th width="30%">操作</th>
        </tr>

        <c:forEach var="user" items="${requestScope.userlist}" varStatus="status">
            <tr>
                <td>
                    <span>${user.username}</span>
                </td>
                <td>
                    <span>${user.name}</span>
                </td>
                <td>
                    <span>${user.id}</span>
                </td>
                <td>
							<span>
								<c:if test="${user.level==1}">管理员</c:if>
								<c:if test="${user.level==2}">教师</c:if>
                                <c:if test="${user.level==3}">学生</c:if>
							</span>
                </td>

                <td>
                    <span>${user.phone}</span>
                </td>
                <td>
                    <span>${user.address}</span>
                </td>
                <td>
                    <span><a class="viewUser" href="javascript:;" userid=${user.name } username=${user.username }><img
                            src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyUser" href="${pageContext.request.contextPath}/jsp/pwdmodifyUser.jsp?username=${user.username}" userid=${user.id } username=${user.username }><img
                            src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteUser" href="javascript:;" userid=${user.name } username=${user.username }><img
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
