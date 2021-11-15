<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-07
  Time: 오후 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<header id="header">
    <a href="${root}/" class="logo"><strong> Find Your OTT! </strong> by Gina, Hyein</a>
    <ul class="icons">
        <c:if test="${empty userinfo}">
            <li><a href="${root}/account/login"><span class="label">login</span></a></li>
            <li><a href="${root}/account/join"><span class="label">join</span></a></li>
        </c:if>
        <c:if test="${!empty userinfo}">
            <li><a href="${root}/account/mypage"><span
                    class="logo">Welcome <strong> ${userinfo.userName} </strong> (${userinfo.userId})</span></a></li>
            <li><a href="${root}/account/logout"><span class="label">logout</span></a></li>
        </c:if>

    </ul>

</header>