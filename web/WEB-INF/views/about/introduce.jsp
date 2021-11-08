<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-06
  Time: 오후 2:19
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
                    <h1>Introduce Our Page</h1>
                </header>

                <span class="image main"><img src="${root}/resources/images/overthetop.jpg" style="width:auto;max-height:100%"></span>

                <p>Recently, the "Subscription economy" has become a hot topic. Unlike previous individual purchase
                    services, the subscription economy pays monthly subscription fees and receives services.</p>
                <p>Typical OTT services used by Koreans include Netflix, Watcha, TVing, and Wave. Movies provided by
                    each OTT may overlap, but they are all different. For this reason, multiple OTTs are often paid in
                    duplicate. If there is no movie you want to see in the OTT service you subscribe to, you may have to
                    purchase movies individually. When You search for a movie, it tells you which OTT offers it, but You
                    don't know which OTT serves the genre or movie you want the most.</p>
                <p>To improve this inconvenience, we would like to create a program that provides a service that informs
                    users of the OTT combination that gives the highest satisfaction when choosing which genre and which
                    movie they prefer. In addition, We plan to create a site to provide OTT recommendation services
                    through communication with users, and additional functions include recommending similar genres of
                    movies, searching for contents of actors and directors, and recruiting payment groups for each
                    OTT.</p>

                <hr class="major">

                <h2>Evaluation</h2>
                <p>Based on users' own star database, their preferred movies and evaluations will be provided, and OTT
                    service combinations will be recommended. At this time, the database will be MySQL, and the OTT
                    service combination will predict a movie that the user prefers through potential factor
                    collaborative filtering based on the user's movie evaluation and use it with the MySQL query
                    statement to derive results.</p>


                <p>Collaborative filtering of latent factors to be used in OTT combination recommendation service is
                    carried out assuming that the latent factor is 'genre' based on the data in the user-movie rating
                    table. At this time, the predicted score is calculated through the internal calculation of the
                    user-potential factor matrix P and the genre-specific element matrix Q of the movie, and the score
                    of the movie that the user has not yet seen is predicted with the genre characteristic value. We
                    would like to recommend the OTT service, which offers the most movies similar to movies expected to
                    have high ratings.</p></section>

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
