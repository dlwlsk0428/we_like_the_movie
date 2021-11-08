<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-06
  Time: 오후 2:17
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
                    <h1>Search Movie Results</h1>
                </header>

                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Title</th>
                            <th>Story</th>
                            <th>Genre</th>
                            <th>OTT</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Item1</td>
                            <td>Ante turpis integer aliquet porttitor.</td>
                            <td>29.99</td>
                            <td>Netflix</td>
                        </tr>
                        <tr>
                            <td>Item2</td>
                            <td>Vis ac commodo adipiscing arcu aliquet.</td>
                            <td>19.99</td>
                            <td>Netflix</td>
                        </tr>
                        <tr>
                            <td>Item3</td>
                            <td> Morbi faucibus arcu accumsan lorem.</td>
                            <td>29.99</td>
                            <td>Netflix</td>
                        </tr>
                        <tr>
                            <td>Item4</td>
                            <td>Vitae integer tempus condimentum.</td>
                            <td>19.99</td>
                            <td>Netflix</td>
                        </tr>
                        <tr>
                            <td>Item5</td>
                            <td>Ante turpis integer aliquet porttitor.</td>
                            <td>29.99</td>
                            <td>Netflix</td>
                        </tr>
                        </tbody>

                    </table>
                </div>

            </section>

            <ul class="pagination">
                <li><span class="button disabled">Prev</span></li>
                <li><a href="search_movie_results/search_movie_results&amp;page=1.html#" class="page active">1</a></li>
                <li><a href="search_movie_results/search_movie_results&amp;page=2.html#" class="page">2</a></li>
                <li><a href="Search_movie_title%20-%20We%20Like%20The%20Movie.html#" class="page">3</a></li>
                <li><span>…</span></li>
                <li><a href="Search_movie_title%20-%20We%20Like%20The%20Movie.html#" class="page">8</a></li>
                <li><a href="Search_movie_title%20-%20We%20Like%20The%20Movie.html#" class="page">9</a></li>
                <li><a href="Search_movie_title%20-%20We%20Like%20The%20Movie.html#" class="page">10</a></li>
                <li><a href="search_movie_results/search_movie_results&amp;page=2.html#" class="button">Next</a></li>
            </ul>

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

