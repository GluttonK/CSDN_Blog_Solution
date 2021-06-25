<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>课程管理页面 >> 课程添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="userForm" name="userForm" method="get" action="${pageContext.request.contextPath }/addcourse.do">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                    <label>课程ID：</label>
                    <input type="text" name="course_id" id="course_id" >
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label >课程名字：</label>
                    <input type="text" name="course_name" >
					<font color="red"></font>
                </div>
                <div>
                    <label >教师ID：</label>
                    <input type="text" name="id" >
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
