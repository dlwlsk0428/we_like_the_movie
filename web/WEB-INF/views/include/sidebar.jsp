<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-07
  Time: 오후 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="${root}/resources/css/common.css">
<div id="sidebar" class="">
    <div class="inner">

        <!-- Search -->
        <section id="search" class="alt">
            <form method="post" action="${root}/search/search_movie_results">
                <input type="text" name="query" id="query" placeholder="Search">
            </form>
        </section>

        <!-- Menu -->
        <nav id="menu">
            <header class="major">
                <h2>Menu</h2>
            </header>
            <ul>
                <li><a href="${root}/">Homepage</a></li>
                <li><a href="${root}/about/introduce">Introduce</a></li>
                <li><a href="elements.jsp">Recommend OTTs</a></li>
                <li>
                    <span class="opener active">Search</span>
                    <ul>
                        <li><a href="${root}/search/search_movie_title">Movie</a></li>
                        <li><a href="${root}/search/search_movie_genre">Genre</a></li>
                        <li><a href="${root}/search/search_movie_director">Director</a></li>
                        <li><a href="${root}/search/search_movie_actor">Actor</a></li>
                    </ul>
                </li>
                <li><a href="${root}/group/grouplist">Group</a></li>
                <li><a href="${root}/account/member">Member</a></li>
            </ul>
        </nav>

        <!-- Footer -->
        <%--        <footer id="footer">--%>
        <%--            <p class="copyright">© Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com/">Unsplash</a>. Design: <a href="https://html5up.net/">HTML5 UP</a>.</p>--%>
        <%--        </footer>--%>

    </div>

<%--    <a href="${root}/index.jsp#sidebar" class="toggle">Toggle</a>--%>
    
    <a href="${root}#sidebar" class="toggle">Toggle</a><a href="${root}#sidebar" class="toggle">Toggle</a>
    <a href="${root}#sidebar" class="toggle">Toggle</a><a href="${root}#sidebar" class="toggle">Toggle</a>
    <a href="${root}#sidebar" class="toggle">Toggle</a><a href="${root}#sidebar" class="toggle">Toggle</a>
    <a href="${root}#sidebar" class="toggle">Toggle</a><a href="${root}#sidebar" class="toggle">Toggle</a>
    <a href="${root}#sidebar" class="toggle">Toggle</a><a href="${root}#sidebar" class="toggle">Toggle</a>
    <a href="${root}#sidebar" class="toggle">Toggle</a>
</div>

