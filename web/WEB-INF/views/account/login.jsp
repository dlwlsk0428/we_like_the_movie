<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-06
  Time: 오후 2:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@ include file="../include/head.jsp" %>
</head>
<body class="">

<%--<c:if test="${cookie.ssafy_id.value ne null}">--%>
<%--    <c:set var="idck" value=" checked"/>--%>
<%--    <c:set var="saveid" value="${cookie.ssafy_id.value}"/>--%>
<%--</c:if>--%>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <%@ include file="../include/header.jsp" %>
            <c:if test="${cookie.id.value ne null}">
                <c:set var="idck" value="checked"/>
                <c:set var="saveid" value="${cookie.id.value}"/>
            </c:if>

            <script type="text/javascript">
                $(document).ready(function () {
                    $("#loginBtn").click(function () {
                        if (!$("#userId").val()) {
                            alert("아이디 입력!!!");
                            return;
                        } else if (!$("#userPwd").val()) {
                            alert("비밀번호 입력!!!");
                            return;
                        } else {
                            $("#loginform").attr("action", "${root}/account/login").submit();
                        }
                    });
                    $("#mvRegisterBtn").click(function () {
                        location.href = "${root}/account/join";
                    });
                });
            </script>
            <!-- Banner -->

            <div align="center:">
                <form id="loginform" class="text-left mb-3" method="post" action="">
                    <%--                <tr>--%>
                    <%--                    <label class="w3-large">userId</label>--%>
                    <%--                    <div class="w3-rest w3-large">--%>
                    <%--                        <input class="w3-input w3-border w3-round-large" style="height:60px" type="text" id="userId" name="userId" value="unknown">--%>
                    <%--                    </div>--%>
                    <%--                </tr>--%>
                    <br><br>

                    <h3> ID </h3>
                    <div class="mem_member_id" style="width: 40%; margin-bottom: 25px;">
                        <input type="text" name="userId" id="userId" value="" placeholder="ID (No duplication)">
                    </div>

                    <h3> PassWord </h3>
                    <div class="mem_member_password" style="width: 40%; margin-bottom: 25px;">
                        <input type="password" name="userPwd" id="userPwd" value="" placeholder="Password">
                    </div>
                </form>
            </div>
            <div class="text-danger mb-2" style="color: red">${msg}</div>
            <button type="button" id="loginBtn" class="button">login</button>
            <button type="button" id="mvRegisterBtn" class="button"> Join </button>
            <%--            <a href="#"  class="button"> Login </a>--%>

            <!-- Section -->
        </div>
    </div>

    <!-- Sidebar -->
    <%@ include file="../include/sidebar.jsp" %>

</div>

</body>

</html>

