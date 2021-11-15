<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-06
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/head.jsp"%>
</head>
<body class="">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <%@ include file="../include/header.jsp"%>

            <!-- Banner -->

            <!-- Section -->
            <section>
                <header class="main">
                    <h1>Search Actor</h1>
                </header>
                <section id="search_movie_actor" class="alt">
                    <form method="post" action="Search_movie_actor.jsp#">
                        <input type="text" name="search_movie_actor" id="movie_actor" placeholder="Search">
                    </form>
                    <ul class="actions">
                        <li><a href="search_movie_results?pg=1" class="button primary icon solid fa-search">Search</a>
                        </li>
                    </ul>
                </section>
            </section>

        </div>
    </div>

    <!-- Sidebar -->
    <%@ include file="../include/sidebar.jsp"%>

</div>

<%--<!-- Scripts -->--%>
<%--<script src="./home_files/jquery.min.js.다운로드"></script>--%>
<%--<script src="./home_files/browser.min.js.다운로드"></script>--%>
<%--<script src="./home_files/breakpoints.min.js.다운로드"></script>--%>
<%--<script src="./home_files/util.js.다운로드"></script>--%>
<%--<script src="./home_files/main.js.다운로드"></script>--%>


</body>

</html>
