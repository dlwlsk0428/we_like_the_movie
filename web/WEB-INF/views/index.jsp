<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-06
  Time: 오후 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="include/head.jsp"%>
</head>
<body class="">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <%@ include file="include/header.jsp"%>

            <!-- Banner -->
            <section id="banner">
                <div class="content">
                    <header>
                        <h1>Hi, We recommend you a best choice!<br>
                            by Your Own star data</h1>

                    </header>
                    <p> Please rate your favorite genre of movies as Star! Based on your score, we analyze your taste and recommend which OTT service is good to combine! </p>

                </div>
                <span class="image object">
										<img src="${root}/resources/images/OTTs.jpg" style="max-width:100%;height:auto;">
									</span>
            </section>

        </div>
    </div>

    <!-- Sidebar -->
    <%@ include file="include/sidebar.jsp"%>

</div>

<%--<!-- Scripts -->--%>
<%--<script src="./home_files/jquery.min.js.다운로드"></script>--%>
<%--<script src="./home_files/browser.min.js.다운로드"></script>--%>
<%--<script src="./home_files/breakpoints.min.js.다운로드"></script>--%>
<%--<script src="./home_files/util.js.다운로드"></script>--%>
<%--<script src="./home_files/main.js.다운로드"></script>--%>


</body>

</html>
