<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/adduser.do">
				<input type="hidden" name="method" value="add">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                    <label for="username">用户名：</label>
                    <input type="text" name="username" id="username" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="userName">用户姓名：</label>
                    <input type="text" name="name" id="name" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="id">用户ID：</label>
                    <input type="text" name="id" id="id" value="">
                    <font color="red"></font>
                </div>
                <div>
                    <label for="userPassword">用户密码：</label>
                    <input type="password" name="password" id="userPassword" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="ruserPassword">确认密码：</label>
                    <input type="password" name="ruserPassword" id="ruserPassword" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="level">用户等级：：</label>
                    <input type="text" name="level" id="level" value="">
                    <!-- 放置提示信息 -->
                </div>
                <div>
                    <label for="address">用户地址：</label>
                    <input type="text" name="phone" id="address" value="">
                    <font color="red"></font>
                </div>
                <div>
                    <label for="phone">用户电话：</label>
                    <input type="text" name="phone" id="phone" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <input type="submit" value="提交">
                </div>
            </form>
        </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/useradd.js"></script>
