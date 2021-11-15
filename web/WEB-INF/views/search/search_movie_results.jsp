<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <%@ include file="../include/head.jsp" %>
</head>
<body class="">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <%@ include file="../include/header.jsp" %>

            <!-- Banner -->

            <c:if test="${!empty msg}">
                <script>
                    alert("${msg}");
                </script>
            </c:if>
            <%--            <script type="text/javascript">--%>
            <%--                $(document).ready(function () {--%>

            <%--                    if("${key}")--%>
            <%--                        $("#skey").val("${key}").prop("selected", true);--%>

            <%--                    $("#mvRegisterBtn").click(function () {--%>
            <%--                        location.href = "${root}/guestbook/register";--%>
            <%--                    });--%>

            <%--                    $("#searchBtn").click(function () {--%>
            <%--                        var word = $("#sword").val();--%>
            <%--                        if(word == "") {--%>
            <%--                            alert("모든 목록 조회!!!");--%>
            <%--                        }--%>
            <%--                        $("#searchform").attr("action", "${root}/guestbook/list").submit();--%>
            <%--                    });--%>

            <%--                    $(".page-item").click(function() {--%>
            <%--                        $("#pg").val(($(this).attr("data-pg")));--%>
            <%--                        $("#pageform").attr("action", "${root}/guestbook/list").submit();--%>
            <%--                    });--%>

            <%--                    //file download--%>
            <%--                    $('.filedown').click(function() {--%>
            <%--                        // alert("원본 :  " + $(this).attr('ofile') + "      실제 :  " + $(this).attr('sfile'));--%>
            <%--                        $(document).find('[name="sfolder"]').val($(this).attr('sfolder'));--%>
            <%--                        $(document).find('[name="ofile"]').val($(this).attr('ofile'));--%>
            <%--                        $(document).find('[name="sfile"]').val($(this).attr('sfile'));--%>
            <%--                        $('#downform').attr('action', '${root}/guestbook/download').attr('method', 'get').submit();--%>
            <%--                    });--%>
            <%--                });--%>
            <%--            </script>--%>

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
                        <c:if test="${!empty movies}">
                        <c:forEach var="movie" items="${movies}">
                            <tbody>
                            <tr>
<%--                                <td>--%>
<%--                                    <li>--%>
<%--                                        <a href="${root}/index">--%>
<%--                                                ${movie.title}--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </td>--%>
                                <td>${movie.title}</td>
                                <td>${movie.story.substring(0, 20)}...</td>
<%--                                <td>${movie.genre.replaceAll("\[|\]|\'", "")}</td>--%>
                                <td>${movie.genre.replaceAll("\'", "").replace('[','').replace(']','')}</td>
                                <td>${movie.movie_id}</td>
                            </tr>
                            </tbody>
                        </c:forEach>

                    </table>

                    <ul class="pagination">
                        <c:if test="${navigation.currentPage eq 1}">
                            <li><span class="button disabled">Prev</span></li>
                        </c:if>
                        <c:if test="${navigation.currentPage ne 1}">
                            <li><a href="search_movie_results?pg=${navigation.currentPage-1}" class="button">Prev</a></li>
                        </c:if>

                        <c:forEach var="i" begin="${navigation.startPage}" end="${navigation.endPage}">
                            <c:if test="${navigation.currentPage eq i}">
                                <li><a href="search_movie_results?pg=${navigation.currentPage}" class="page active">${navigation.currentPage}</a></li>
                            </c:if>
                            <c:if test="${navigation.currentPage ne i}">
                                <li><a href="search_movie_results?pg=${i}" class="page">${i}</a></li>
                            </c:if>
                        </c:forEach>

                        <c:if test="${navigation.currentPage ne navigation.totalPageCount}">
                            <li><a href="search_movie_results?pg=${navigation.currentPage + 1}" class="button">Next</a></li>
                        </c:if>
                        <c:if test="${navigation.currentPage eq navigation.totalPageCount}">
                            <li><span class="button disabled">Next</span></li>
                        </c:if>

                    </ul>

                    </c:if>
                    <c:if test="${empty movies}">

                        <strong> Cannot found </strong>

                    </c:if>
                </div>

            </section>

        </div>
    </div>

    <!-- Sidebar -->
    <%@ include file="../include/sidebar.jsp" %>

</div>

<%--<!-- Scripts -->--%>
<%--<script src="./home_files/jquery.min.js.다운로드"></script>--%>
<%--<script src="./home_files/browser.min.js.다운로드"></script>--%>
<%--<script src="./home_files/breakpoints.min.js.다운로드"></script>--%>
<%--<script src="./home_files/util.js.다운로드"></script>--%>
<%--<script src="./home_files/main.js.다운로드"></script>--%>


</body>

</html>

